/*
 * sim-safe.c - sample functional simulator implementation
 *
 * This file is a part of the SimpleScalar tool suite written by
 * Todd M. Austin as a part of the Multiscalar Research Project.
 *  
 * The tool suite is currently maintained by Doug Burger and Todd M. Austin.
 * 
 * Copyright (C) 1994, 1995, 1996, 1997, 1998 by Todd M. Austin
 *
 * This source file is distributed "as is" in the hope that it will be
 * useful.  The tool set comes with no warranty, and no author or
 * distributor accepts any responsibility for the consequences of its
 * use. 
 * 
 * Everyone is granted permission to copy, modify and redistribute
 * this tool set under the following conditions:
 * 
 *    This source code is distributed for non-commercial use only. 
 *    Please contact the maintainer for restrictions applying to 
 *    commercial use.
 *
 *    Permission is granted to anyone to make or distribute copies
 *    of this source code, either as received or modified, in any
 *    medium, provided that all copyright notices, permission and
 *    nonwarranty notices are preserved, and that the distributor
 *    grants the recipient permission for further redistribution as
 *    permitted by this document.
 *
 *    Permission is granted to distribute this file in compiled
 *    or executable form under the same conditions that apply for
 *    source code, provided that either:
 *
 *    A. it is accompanied by the corresponding machine-readable
 *       source code,
 *    B. it is accompanied by a written offer, with no time limit,
 *       to give anyone a machine-readable copy of the corresponding
 *       source code in return for reimbursement of the cost of
 *       distribution.  This written offer must permit verbatim
 *       duplication by anyone, or
 *    C. it is distributed by someone who received only the
 *       executable form, and is accompanied by a copy of the
 *       written offer of source code that they received concurrently.
 *
 * In other words, you are welcome to use, share and improve this
 * source file.  You are forbidden to forbid anyone else to use, share
 * and improve what you give them.
 *
 * INTERNET: dburger@cs.wisc.edu
 * US Mail:  1210 W. Dayton Street, Madison, WI 53706
 *
 * $Id: sim-safe.c,v 1.1.1.1 2000/05/26 15:18:58 taustin Exp $
 *
 * $Log: sim-safe.c,v $
 * Revision 1.1.1.1  2000/05/26 15:18:58  taustin
 * SimpleScalar Tool Set
 *
 *
 * Revision 1.9  1999/12/31 18:53:24  taustin
 * quad_t naming conflicts removed
 *
 * Revision 1.8  1999/12/13 18:47:13  taustin
 * cross endian execution support added
 *
 * Revision 1.7  1998/08/31 17:11:01  taustin
 * added register checksuming support, viewable with "-v" flag
 *
 * Revision 1.6  1998/08/27 16:38:25  taustin
 * implemented host interface description in host.h
 * added target interface support
 * added support for register and memory contexts
 * instruction predecoding moved to loader module
 * Alpha target support added
 * added support for qword's
 * added fault support
 * added option ("-max:inst") to limit number of instructions analyzed
 * added target-dependent myprintf() support
 *
 * Revision 1.5  1997/03/11  17:14:57  taustin
 * updated copyright
 * long/int tweaks made for ALPHA target support
 * supported added for non-GNU C compilers
 *
 * Revision 1.4  1997/01/06  16:06:28  taustin
 * updated comments
 * opt_reg_header() call now prints simulator overview message
 * access variable now generalized to is_write boolean flag
 *
 * Revision 1.3  1996/12/27  15:54:04  taustin
 * updated comments
 * integrated support for options and stats packages
 * added sim_init() code
 *
 * Revision 1.1  1996/12/05  18:52:32  taustin
 * Initial revision
 *
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "host.h"
#include "misc.h"
#include "machine.h"
#include "regs.h"
#include "memory.h"
#include "loader.h"
#include "syscall.h"
#include "dlite.h"
#include "options.h"
#include "stats.h"
#include "bpred.h"
#include "sim.h"

/*
 * This file implements a functional simulator.  This functional simulator is
 * the simplest, most user-friendly simulator in the simplescalar tool set.
 * Unlike sim-fast, this functional simulator checks for all instruction
 * errors, and the implementation is crafted for clarity rather than speed.
 */

/* simulated registers */
static struct regs_t regs;

/* simulated memory */
static struct mem_t *mem = NULL;

/* track number of refs */
static counter_t sim_num_refs = 0;

/* track number of branch */
static counter_t sim_num_branch = 0;

/* track number of condbranch */
static counter_t sim_num_condbranch = 0;

/* maximum number of inst's to execute */
static unsigned int max_insts;

/* branch predictor */
static struct bpred_t *pred1;
static struct bpred_t *pred2;
static struct bpred_t *pred3a;
static struct bpred_t *pred3b;

/* register simulator-specific options */
void
sim_reg_options(struct opt_odb_t *odb)
{
  opt_reg_header(odb, 
"sim-safe: This simulator implements a functional simulator.  This\n"
"functional simulator is the simplest, most user-friendly simulator in the\n"
"simplescalar tool set.  Unlike sim-fast, this functional simulator checks\n"
"for all instruction errors, and the implementation is crafted for clarity\n"
"rather than speed.\n"
		 );

  /* instruction limit */
  opt_reg_uint(odb, "-max:inst", "maximum number of inst's to execute",
	       &max_insts, /* default */0,
	       /* print */TRUE, /* format */NULL);

}

/* check simulator-specific option values */
void
sim_check_options(struct opt_odb_t *odb, int argc, char **argv)
{
  pred1 = bpred_create(BPred2Level,
    /* bimod table size */0,
    /* 2lev l1 size */1024,
    /* 2lev l2 size */1,
    /* meta table size */0,
    /* history reg size */1,
    /* history xor address */0,
    /* btb sets */512,
    /* btb assoc */4,
    /* ret-addr stack size */8);

  pred2 = bpred_create(BPred2Level,
    /* bimod table size */0,
    /* 2lev l1 size */1024,
    /* 2lev l2 size */4,
    /* meta table size */0,
    /* history reg size */2,
    /* history xor address */0,
    /* btb sets */512,
    /* btb assoc */4,
    /* ret-addr stack size */8);

  pred3a = bpred_create(BPred2Level,
    /* bimod table size */0,
    /* 2lev l1 size */1024,
    /* 2lev l2 size */8,
    /* meta table size */0,
    /* history reg size */3,
    /* history xor address */0,
    /* btb sets */512,
    /* btb assoc */4,
    /* ret-addr stack size */8);

  pred3b = bpred_create(BPred2Level,
    /* bimod table size */0,
    /* 2lev l1 size */1,
    /* 2lev l2 size */8,
    /* meta table size */0,
    /* history reg size */3,
    /* history xor address */0,
    /* btb sets */512,
    /* btb assoc */4,
    /* ret-addr stack size */8);
}

/* register simulator-specific statistics */
void
sim_reg_stats(struct stat_sdb_t *sdb)
{
  stat_reg_counter(sdb, "sim_num_insn",
		   "total number of instructions executed",
		   &sim_num_insn, sim_num_insn, NULL);
  stat_reg_counter(sdb, "sim_num_refs",
		   "total number of loads and stores executed",
		   &sim_num_refs, 0, NULL);
  stat_reg_int(sdb, "sim_elapsed_time",
	       "total simulation time in seconds",
	       &sim_elapsed_time, 0, NULL);
  stat_reg_formula(sdb, "sim_inst_rate",
		   "simulation speed (in insts/sec)",
		   "sim_num_insn / sim_elapsed_time", NULL);
		
  stat_reg_counter(sdb, "sim_num_condbranch",
		   "total number of conditional branches",
		   &sim_num_condbranch, sim_num_condbranch, NULL);
  stat_reg_counter(sdb, "sim_num_branch",
		   "total number of braches",
		   &sim_num_branch, sim_num_branch, NULL);

  char buf[512], buf1[512];		
  sprintf(buf, "inst_branch_rate");
  sprintf(buf1, "sim_num_branch / sim_num_insn");
  stat_reg_formula(sdb, buf, "The percent of instructions that are branches", buf1, NULL);

  sprintf(buf, "inst_condbranch_rate");
  sprintf(buf1, "sim_num_condbranch / sim_num_branch");
  stat_reg_formula(sdb, buf, "The percent of branches that are conditional branches", buf1, NULL);
		
  ld_reg_stats(sdb);
  mem_reg_stats(mem, sdb);

  bpred_reg_stats(pred1, sdb);
  bpred_reg_stats(pred2, sdb);
  bpred_reg_stats(pred3a, sdb);
  bpred_reg_stats(pred3b, sdb);
}

/* initialize the simulator */
void
sim_init(void)
{
  sim_num_refs = 0;

  /* allocate and initialize register file */
  regs_init(&regs);

  /* allocate and initialize memory space */
  mem = mem_create("mem");
  mem_init(mem);
}

/* load program into simulated state */
void
sim_load_prog(char *fname,		/* program to load */
	      int argc, char **argv,	/* program arguments */
	      char **envp)		/* program environment */
{
  /* load program text and data, set up environment, memory, and regs */
  ld_load_prog(fname, argc, argv, envp, &regs, mem, TRUE);

  /* initialize the DLite debugger */
  dlite_init(md_reg_obj, dlite_mem_obj, dlite_mstate_obj);
}

/* print simulator-specific configuration information */
void
sim_aux_config(FILE *stream)		/* output stream */
{
  /* nothing currently */
}

/* dump simulator-specific auxiliary simulator statistics */
void
sim_aux_stats(FILE *stream)		/* output stream */
{
  /* nada */
}

/* un-initialize simulator-specific state */
void
sim_uninit(void)
{
  /* nada */
}


/*
 * configure the execution engine
 */

/*
 * precise architected register accessors
 */

/* next program counter */
#define SET_NPC(EXPR)		(regs.regs_NPC = (EXPR))

/* target program counter */
#undef  SET_TPC
#define SET_TPC(EXPR)   (target_PC = (EXPR))

/* current program counter */
#define CPC			(regs.regs_PC)

/* general purpose registers */
#define GPR(N)			(regs.regs_R[N])
#define SET_GPR(N,EXPR)		(regs.regs_R[N] = (EXPR))

#if defined(TARGET_PISA)

/* floating point registers, L->word, F->single-prec, D->double-prec */
#define FPR_L(N)		(regs.regs_F.l[(N)])
#define SET_FPR_L(N,EXPR)	(regs.regs_F.l[(N)] = (EXPR))
#define FPR_F(N)		(regs.regs_F.f[(N)])
#define SET_FPR_F(N,EXPR)	(regs.regs_F.f[(N)] = (EXPR))
#define FPR_D(N)		(regs.regs_F.d[(N) >> 1])
#define SET_FPR_D(N,EXPR)	(regs.regs_F.d[(N) >> 1] = (EXPR))

/* miscellaneous register accessors */
#define SET_HI(EXPR)		(regs.regs_C.hi = (EXPR))
#define HI			(regs.regs_C.hi)
#define SET_LO(EXPR)		(regs.regs_C.lo = (EXPR))
#define LO			(regs.regs_C.lo)
#define FCC			(regs.regs_C.fcc)
#define SET_FCC(EXPR)		(regs.regs_C.fcc = (EXPR))

#elif defined(TARGET_ALPHA)

/* floating point registers, L->word, F->single-prec, D->double-prec */
#define FPR_Q(N)		(regs.regs_F.q[N])
#define SET_FPR_Q(N,EXPR)	(regs.regs_F.q[N] = (EXPR))
#define FPR(N)			(regs.regs_F.d[(N)])
#define SET_FPR(N,EXPR)		(regs.regs_F.d[(N)] = (EXPR))

/* miscellaneous register accessors */
#define FPCR			(regs.regs_C.fpcr)
#define SET_FPCR(EXPR)		(regs.regs_C.fpcr = (EXPR))
#define UNIQ			(regs.regs_C.uniq)
#define SET_UNIQ(EXPR)		(regs.regs_C.uniq = (EXPR))

#else
#error No ISA target defined...
#endif

/* precise architected memory state accessor macros */
#define READ_BYTE(SRC, FAULT)						\
  ((FAULT) = md_fault_none, MEM_READ_BYTE(mem, addr = (SRC)))
#define READ_HALF(SRC, FAULT)						\
  ((FAULT) = md_fault_none, MEM_READ_HALF(mem, addr = (SRC)))
#define READ_WORD(SRC, FAULT)						\
  ((FAULT) = md_fault_none, MEM_READ_WORD(mem, addr = (SRC)))
#ifdef HOST_HAS_QWORD
#define READ_QWORD(SRC, FAULT)						\
  ((FAULT) = md_fault_none, MEM_READ_QWORD(mem, addr = (SRC)))
#endif /* HOST_HAS_QWORD */

#define WRITE_BYTE(SRC, DST, FAULT)					\
  ((FAULT) = md_fault_none, MEM_WRITE_BYTE(mem, addr = (DST), (SRC)))
#define WRITE_HALF(SRC, DST, FAULT)					\
  ((FAULT) = md_fault_none, MEM_WRITE_HALF(mem, addr = (DST), (SRC)))
#define WRITE_WORD(SRC, DST, FAULT)					\
  ((FAULT) = md_fault_none, MEM_WRITE_WORD(mem, addr = (DST), (SRC)))
#ifdef HOST_HAS_QWORD
#define WRITE_QWORD(SRC, DST, FAULT)					\
  ((FAULT) = md_fault_none, MEM_WRITE_QWORD(mem, addr = (DST), (SRC)))
#endif /* HOST_HAS_QWORD */

/* system call handler macro */
#define SYSCALL(INST)	sys_syscall(&regs, mem_access, mem, INST, TRUE)

/* start simulation, program loaded, processor precise state initialized */
void
sim_main(void)
{
  md_inst_t inst;
  register md_addr_t addr, target_PC;
  enum md_opcode op;
  register int is_write;
  enum md_fault_type fault;

  fprintf(stderr, "sim: ** starting functional simulation **\n");

  /* set up initial default next PC */
  regs.regs_NPC = regs.regs_PC + sizeof(md_inst_t);

  /* check for DLite debugger entry condition */
  if (dlite_check_break(regs.regs_PC, /* !access */0, /* addr */0, 0, 0))
    dlite_main(regs.regs_PC - sizeof(md_inst_t),
	       regs.regs_PC, sim_num_insn, &regs, mem);

  while (TRUE)
    {
      /* maintain $r0 semantics */
      regs.regs_R[MD_REG_ZERO] = 0;
#ifdef TARGET_ALPHA
      regs.regs_F.d[MD_REG_ZERO] = 0.0;
#endif /* TARGET_ALPHA */

      /* get the next instruction to execute */
      MD_FETCH_INST(inst, mem, regs.regs_PC);

      /* keep an instruction count */
      sim_num_insn++;

      /* set default reference address and access mode */
      addr = 0; is_write = FALSE;

      /* set default fault - none */
      fault = md_fault_none;

      /* decode the instruction */
      MD_SET_OPCODE(op, inst);

      /* execute the instruction */
      switch (op)
	{
#define DEFINST(OP,MSK,NAME,OPFORM,RES,FLAGS,O1,O2,I1,I2,I3)		\
	case OP:							\
          SYMCAT(OP,_IMPL);						\
          break;
#define DEFLINK(OP,MSK,NAME,MASK,SHIFT)					\
        case OP:							\
          panic("attempted to execute a linking opcode");
#define CONNECT(OP)
#define DECLARE_FAULT(FAULT)						\
	  { fault = (FAULT); break; }
#include "machine.def"
	default:
	  panic("attempted to execute a bogus opcode");
      }

      if (fault != md_fault_none)
	fatal("fault (%d) detected @ 0x%08p", fault, regs.regs_PC);

      if (verbose)
	{
	  myfprintf(stderr, "%10n [xor: 0x%08x] @ 0x%08p: ",
		    sim_num_insn, md_xor_regs(&regs), regs.regs_PC);
	  md_print_insn(inst, regs.regs_PC, stderr);
	  if (MD_OP_FLAGS(op) & F_MEM)
	    myfprintf(stderr, "  mem: 0x%08p", addr);
	  fprintf(stderr, "\n");
	  /* fflush(stderr); */
	}

      if (MD_OP_FLAGS(op) & F_MEM)
	{
	  sim_num_refs++;
	  if (MD_OP_FLAGS(op) & F_STORE)
	    is_write = TRUE;
	}
	
	if(MD_OP_FLAGS(op) & F_COND){
		sim_num_branch++;
		sim_num_condbranch++;
	}
	else if(MD_OP_FLAGS(op) & F_UNCOND){
		sim_num_branch++;
	}

  if (MD_OP_FLAGS(op) & F_CTRL){
    md_addr_t pred_PC1;
    struct bpred_update_t update_rec1;
    md_addr_t pred_PC2;
    struct bpred_update_t update_rec2;
    md_addr_t pred_PC3a;
    struct bpred_update_t update_rec3a;
    md_addr_t pred_PC3b;
    struct bpred_update_t update_rec3b;


    /* get the next predicted fetch address */
        pred_PC1 = bpred_lookup(pred1,
             /* branch addr */regs.regs_PC,
             /* target */target_PC,
             /* inst opcode */op,
             /* call? */MD_IS_CALL(op),
             /* return? */MD_IS_RETURN(op),
             /* stash an update ptr */&update_rec1,
             /* stash return stack ptr */&stack_idx);

    /* get the next predicted fetch address */
        pred_PC2 = bpred_lookup(pred2,
             /* branch addr */regs.regs_PC,
             /* target */target_PC,
             /* inst opcode */op,
             /* call? */MD_IS_CALL(op),
             /* return? */MD_IS_RETURN(op),
             /* stash an update ptr */&update_rec2,
             /* stash return stack ptr */&stack_idx);

    /* get the next predicted fetch address */
        pred_PC3a = bpred_lookup(pred3a,
             /* branch addr */regs.regs_PC,
             /* target */target_PC,
             /* inst opcode */op,
             /* call? */MD_IS_CALL(op),
             /* return? */MD_IS_RETURN(op),
             /* stash an update ptr */&update_rec3a,
             /* stash return stack ptr */&stack_idx);

    /* get the next predicted fetch address */
        pred_PC3b = bpred_lookup(pred3b,
             /* branch addr */regs.regs_PC,
             /* target */target_PC,
             /* inst opcode */op,
             /* call? */MD_IS_CALL(op),
             /* return? */MD_IS_RETURN(op),
             /* stash an update ptr */&update_rec3b,
             /* stash return stack ptr */&stack_idx);

    if (!pred_PC1)
    {
      /* no predicted taken target, attempt not taken target */
      pred_PC1 = regs.regs_PC + sizeof(md_inst_t);
    }

    bpred_update(pred1,
     /* branch addr */regs.regs_PC,
     /* resolved branch target */regs.regs_NPC,
     /* taken? */regs.regs_NPC != (regs.regs_PC +
           sizeof(md_inst_t)),
     /* pred taken? */pred_PC != (regs.regs_PC +
          sizeof(md_inst_t)),
     /* correct pred? */pred_PC == regs.regs_NPC,
     /* opcode */op,
     /* predictor update pointer */&update_rec1);

    if (!pred_PC2)
    {
      /* no predicted taken target, attempt not taken target */
      pred_PC2 = regs.regs_PC + sizeof(md_inst_t);
    }

    bpred_update(pred2,
     /* branch addr */regs.regs_PC,
     /* resolved branch target */regs.regs_NPC,
     /* taken? */regs.regs_NPC != (regs.regs_PC +
           sizeof(md_inst_t)),
     /* pred taken? */pred_PC != (regs.regs_PC +
          sizeof(md_inst_t)),
     /* correct pred? */pred_PC == regs.regs_NPC,
     /* opcode */op,
     /* predictor update pointer */&update_rec2);

    if (!pred_PC3a)
    {
      /* no predicted taken target, attempt not taken target */
      pred_PC3a = regs.regs_PC + sizeof(md_inst_t);
    }

    bpred_update(pred3a,
     /* branch addr */regs.regs_PC,
     /* resolved branch target */regs.regs_NPC,
     /* taken? */regs.regs_NPC != (regs.regs_PC +
           sizeof(md_inst_t)),
     /* pred taken? */pred_PC != (regs.regs_PC +
          sizeof(md_inst_t)),
     /* correct pred? */pred_PC == regs.regs_NPC,
     /* opcode */op,
     /* predictor update pointer */&update_rec3a);

    if (!pred_PC3b)
    {
      /* no predicted taken target, attempt not taken target */
      pred_PC3b = regs.regs_PC + sizeof(md_inst_t);
    }

    bpred_update(pred3b,
     /* branch addr */regs.regs_PC,
     /* resolved branch target */regs.regs_NPC,
     /* taken? */regs.regs_NPC != (regs.regs_PC +
           sizeof(md_inst_t)),
     /* pred taken? */pred_PC != (regs.regs_PC +
          sizeof(md_inst_t)),
     /* correct pred? */pred_PC == regs.regs_NPC,
     /* opcode */op,
     /* predictor update pointer */&update_rec3b);
    
  }

      /* check for DLite debugger entry condition */
      if (dlite_check_break(regs.regs_NPC,
			    is_write ? ACCESS_WRITE : ACCESS_READ,
			    addr, sim_num_insn, sim_num_insn))
	dlite_main(regs.regs_PC, regs.regs_NPC, sim_num_insn, &regs, mem);

      /* go to the next instruction */
      regs.regs_PC = regs.regs_NPC;
      regs.regs_NPC += sizeof(md_inst_t);

      /* finish early? */
      if (max_insts && sim_num_insn >= max_insts)
	return;
    }
}
