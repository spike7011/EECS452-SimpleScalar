	file	 "166.i"
data

; cc1 (2.7.2.2) arguments: -O -fdefer-pop -fomit-frame-pointer
; -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations
; -fthread-jumps -fstrength-reduce -funroll-loops -fwritable-strings
; -fpeephole -fforce-mem -ffunction-cse -finline-functions -finline
; -freg-struct-return -fdelayed-branch -frerun-cse-after-loop
; -fschedule-insns -fschedule-insns2 -fcommon -fgnu-linker -m88110 -m88100
; -m88000 -mno-ocs-debug-info -mno-ocs-frame-position -mcheck-zero-division

gcc2_compiled.:
	align	 4
_ptrace_nelt:
	word	 0
	align	 4
_twolev_nelt:
	word	 3
	align	 4
_twolev_config:
	word	 1
	word	 1024
	word	 8
	align	 4
_ruu_include_spec:
	word	 1
	align	 4
_RUU_size:
	word	 8
	align	 4
_LSQ_size:
	word	 4
	align	 4
_mem_nelt:
	word	 2
	align	 4
_mem_lat:
	word	 18
	word	 2
	align	 4
_pcstat_nelt:
	word	 0
	global	 _fu_config
	align	 4
_fu_config:
	word	 @LC0
	word	 4
	word	 0
	word	 1
	word	 1
	word	 1
	zero	 4
	zero	 240
	word	 @LC1
	word	 1
	word	 0
	word	 2
	word	 3
	word	 1
	zero	 4
	word	 3
	word	 20
	word	 19
	zero	 4
	zero	 224
	word	 @LC2
	word	 2
	word	 0
	word	 10
	word	 1
	word	 1
	zero	 4
	word	 11
	word	 1
	word	 1
	zero	 4
	zero	 224
	word	 @LC3
	word	 4
	word	 0
	word	 4
	word	 2
	word	 1
	zero	 4
	word	 5
	word	 2
	word	 1
	zero	 4
	word	 6
	word	 2
	word	 1
	zero	 4
	zero	 208
	word	 @LC4
	word	 1
	word	 0
	word	 7
	word	 4
	word	 1
	zero	 4
	word	 8
	word	 12
	word	 12
	zero	 4
	word	 9
	word	 24
	word	 24
	zero	 4
	zero	 208
	align	 8
@LC4:
	string	 "FP-MULT/DIV\000"
	align	 8
@LC3:
	string	 "FP-adder\000"
	align	 8
@LC2:
	string	 "memory-port\000"
	align	 8
@LC1:
	string	 "integer-MULT/DIV\000"
	align	 8
@LC0:
	string	 "integer-ALU\000"
	align	 8
_sim_num_insn:
	word	 0
	word	 0
	align	 8
_sim_total_insn:
	word	 0
	word	 0
	align	 8
_sim_num_refs:
	word	 0
	word	 0
	align	 8
_sim_total_refs:
	word	 0
	word	 0
	align	 8
_sim_num_loads:
	word	 0
	word	 0
	align	 8
_sim_total_loads:
	word	 0
	word	 0
	align	 8
_sim_num_branches:
	word	 0
	word	 0
	align	 8
_sim_total_branches:
	word	 0
	word	 0
	align	 8
_sim_cycle:
	word	 0
	word	 0
	align	 4
_inst_seq:
	word	 0
	align	 4
_ptrace_seq:
	word	 0
	align	 4
_spec_mode:
	word	 0
	align	 4
_ruu_fetch_issue_delay:
	word	 0
	align	 4
_pred_perfect:
	word	 0
	align	 4
_fu_pool:
	word	 0
	align	 8
@LC5:
	string	 "chunks > 0\000"
	align	 8
@LC6:
	string	 "sim-outorder.c\000"
	align	 8
@LC7:
	string	 "mem_access_latency\000"
	align	 8
@LC8:
	string	 "sim-outorder.c\000"
	align	 8
@LC9:
	string	 "il1_access_fn\000"
	align	 8
@LC10:
	string	 "writes to instruction memory not supported\000"
	align	 8
@LC11:
	string	 "sim-outorder.c\000"
	align	 8
@LC12:
	string	 "il1_access_fn\000"
	align	 8
@LC13:
	string	 "writes to instruction memory not supported\000"
	align	 8
@LC14:
	string	 "sim-outorder.c\000"
	align	 8
@LC15:
	string	 "il2_access_fn\000"
	align	 8
@LC16:
	string	 "writes to instruction memory not supported\000"
	align	 8
@LC17:
	string	 "phy_page_ptr\000"
	align	 8
@LC18:
	string	 "sim-outorder.c\000"
	align	 8
@LC19:
	string	 "itlb_access_fn\000"
	align	 8
@LC20:
	string	 "phy_page_ptr\000"
	align	 8
@LC21:
	string	 "sim-outorder.c\000"
	align	 8
@LC22:
	string	 "dtlb_access_fn\000"
	align	 8
@LC23:
	string	 "sim-outorder: This simulator implements a very de"
	string	 "tailed out-of-order issue\nsuperscalar processor "
	string	 "with a two-level memory system and speculative\ne"
	string	 "xecution support.  This simulator is a performanc"
	string	 "e simulator, tracking the\nlatency of all pipelin"
	string	 "e operations.\n\000"
	align	 8
@LC24:
	string	 "-ptrace\000"
	align	 8
@LC25:
	string	 "generate pipetrace, i.e., <fname|stdout|stderr> <"
	string	 "range>\000"
	align	 8
@LC26:
	string	 "  Pipetrace range arguments are formatted as foll"
	string	 "ows:\n\n    {{@|#}<start>}:{{@|#|+}<end>}\n\n  Bo"
	string	 "th ends of the range are optional, if neither are"
	string	 " specified, the entire\n  execution is traced.  R"
	string	 "anges that start with a `@' designate an address\n"
	string	 "  range to be traced, those that start with an `#"
	string	 "' designate a cycle count\n  range.  All other ra"
	string	 "nge values represent an instruction count range. "
	string	 " The\n  second argument, if specified with a `+',"
	string	 " indicates a value relative\n  to the first argum"
	string	 "ent, e.g., 1000:+100 == 1000:1100.  Program symbo"
	string	 "ls may\n  be used in all contexts.\n\n    Example"
	string	 "s:   -ptrace FOO.trc #0:#1000\n                -p"
	string	 "trace BAR.trc @2000:\n                -ptrace BLA"
	string	 "H.trc :1500\n                -ptrace UXXE.trc :\n"
	string	 "                -ptrace FOOBAR.trc @main:+278\n\000"
	align	 8
@LC27:
	string	 "-max:inst\000"
	align	 8
@LC28:
	string	 "maximum number of inst's to execute\000"
	align	 8
@LC29:
	string	 "-fastfwd\000"
	align	 8
@LC30:
	string	 "number of insts skipped before timing starts\000"
	align	 8
@LC31:
	string	 "-fetch:ifqsize\000"
	align	 8
@LC32:
	string	 "instruction fetch queue size (in insts)\000"
	align	 8
@LC33:
	string	 "-fetch:mplat\000"
	align	 8
@LC34:
	string	 "extra branch mis-prediction latency\000"
	align	 8
@LC35:
	string	 "-bpred\000"
	align	 8
@LC36:
	string	 "branch predictor type {nottaken|taken|perfect|bim"
	string	 "od|2lev}\000"
	align	 8
@LC37:
	string	 "bimod\000"
	align	 8
@LC38:
	string	 "-bpred:bimod\000"
	align	 8
@LC39:
	string	 "bimodal predictor BTB size\000"
	align	 8
@LC40:
	string	 "-bpred:2lev\000"
	align	 8
@LC41:
	string	 "2-level predictor config (<l1size> <l2size> <hist"
	string	 "_size>)\000"
	align	 8
@LC42:
	string	 "-decode:width\000"
	align	 8
@LC43:
	string	 "instruction decode B/W (insts/cycle)\000"
	align	 8
@LC44:
	string	 "-issue:width\000"
	align	 8
@LC45:
	string	 "instruction issue B/W (insts/cycle)\000"
	align	 8
@LC46:
	string	 "-issue:inorder\000"
	align	 8
@LC47:
	string	 "run pipeline with in-order issue\000"
	align	 8
@LC48:
	string	 "-issue:wrongpath\000"
	align	 8
@LC49:
	string	 "issue instructions down wrong execution paths\000"
	align	 8
@LC50:
	string	 "-commit:width\000"
	align	 8
@LC51:
	string	 "instruction commit B/W (insts/cycle)\000"
	align	 8
@LC52:
	string	 "-ruu:size\000"
	align	 8
@LC53:
	string	 "register update unit (RUU) size\000"
	align	 8
@LC54:
	string	 "-lsq:size\000"
	align	 8
@LC55:
	string	 "load/store queue (LSQ) size\000"
	align	 8
@LC56:
	string	 "-cache:dl1\000"
	align	 8
@LC57:
	string	 "l1 data cache config, i.e., {<config>|none}\000"
	align	 8
@LC58:
	string	 "dl1:128:32:4:l\000"
	align	 8
@LC59:
	string	 "  The cache config parameter <config> has the fol"
	string	 "lowing format:\n\n    <name>:<nsets>:<bsize>:<ass"
	string	 "oc>:<repl>\n\n    <name>   - name of the cache be"
	string	 "ing defined\n    <nsets>  - number of sets in the"
	string	 " cache\n    <bsize>  - block size of the cache\n "
	string	 "   <assoc>  - associativity of the cache\n    <re"
	string	 "pl>   - block replacement strategy, 'l'-LRU, 'f'-"
	string	 "FIFO, 'r'-random\n\n    Examples:   -cache:dl1 dl"
	string	 "1:4096:32:1:l\n                -dtlb dtlb:128:409"
	string	 "6:32:r\n\000"
	align	 8
@LC60:
	string	 "-cache:dl1lat\000"
	align	 8
@LC61:
	string	 "l1 data cache hit latency (in cycles)\000"
	align	 8
@LC62:
	string	 "-cache:dl2\000"
	align	 8
@LC63:
	string	 "l2 data cache config, i.e., {<config>|none}\000"
	align	 8
@LC64:
	string	 "ul2:1024:64:4:l\000"
	align	 8
@LC65:
	string	 "-cache:dl2lat\000"
	align	 8
@LC66:
	string	 "l2 data cache hit latency (in cycles)\000"
	align	 8
@LC67:
	string	 "-cache:il1\000"
	align	 8
@LC68:
	string	 "l1 inst cache config, i.e., {<config>|dl1|dl2|non"
	string	 "e}\000"
	align	 8
@LC69:
	string	 "il1:512:32:1:l\000"
	align	 8
@LC70:
	string	 "  Cache levels can be unified by pointing a level"
	string	 " of the instruction cache\n  hierarchy at the dat"
	string	 "a cache hiearchy using the \"dl1\" and \"dl2\" ca"
	string	 "che\n  configuration arguments.  Most sensible co"
	string	 "mbinations are supported, e.g.,\n\n    A unified "
	string	 "l2 cache (il2 is pointed at dl2):\n      -cache:i"
	string	 "l1 il1:128:64:1:l -cache:il2 dl2\n      -cache:dl"
	string	 "1 dl1:256:32:1:l -cache:dl2 ul2:1024:64:2:l\n\n  "
	string	 "  Or, a fully unified cache hierarchy (il1 pointe"
	string	 "d at dl1):\n      -cache:il1 dl1\n      -cache:dl"
	string	 "1 ul1:256:32:1:l -cache:dl2 ul2:1024:64:2:l\n\000"
	align	 8
@LC71:
	string	 "-cache:il1lat\000"
	align	 8
@LC72:
	string	 "l1 instruction cache hit latency (in cycles)\000"
	align	 8
@LC73:
	string	 "-cache:il2\000"
	align	 8
@LC74:
	string	 "l2 instruction cache config, i.e., {<config>|dl2|"
	string	 "none}\000"
	align	 8
@LC75:
	string	 "dl2\000"
	align	 8
@LC76:
	string	 "-cache:il2lat\000"
	align	 8
@LC77:
	string	 "l2 instruction cache hit latency (in cycles)\000"
	align	 8
@LC78:
	string	 "-cache:flush\000"
	align	 8
@LC79:
	string	 "flush caches on system calls\000"
	align	 8
@LC80:
	string	 "-cache:icompress\000"
	align	 8
@LC81:
	string	 "convert 64-bit inst addresses to 32-bit inst equi"
	string	 "valents\000"
	align	 8
@LC82:
	string	 "-mem:lat\000"
	align	 8
@LC83:
	string	 "memory access latency (<first_chunk> <inter_chunk"
	string	 ">)\000"
	align	 8
@LC84:
	string	 "-mem:width\000"
	align	 8
@LC85:
	string	 "memory access bus width (in bytes)\000"
	align	 8
@LC86:
	string	 "-tlb:itlb\000"
	align	 8
@LC87:
	string	 "instruction TLB config, i.e., {<config>|none}\000"
	align	 8
@LC88:
	string	 "itlb:16:4096:4:l\000"
	align	 8
@LC89:
	string	 "-tlb:dtlb\000"
	align	 8
@LC90:
	string	 "data TLB config, i.e., {<config>|none}\000"
	align	 8
@LC91:
	string	 "dtlb:32:4096:4:l\000"
	align	 8
@LC92:
	string	 "-tlb:lat\000"
	align	 8
@LC93:
	string	 "inst/data TLB miss latency (in cycles)\000"
	align	 8
@LC94:
	string	 "-res:ialu\000"
	align	 8
@LC95:
	string	 "total number of integer ALU's available\000"
	align	 8
@LC96:
	string	 "-res:imult\000"
	align	 8
@LC97:
	string	 "total number of integer multiplier/dividers avail"
	string	 "able\000"
	align	 8
@LC98:
	string	 "-res:memport\000"
	align	 8
@LC99:
	string	 "total number of memory system ports available (to"
	string	 " CPU)\000"
	align	 8
@LC100:
	string	 "-res:fpalu\000"
	align	 8
@LC101:
	string	 "total number of floating point ALU's available\000"
	align	 8
@LC102:
	string	 "-res:fpmult\000"
	align	 8
@LC103:
	string	 "total number of floating point multiplier/divider"
	string	 "s available\000"
	align	 8
@LC104:
	string	 "-pcstat\000"
	align	 8
@LC105:
	string	 "profile stat(s) against text addr's (mult uses ok"
	string	 ")\000"
	align	 8
@LC106:
	string	 "-bugcompat\000"
	align	 8
@LC107:
	string	 "operate in backward-compatible bugs mode (for tes"
	string	 "ting only)\000"
text
	align	 8
	global	 _sim_reg_options
_sim_reg_options:
	subu	 r31,r31,80
	or.u	 r3,r0,hi16(@LC23)
	st.d	 r24,r31,56
	or	 r24,r0,r2
	st	 r1,r31,64
@Ltb0:
	bsr.n	 _opt_reg_header
	or	 r3,r3,lo16(@LC23)
	st	 r0,r31,32
	or	 r2,r0,r24
	or	 r6,r0,2
	or	 r8,r0,0
	or	 r9,r0,0
	or.u	 r3,r0,hi16(@LC24)
	or.u	 r4,r0,hi16(@LC25)
	or.u	 r5,r0,hi16(_ptrace_opts)
	or.u	 r7,r0,hi16(_ptrace_nelt)
	or	 r3,r3,lo16(@LC24)
	or	 r4,r4,lo16(@LC25)
	or	 r5,r5,lo16(_ptrace_opts)
	or	 r7,r7,lo16(_ptrace_nelt)
	bsr.n	 _opt_reg_string_list
	st	 r0,r31,36
	or.u	 r3,r0,hi16(@LC26)
	or	 r2,r0,r24
	bsr.n	 _opt_reg_note
	or	 r3,r3,lo16(@LC26)
	or	 r2,r0,r24
	or	 r6,r0,0
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC27)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC28)
	or.u	 r5,r0,hi16(_max_insts)
	or	 r3,r3,lo16(@LC27)
	or	 r4,r4,lo16(@LC28)
	bsr.n	 _opt_reg_uint
	or	 r5,r5,lo16(_max_insts)
	or	 r2,r0,r24
	or	 r6,r0,0
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC29)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC30)
	or.u	 r5,r0,hi16(_fastfwd_count)
	or	 r3,r3,lo16(@LC29)
	or	 r4,r4,lo16(@LC30)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_fastfwd_count)
	or	 r2,r0,r24
	or	 r6,r0,4
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC31)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC32)
	or.u	 r5,r0,hi16(_ruu_ifq_size)
	or	 r3,r3,lo16(@LC31)
	or	 r4,r4,lo16(@LC32)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_ruu_ifq_size)
	or	 r2,r0,r24
	or	 r6,r0,3
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC33)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC34)
	or.u	 r5,r0,hi16(_ruu_branch_penalty)
	or	 r3,r3,lo16(@LC33)
	or	 r4,r4,lo16(@LC34)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_ruu_branch_penalty)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC35)
	or.u	 r4,r0,hi16(@LC36)
	or.u	 r5,r0,hi16(_pred_type)
	or.u	 r6,r0,hi16(@LC37)
	or	 r3,r3,lo16(@LC35)
	or	 r4,r4,lo16(@LC36)
	or	 r5,r5,lo16(_pred_type)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC37)
	or	 r2,r0,r24
	or	 r6,r0,2048
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC38)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC39)
	or.u	 r5,r0,hi16(_btb_size)
	or	 r3,r3,lo16(@LC38)
	or	 r4,r4,lo16(@LC39)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_btb_size)
	st	 r0,r31,32
	or	 r2,r0,r24
	or	 r9,r0,1
	or.u	 r3,r0,hi16(@LC40)
	or.u	 r4,r0,hi16(@LC41)
	or.u	 r13,r0,hi16(_twolev_nelt)
	or.u	 r5,r0,hi16(_twolev_config)
	ld	 r6,r13,lo16(_twolev_nelt)
	or	 r3,r3,lo16(@LC40)
	or	 r4,r4,lo16(@LC41)
	or	 r5,r5,lo16(_twolev_config)
	or	 r7,r13,lo16(_twolev_nelt)
	or	 r8,r0,r5
	bsr.n	 _opt_reg_int_list
	st	 r0,r31,36
	or	 r2,r0,r24
	or	 r6,r0,4
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC42)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC43)
	or.u	 r5,r0,hi16(_ruu_decode_width)
	or	 r3,r3,lo16(@LC42)
	or	 r4,r4,lo16(@LC43)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_ruu_decode_width)
	or	 r2,r0,r24
	or	 r6,r0,4
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC44)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC45)
	or.u	 r5,r0,hi16(_ruu_issue_width)
	or	 r3,r3,lo16(@LC44)
	or	 r4,r4,lo16(@LC45)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_ruu_issue_width)
	or	 r2,r0,r24
	or	 r6,r0,0
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC46)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC47)
	or.u	 r5,r0,hi16(_ruu_inorder_issue)
	or	 r3,r3,lo16(@LC46)
	or	 r4,r4,lo16(@LC47)
	bsr.n	 _opt_reg_flag
	or	 r5,r5,lo16(_ruu_inorder_issue)
	or	 r2,r0,r24
	or	 r6,r0,1
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC48)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC49)
	or.u	 r5,r0,hi16(_ruu_include_spec)
	or	 r3,r3,lo16(@LC48)
	or	 r4,r4,lo16(@LC49)
	bsr.n	 _opt_reg_flag
	or	 r5,r5,lo16(_ruu_include_spec)
	or	 r2,r0,r24
	or	 r6,r0,4
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC50)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC51)
	or.u	 r5,r0,hi16(_ruu_commit_width)
	or	 r3,r3,lo16(@LC50)
	or	 r4,r4,lo16(@LC51)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_ruu_commit_width)
	or	 r2,r0,r24
	or	 r6,r0,16
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC52)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC53)
	or.u	 r5,r0,hi16(_RUU_size)
	or	 r3,r3,lo16(@LC52)
	or	 r4,r4,lo16(@LC53)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_RUU_size)
	or	 r2,r0,r24
	or	 r6,r0,8
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC54)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC55)
	or.u	 r5,r0,hi16(_LSQ_size)
	or	 r3,r3,lo16(@LC54)
	or	 r4,r4,lo16(@LC55)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_LSQ_size)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC56)
	or.u	 r4,r0,hi16(@LC57)
	or.u	 r5,r0,hi16(_cache_dl1_opt)
	or.u	 r6,r0,hi16(@LC58)
	or	 r3,r3,lo16(@LC56)
	or	 r4,r4,lo16(@LC57)
	or	 r5,r5,lo16(_cache_dl1_opt)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC58)
	or.u	 r3,r0,hi16(@LC59)
	or	 r2,r0,r24
	bsr.n	 _opt_reg_note
	or	 r3,r3,lo16(@LC59)
	or	 r2,r0,r24
	or	 r6,r0,1
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC60)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC61)
	or.u	 r5,r0,hi16(_cache_dl1_lat)
	or	 r3,r3,lo16(@LC60)
	or	 r4,r4,lo16(@LC61)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_cache_dl1_lat)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC62)
	or.u	 r4,r0,hi16(@LC63)
	or.u	 r5,r0,hi16(_cache_dl2_opt)
	or.u	 r6,r0,hi16(@LC64)
	or	 r3,r3,lo16(@LC62)
	or	 r4,r4,lo16(@LC63)
	or	 r5,r5,lo16(_cache_dl2_opt)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC64)
	or	 r2,r0,r24
	or	 r6,r0,6
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC65)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC66)
	or.u	 r5,r0,hi16(_cache_dl2_lat)
	or	 r3,r3,lo16(@LC65)
	or	 r4,r4,lo16(@LC66)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_cache_dl2_lat)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC67)
	or.u	 r4,r0,hi16(@LC68)
	or.u	 r5,r0,hi16(_cache_il1_opt)
	or.u	 r6,r0,hi16(@LC69)
	or	 r3,r3,lo16(@LC67)
	or	 r4,r4,lo16(@LC68)
	or	 r5,r5,lo16(_cache_il1_opt)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC69)
	or.u	 r3,r0,hi16(@LC70)
	or	 r2,r0,r24
	bsr.n	 _opt_reg_note
	or	 r3,r3,lo16(@LC70)
	or	 r2,r0,r24
	or	 r6,r0,1
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC71)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC72)
	or.u	 r5,r0,hi16(_cache_il1_lat)
	or	 r3,r3,lo16(@LC71)
	or	 r4,r4,lo16(@LC72)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_cache_il1_lat)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC73)
	or.u	 r4,r0,hi16(@LC74)
	or.u	 r5,r0,hi16(_cache_il2_opt)
	or.u	 r6,r0,hi16(@LC75)
	or	 r3,r3,lo16(@LC73)
	or	 r4,r4,lo16(@LC74)
	or	 r5,r5,lo16(_cache_il2_opt)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC75)
	or	 r2,r0,r24
	or	 r6,r0,6
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC76)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC77)
	or.u	 r5,r0,hi16(_cache_il2_lat)
	or	 r3,r3,lo16(@LC76)
	or	 r4,r4,lo16(@LC77)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_cache_il2_lat)
	or	 r2,r0,r24
	or	 r6,r0,0
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC78)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC79)
	or.u	 r5,r0,hi16(_flush_on_syscalls)
	or	 r3,r3,lo16(@LC78)
	or	 r4,r4,lo16(@LC79)
	bsr.n	 _opt_reg_flag
	or	 r5,r5,lo16(_flush_on_syscalls)
	or	 r2,r0,r24
	or	 r6,r0,0
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC80)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC81)
	or.u	 r5,r0,hi16(_compress_icache_addrs)
	or	 r3,r3,lo16(@LC80)
	or	 r4,r4,lo16(@LC81)
	bsr.n	 _opt_reg_flag
	or	 r5,r5,lo16(_compress_icache_addrs)
	st	 r0,r31,32
	or	 r2,r0,r24
	or	 r9,r0,1
	or.u	 r3,r0,hi16(@LC82)
	or.u	 r4,r0,hi16(@LC83)
	or.u	 r13,r0,hi16(_mem_nelt)
	or.u	 r5,r0,hi16(_mem_lat)
	ld	 r6,r13,lo16(_mem_nelt)
	or	 r3,r3,lo16(@LC82)
	or	 r4,r4,lo16(@LC83)
	or	 r5,r5,lo16(_mem_lat)
	or	 r7,r13,lo16(_mem_nelt)
	or	 r8,r0,r5
	bsr.n	 _opt_reg_int_list
	st	 r0,r31,36
	or	 r2,r0,r24
	or	 r6,r0,8
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC84)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC85)
	or.u	 r5,r0,hi16(_mem_bus_width)
	or	 r3,r3,lo16(@LC84)
	or	 r4,r4,lo16(@LC85)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_mem_bus_width)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC86)
	or.u	 r4,r0,hi16(@LC87)
	or.u	 r5,r0,hi16(_itlb_opt)
	or.u	 r6,r0,hi16(@LC88)
	or	 r3,r3,lo16(@LC86)
	or	 r4,r4,lo16(@LC87)
	or	 r5,r5,lo16(_itlb_opt)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC88)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r3,r0,hi16(@LC89)
	or.u	 r4,r0,hi16(@LC90)
	or.u	 r5,r0,hi16(_dtlb_opt)
	or.u	 r6,r0,hi16(@LC91)
	or	 r3,r3,lo16(@LC89)
	or	 r4,r4,lo16(@LC90)
	or	 r5,r5,lo16(_dtlb_opt)
	bsr.n	 _opt_reg_string
	or	 r6,r6,lo16(@LC91)
	or	 r2,r0,r24
	or	 r6,r0,30
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC92)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC93)
	or.u	 r5,r0,hi16(_tlb_miss_lat)
	or	 r3,r3,lo16(@LC92)
	or	 r4,r4,lo16(@LC93)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_tlb_miss_lat)
	or	 r2,r0,r24
	or	 r7,r0,1
	or	 r8,r0,0
	or.u	 r25,r0,hi16(_fu_config+4)
	or.u	 r3,r0,hi16(@LC94)
	or.u	 r4,r0,hi16(@LC95)
	or.u	 r5,r0,hi16(_res_ialu)
	ld	 r6,r25,lo16(_fu_config+4)
	or	 r3,r3,lo16(@LC94)
	or	 r4,r4,lo16(@LC95)
	or	 r5,r5,lo16(_res_ialu)
	bsr.n	 _opt_reg_int
	or	 r25,r25,lo16(_fu_config+4)
	ld	 r6,r25,268
	or	 r2,r0,r24
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC96)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC97)
	or.u	 r5,r0,hi16(_res_imult)
	or	 r3,r3,lo16(@LC96)
	or	 r4,r4,lo16(@LC97)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_res_imult)
	ld	 r6,r25,536
	or	 r2,r0,r24
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC98)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC99)
	or.u	 r5,r0,hi16(_res_memport)
	or	 r3,r3,lo16(@LC98)
	or	 r4,r4,lo16(@LC99)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_res_memport)
	ld	 r6,r25,804
	or	 r2,r0,r24
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC100)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC101)
	or.u	 r5,r0,hi16(_res_fpalu)
	or	 r3,r3,lo16(@LC100)
	or	 r4,r4,lo16(@LC101)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_res_fpalu)
	ld	 r6,r25,1072
	or	 r2,r0,r24
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC102)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC103)
	or.u	 r5,r0,hi16(_res_fpmult)
	or	 r3,r3,lo16(@LC102)
	or	 r4,r4,lo16(@LC103)
	bsr.n	 _opt_reg_int
	or	 r5,r5,lo16(_res_fpmult)
	st	 r0,r31,32
	or	 r2,r0,r24
	or	 r6,r0,8
	or	 r8,r0,0
	or	 r9,r0,0
	or.u	 r3,r0,hi16(@LC104)
	or.u	 r4,r0,hi16(@LC105)
	or.u	 r5,r0,hi16(_pcstat_vars)
	or.u	 r7,r0,hi16(_pcstat_nelt)
	or	 r13,r0,1
	or	 r3,r3,lo16(@LC104)
	or	 r4,r4,lo16(@LC105)
	or	 r5,r5,lo16(_pcstat_vars)
	or	 r7,r7,lo16(_pcstat_nelt)
	bsr.n	 _opt_reg_string_list
	st	 r13,r31,36
	or	 r2,r0,r24
	or	 r6,r0,0
	or	 r7,r0,1
	or.u	 r3,r0,hi16(@LC106)
	or	 r8,r0,0
	or.u	 r4,r0,hi16(@LC107)
	or.u	 r5,r0,hi16(_bugcompat_mode)
	or	 r3,r3,lo16(@LC106)
	or	 r4,r4,lo16(@LC107)
	bsr.n	 _opt_reg_flag
	or	 r5,r5,lo16(_bugcompat_mode)
@Lte0:
	ld	 r1,r31,64
	ld.d	 r24,r31,56
	jmp.n	 r1
	addu	 r31,r31,80

data
	align	 8
@LC108:
	string	 "sim-outorder.c\000"
	align	 8
@LC109:
	string	 "sim_check_options\000"
	align	 8
@LC110:
	string	 "bad fast forward count: %d\000"
	align	 8
@LC111:
	string	 "sim-outorder.c\000"
	align	 8
@LC112:
	string	 "sim_check_options\000"
	align	 8
@LC113:
	string	 "inst fetch queue size must be positive > 0 and a "
	string	 "power of two\000"
	align	 8
@LC114:
	string	 "sim-outorder.c\000"
	align	 8
@LC115:
	string	 "sim_check_options\000"
	align	 8
@LC116:
	string	 "mis-prediction penalty must be at least 1 cycle\000"
	align	 8
@LC117:
	string	 "perfect\000"
	align	 8
@LC118:
	string	 "taken\000"
	align	 8
@LC119:
	string	 "nottaken\000"
	align	 8
@LC120:
	string	 "bimod\000"
	align	 8
@LC121:
	string	 "2lev\000"
	align	 8
@LC122:
	string	 "sim-outorder.c\000"
	align	 8
@LC123:
	string	 "sim_check_options\000"
	align	 8
@LC124:
	string	 "bad 2-level predictor config (<l1size> <l2size> <"
	string	 "hist_size>)\000"
	align	 8
@LC125:
	string	 "sim-outorder.c\000"
	align	 8
@LC126:
	string	 "sim_check_options\000"
	align	 8
@LC127:
	string	 "cannot parse predictor type `%s'\000"
	align	 8
@LC128:
	string	 "sim-outorder.c\000"
	align	 8
@LC129:
	string	 "sim_check_options\000"
	align	 8
@LC130:
	string	 "issue width must be positive non-zero and a power"
	string	 " of two\000"
	align	 8
@LC131:
	string	 "sim-outorder.c\000"
	align	 8
@LC132:
	string	 "sim_check_options\000"
	align	 8
@LC133:
	string	 "issue width must be positive non-zero and a power"
	string	 " of two\000"
	align	 8
@LC134:
	string	 "sim-outorder.c\000"
	align	 8
@LC135:
	string	 "sim_check_options\000"
	align	 8
@LC136:
	string	 "commit width must be positive non-zero\000"
	align	 8
@LC137:
	string	 "sim-outorder.c\000"
	align	 8
@LC138:
	string	 "sim_check_options\000"
	align	 8
@LC139:
	string	 "RUU size must be a positive number > 1 and a powe"
	string	 "r of two\000"
	align	 8
@LC140:
	string	 "sim-outorder.c\000"
	align	 8
@LC141:
	string	 "sim_check_options\000"
	align	 8
@LC142:
	string	 "LSQ size must be a positive number > 1 and a powe"
	string	 "r of two\000"
	align	 8
@LC143:
	string	 "none\000"
	align	 8
@LC144:
	string	 "none\000"
	align	 8
@LC145:
	string	 "sim-outorder.c\000"
	align	 8
@LC146:
	string	 "sim_check_options\000"
	align	 8
@LC147:
	string	 "the l1 data cache must defined if the l2 cache is"
	string	 " defined\000"
	align	 8
@LC148:
	string	 "%[^:]:%d:%d:%d:%c\000"
	align	 8
@LC149:
	string	 "sim-outorder.c\000"
	align	 8
@LC150:
	string	 "sim_check_options\000"
	align	 8
@LC151:
	string	 "bad l1 D-cache parms: <name>:<nsets>:<bsize>:<ass"
	string	 "oc>:<repl>\000"
	align	 8
@LC152:
	string	 "none\000"
	align	 8
@LC153:
	string	 "%[^:]:%d:%d:%d:%c\000"
	align	 8
@LC154:
	string	 "sim-outorder.c\000"
	align	 8
@LC155:
	string	 "sim_check_options\000"
	align	 8
@LC156:
	string	 "bad l2 D-cache parms: <name>:<nsets>:<bsize>:<ass"
	string	 "oc>:<repl>\000"
	align	 8
@LC157:
	string	 "none\000"
	align	 8
@LC158:
	string	 "none\000"
	align	 8
@LC159:
	string	 "sim-outorder.c\000"
	align	 8
@LC160:
	string	 "sim_check_options\000"
	align	 8
@LC161:
	string	 "the l1 inst cache must defined if the l2 cache is"
	string	 " defined\000"
	align	 8
@LC162:
	string	 "dl1\000"
	align	 8
@LC163:
	string	 "sim-outorder.c\000"
	align	 8
@LC164:
	string	 "sim_check_options\000"
	align	 8
@LC165:
	string	 "I-cache l1 cannot access D-cache l1 as it's undef"
	string	 "ined\000"
	align	 8
@LC166:
	string	 "none\000"
	align	 8
@LC167:
	string	 "sim-outorder.c\000"
	align	 8
@LC168:
	string	 "sim_check_options\000"
	align	 8
@LC169:
	string	 "the l1 inst cache must defined if the l2 cache is"
	string	 " defined\000"
	align	 8
@LC170:
	string	 "dl2\000"
	align	 8
@LC171:
	string	 "sim-outorder.c\000"
	align	 8
@LC172:
	string	 "sim_check_options\000"
	align	 8
@LC173:
	string	 "I-cache l1 cannot access D-cache l2 as it's undef"
	string	 "ined\000"
	align	 8
@LC174:
	string	 "none\000"
	align	 8
@LC175:
	string	 "sim-outorder.c\000"
	align	 8
@LC176:
	string	 "sim_check_options\000"
	align	 8
@LC177:
	string	 "the l1 inst cache must defined if the l2 cache is"
	string	 " defined\000"
	align	 8
@LC178:
	string	 "%[^:]:%d:%d:%d:%c\000"
	align	 8
@LC179:
	string	 "sim-outorder.c\000"
	align	 8
@LC180:
	string	 "sim_check_options\000"
	align	 8
@LC181:
	string	 "bad l1 I-cache parms: <name>:<nsets>:<bsize>:<ass"
	string	 "oc>:<repl>\000"
	align	 8
@LC182:
	string	 "none\000"
	align	 8
@LC183:
	string	 "dl2\000"
	align	 8
@LC184:
	string	 "sim-outorder.c\000"
	align	 8
@LC185:
	string	 "sim_check_options\000"
	align	 8
@LC186:
	string	 "I-cache l2 cannot access D-cache l2 as it's undef"
	string	 "ined\000"
	align	 8
@LC187:
	string	 "%[^:]:%d:%d:%d:%c\000"
	align	 8
@LC188:
	string	 "sim-outorder.c\000"
	align	 8
@LC189:
	string	 "sim_check_options\000"
	align	 8
@LC190:
	string	 "bad l2 I-cache parms: <name>:<nsets>:<bsize>:<ass"
	string	 "oc>:<repl>\000"
	align	 8
@LC191:
	string	 "none\000"
	align	 8
@LC192:
	string	 "%[^:]:%d:%d:%d:%c\000"
	align	 8
@LC193:
	string	 "sim-outorder.c\000"
	align	 8
@LC194:
	string	 "sim_check_options\000"
	align	 8
@LC195:
	string	 "bad TLB parms: <name>:<nsets>:<page_size>:<assoc>"
	string	 ":<repl>\000"
	align	 8
@LC196:
	string	 "none\000"
	align	 8
@LC197:
	string	 "%[^:]:%d:%d:%d:%c\000"
	align	 8
@LC198:
	string	 "sim-outorder.c\000"
	align	 8
@LC199:
	string	 "sim_check_options\000"
	align	 8
@LC200:
	string	 "bad TLB parms: <name>:<nsets>:<page_size>:<assoc>"
	string	 ":<repl>\000"
	align	 8
@LC201:
	string	 "sim-outorder.c\000"
	align	 8
@LC202:
	string	 "sim_check_options\000"
	align	 8
@LC203:
	string	 "l1 data cache latency must be greater than zero\000"
	align	 8
@LC204:
	string	 "sim-outorder.c\000"
	align	 8
@LC205:
	string	 "sim_check_options\000"
	align	 8
@LC206:
	string	 "l2 data cache latency must be greater than zero\000"
	align	 8
@LC207:
	string	 "sim-outorder.c\000"
	align	 8
@LC208:
	string	 "sim_check_options\000"
	align	 8
@LC209:
	string	 "l1 instruction cache latency must be greater than"
	string	 " zero\000"
	align	 8
@LC210:
	string	 "sim-outorder.c\000"
	align	 8
@LC211:
	string	 "sim_check_options\000"
	align	 8
@LC212:
	string	 "l2 instruction cache latency must be greater than"
	string	 " zero\000"
	align	 8
@LC213:
	string	 "sim-outorder.c\000"
	align	 8
@LC214:
	string	 "sim_check_options\000"
	align	 8
@LC215:
	string	 "bad memory access latency (<first_chunk> <inter_c"
	string	 "hunk>)\000"
	align	 8
@LC216:
	string	 "sim-outorder.c\000"
	align	 8
@LC217:
	string	 "sim_check_options\000"
	align	 8
@LC218:
	string	 "all memory access latencies must be greater than "
	string	 "zero\000"
	align	 8
@LC219:
	string	 "sim-outorder.c\000"
	align	 8
@LC220:
	string	 "sim_check_options\000"
	align	 8
@LC221:
	string	 "memory bus width must be positive non-zero and a "
	string	 "power of two\000"
	align	 8
@LC222:
	string	 "sim-outorder.c\000"
	align	 8
@LC223:
	string	 "sim_check_options\000"
	align	 8
@LC224:
	string	 "TLB miss latency must be greater than zero\000"
	align	 8
@LC225:
	string	 "sim-outorder.c\000"
	align	 8
@LC226:
	string	 "sim_check_options\000"
	align	 8
@LC227:
	string	 "number of integer ALU's must be greater than zero"
	string	 "\000"
	align	 8
@LC228:
	string	 "sim-outorder.c\000"
	align	 8
@LC229:
	string	 "sim_check_options\000"
	align	 8
@LC230:
	string	 "number of integer ALU's must be <= MAX_INSTS_PER_"
	string	 "CLASS\000"
	align	 8
@LC231:
	string	 "sim-outorder.c\000"
	align	 8
@LC232:
	string	 "sim_check_options\000"
	align	 8
@LC233:
	string	 "number of integer multiplier/dividers must be gre"
	string	 "ater than zero\000"
	align	 8
@LC234:
	string	 "sim-outorder.c\000"
	align	 8
@LC235:
	string	 "sim_check_options\000"
	align	 8
@LC236:
	string	 "number of integer mult/div's must be <= MAX_INSTS"
	string	 "_PER_CLASS\000"
	align	 8
@LC237:
	string	 "sim-outorder.c\000"
	align	 8
@LC238:
	string	 "sim_check_options\000"
	align	 8
@LC239:
	string	 "number of memory system ports must be greater tha"
	string	 "n zero\000"
	align	 8
@LC240:
	string	 "sim-outorder.c\000"
	align	 8
@LC241:
	string	 "sim_check_options\000"
	align	 8
@LC242:
	string	 "number of memory system ports must be <= MAX_INST"
	string	 "S_PER_CLASS\000"
	align	 8
@LC243:
	string	 "sim-outorder.c\000"
	align	 8
@LC244:
	string	 "sim_check_options\000"
	align	 8
@LC245:
	string	 "number of floating point ALU's must be greater th"
	string	 "an zero\000"
	align	 8
@LC246:
	string	 "sim-outorder.c\000"
	align	 8
@LC247:
	string	 "sim_check_options\000"
	align	 8
@LC248:
	string	 "number of floating point ALU's must be <= MAX_INS"
	string	 "TS_PER_CLASS\000"
	align	 8
@LC249:
	string	 "sim-outorder.c\000"
	align	 8
@LC250:
	string	 "sim_check_options\000"
	align	 8
@LC251:
	string	 "number of floating point multiplier/dividers must"
	string	 " be > zero\000"
	align	 8
@LC252:
	string	 "sim-outorder.c\000"
	align	 8
@LC253:
	string	 "sim_check_options\000"
	align	 8
@LC254:
	string	 "number of FP mult/div's must be <= MAX_INSTS_PER_"
	string	 "CLASS\000"
text
	align	 8
	global	 _sim_check_options
_sim_check_options:
	or.u	 r13,r0,hi16(_fastfwd_count)
	ld	 r6,r13,lo16(_fastfwd_count)
	subu	 r31,r31,240
	st	 r1,r31,80
	st	 r21,r31,60
	set	 r13,r0,30<1>
	st.d	 r24,r31,72
	cmp	 r13,r6,r13
	bb1.n	 ls,r13,@L149
	st.d	 r22,r31,64
@Ltb1:
	or	 r4,r0,819
	or.u	 r2,r0,hi16(@LC108)
	or.u	 r3,r0,hi16(@LC109)
	or.u	 r5,r0,hi16(@LC110)
	or	 r2,r2,lo16(@LC108)
	or	 r3,r3,lo16(@LC109)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC110)
	align	 4
@L149:
	or.u	 r13,r0,hi16(_ruu_ifq_size)
	ld	 r12,r13,lo16(_ruu_ifq_size)
	bcnd.n	 le0,r12,@L151
	subu	 r13,r12,1
	and	 r13,r12,r13
	bcnd.n	 eq0,r13,@L150
	or.u	 r13,r0,hi16(_ruu_branch_penalty)
@L151:
	or.u	 r2,r0,hi16(@LC111)
	or	 r4,r0,822
	or.u	 r3,r0,hi16(@LC112)
	or.u	 r5,r0,hi16(@LC113)
	or	 r2,r2,lo16(@LC111)
	or	 r3,r3,lo16(@LC112)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC113)
	align	 4
@L150:
	ld	 r13,r13,lo16(_ruu_branch_penalty)
	bcnd.n	 gt0,r13,@L152
	or.u	 r25,r0,hi16(_pred_type)
	or.u	 r2,r0,hi16(@LC114)
	or	 r4,r0,825
	or.u	 r3,r0,hi16(@LC115)
	or.u	 r5,r0,hi16(@LC116)
	or	 r2,r2,lo16(@LC114)
	or	 r3,r3,lo16(@LC115)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC116)
	align	 4
@L152:
	or.u	 r3,r0,hi16(@LC117)
	ld	 r2,r25,lo16(_pred_type)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC117)
	bcnd.n	 ne0,r2,@L153
	or.u	 r3,r0,hi16(@LC118)
	or.u	 r13,r0,hi16(_pred)
	or.u	 r12,r0,hi16(_pred_perfect)
	st	 r0,r13,lo16(_pred)
	or	 r13,r0,1
	br.n	 @L154
	st	 r13,r12,lo16(_pred_perfect)
	align	 4
@L153:
	ld	 r2,r25,lo16(_pred_type)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC118)
	bcnd.n	 ne0,r2,@L155
	or.u	 r3,r0,hi16(@LC119)
	or	 r2,r0,2
	or	 r3,r0,0
	or	 r4,r0,0
	br.n	 @L224
	or	 r5,r0,0
	align	 4
@L155:
	ld	 r2,r25,lo16(_pred_type)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC119)
	bcnd.n	 ne0,r2,@L157
	or.u	 r3,r0,hi16(@LC120)
	or	 r2,r0,3
	or	 r3,r0,0
	or	 r4,r0,0
	br.n	 @L224
	or	 r5,r0,0
	align	 4
@L157:
	ld	 r2,r25,lo16(_pred_type)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC120)
	bcnd.n	 ne0,r2,@L159
	or.u	 r3,r0,hi16(@LC121)
	or	 r2,r0,1
	or.u	 r13,r0,hi16(_btb_size)
	or	 r4,r0,0
	ld	 r3,r13,lo16(_btb_size)
	br.n	 @L224
	or	 r5,r0,0
	align	 4
@L159:
	ld	 r2,r25,lo16(_pred_type)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC121)
	bcnd.n	 ne0,r2,@L161
	or	 r4,r0,859
	or.u	 r13,r0,hi16(_twolev_nelt)
	ld	 r13,r13,lo16(_twolev_nelt)
	cmp	 r13,r13,3
	bb0.n	 ne,r13,@L162
	or.u	 r13,r0,hi16(_twolev_config)
	or.u	 r2,r0,hi16(@LC122)
	or	 r4,r0,852
	or.u	 r3,r0,hi16(@LC123)
	or.u	 r5,r0,hi16(@LC124)
	or	 r2,r2,lo16(@LC122)
	or	 r3,r3,lo16(@LC123)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC124)
	align	 4
@L162:
	ld	 r3,r13,lo16(_twolev_config)
	or	 r13,r13,lo16(_twolev_config)
	ld	 r4,r13,4
	ld	 r5,r13,8
	or	 r2,r0,0
@L224:
	bsr	 _bpred_create
	or.u	 r13,r0,hi16(_pred)
	br.n	 @L154
	st	 r2,r13,lo16(_pred)
	align	 4
@L161:
	ld	 r6,r25,lo16(_pred_type)
	or.u	 r2,r0,hi16(@LC125)
	or.u	 r3,r0,hi16(@LC126)
	or.u	 r5,r0,hi16(@LC127)
	or	 r2,r2,lo16(@LC125)
	or	 r3,r3,lo16(@LC126)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC127)
	align	 4
@L154:
	or.u	 r13,r0,hi16(_ruu_decode_width)
	ld	 r12,r13,lo16(_ruu_decode_width)
	bcnd.n	 le0,r12,@L165
	subu	 r13,r12,1
	and	 r13,r12,r13
	bcnd.n	 eq0,r13,@L164
	or.u	 r13,r0,hi16(_ruu_issue_width)
@L165:
	or.u	 r2,r0,hi16(@LC128)
	or	 r4,r0,862
	or.u	 r3,r0,hi16(@LC129)
	or.u	 r5,r0,hi16(@LC130)
	or	 r2,r2,lo16(@LC128)
	or	 r3,r3,lo16(@LC129)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC130)
	align	 4
@L164:
	ld	 r12,r13,lo16(_ruu_issue_width)
	bcnd.n	 le0,r12,@L167
	subu	 r13,r12,1
	and	 r13,r12,r13
	bcnd.n	 eq0,r13,@L166
	or.u	 r13,r0,hi16(_ruu_commit_width)
@L167:
	or.u	 r2,r0,hi16(@LC131)
	or	 r4,r0,865
	or.u	 r3,r0,hi16(@LC132)
	or.u	 r5,r0,hi16(@LC133)
	or	 r2,r2,lo16(@LC131)
	or	 r3,r3,lo16(@LC132)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC133)
	align	 4
@L166:
	ld	 r13,r13,lo16(_ruu_commit_width)
	bcnd.n	 gt0,r13,@L168
	or.u	 r13,r0,hi16(_RUU_size)
	or.u	 r2,r0,hi16(@LC134)
	or	 r4,r0,868
	or.u	 r3,r0,hi16(@LC135)
	or.u	 r5,r0,hi16(@LC136)
	or	 r2,r2,lo16(@LC134)
	or	 r3,r3,lo16(@LC135)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC136)
	align	 4
@L168:
	ld	 r12,r13,lo16(_RUU_size)
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L170
	subu	 r13,r12,1
	and	 r13,r12,r13
	bcnd.n	 eq0,r13,@L169
	or.u	 r13,r0,hi16(_LSQ_size)
@L170:
	or.u	 r2,r0,hi16(@LC137)
	or	 r4,r0,871
	or.u	 r3,r0,hi16(@LC138)
	or.u	 r5,r0,hi16(@LC139)
	or	 r2,r2,lo16(@LC137)
	or	 r3,r3,lo16(@LC138)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC139)
	align	 4
@L169:
	ld	 r12,r13,lo16(_LSQ_size)
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L172
	subu	 r13,r12,1
	and	 r13,r12,r13
	bcnd.n	 eq0,r13,@L171
	or.u	 r25,r0,hi16(_cache_dl1_opt)
@L172:
	or.u	 r2,r0,hi16(@LC140)
	or	 r4,r0,874
	or.u	 r3,r0,hi16(@LC141)
	or.u	 r5,r0,hi16(@LC142)
	or	 r2,r2,lo16(@LC140)
	or	 r3,r3,lo16(@LC141)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC142)
	align	 4
@L171:
	or.u	 r3,r0,hi16(@LC143)
	ld	 r2,r25,lo16(_cache_dl1_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC143)
	bcnd.n	 ne0,r2,@L173
	or.u	 r3,r0,hi16(@LC148)
	or.u	 r13,r0,hi16(_cache_dl2_opt)
	or.u	 r3,r0,hi16(@LC144)
	ld	 r2,r13,lo16(_cache_dl2_opt)
	or.u	 r13,r0,hi16(_cache_dl1)
	or	 r3,r3,lo16(@LC144)
	bsr.n	 _strcmp
	st	 r0,r13,lo16(_cache_dl1)
	bcnd.n	 eq0,r2,@L227
	or.u	 r13,r0,hi16(_cache_dl2)
	or.u	 r2,r0,hi16(@LC145)
	or	 r4,r0,883
	or.u	 r3,r0,hi16(@LC146)
	or.u	 r5,r0,hi16(@LC147)
	or	 r2,r2,lo16(@LC145)
	or	 r3,r3,lo16(@LC146)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC147)
	align	 4
@L173:
	ld	 r2,r25,lo16(_cache_dl1_opt)
	addu	 r4,r31,88
	addu	 r22,r31,216
	addu	 r21,r31,220
	addu	 r24,r31,224
	addu	 r23,r31,228
	or	 r3,r3,lo16(@LC148)
	or	 r5,r0,r22
	or	 r6,r0,r21
	or	 r7,r0,r24
	bsr.n	 _sscanf
	or	 r8,r0,r23
	cmp	 r2,r2,5
	bb0.n	 ne,r2,@L176
	or.u	 r2,r0,hi16(@LC149)
	or	 r4,r0,890
	or.u	 r3,r0,hi16(@LC150)
	or.u	 r5,r0,hi16(@LC151)
	or	 r2,r2,lo16(@LC149)
	or	 r3,r3,lo16(@LC150)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC151)
	align	 4
@L176:
	bsr.n	 _cache_char2policy
	ld.b	 r2,r31,228
	or	 r8,r0,r2
	addu	 r2,r31,88
	ld	 r3,r31,216
	or	 r5,r0,0
	ld	 r4,r31,220
	or.u	 r13,r0,hi16(_cache_dl1_lat)
	ld	 r7,r31,224
	or.u	 r9,r0,hi16(_dl1_access_fn)
	ld	 r13,r13,lo16(_cache_dl1_lat)
	or	 r6,r0,0
	or	 r9,r9,lo16(_dl1_access_fn)
	bsr.n	 _cache_create
	st	 r13,r31,32
	or.u	 r13,r0,hi16(_cache_dl1)
	or.u	 r25,r0,hi16(_cache_dl2_opt)
	st	 r2,r13,lo16(_cache_dl1)
	or.u	 r3,r0,hi16(@LC152)
	ld	 r2,r25,lo16(_cache_dl2_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC152)
	bcnd.n	 ne0,r2,@L177
	addu	 r4,r31,88
	or.u	 r13,r0,hi16(_cache_dl2)
@L227:
	br.n	 @L175
	st	 r0,r13,lo16(_cache_dl2)
	align	 4
@L177:
	ld	 r2,r25,lo16(_cache_dl2_opt)
	or	 r5,r0,r22
	or	 r6,r0,r21
	or	 r7,r0,r24
	or.u	 r3,r0,hi16(@LC153)
	or	 r8,r0,r23
	bsr.n	 _sscanf
	or	 r3,r3,lo16(@LC153)
	cmp	 r2,r2,5
	bb0.n	 ne,r2,@L179
	or.u	 r2,r0,hi16(@LC154)
	or	 r4,r0,903
	or.u	 r3,r0,hi16(@LC155)
	or.u	 r5,r0,hi16(@LC156)
	or	 r2,r2,lo16(@LC154)
	or	 r3,r3,lo16(@LC155)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC156)
	align	 4
@L179:
	bsr.n	 _cache_char2policy
	ld.b	 r2,r31,228
	or	 r8,r0,r2
	addu	 r2,r31,88
	ld	 r3,r31,216
	or	 r5,r0,0
	ld	 r4,r31,220
	or.u	 r13,r0,hi16(_cache_dl2_lat)
	ld	 r7,r31,224
	or.u	 r9,r0,hi16(_dl2_access_fn)
	ld	 r13,r13,lo16(_cache_dl2_lat)
	or	 r6,r0,0
	or	 r9,r9,lo16(_dl2_access_fn)
	bsr.n	 _cache_create
	st	 r13,r31,32
	or.u	 r13,r0,hi16(_cache_dl2)
	st	 r2,r13,lo16(_cache_dl2)
@L175:
	or.u	 r25,r0,hi16(_cache_il1_opt)
	or.u	 r3,r0,hi16(@LC157)
	ld	 r2,r25,lo16(_cache_il1_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC157)
	bcnd.n	 ne0,r2,@L180
	or.u	 r3,r0,hi16(@LC162)
	or.u	 r13,r0,hi16(_cache_il2_opt)
	or.u	 r3,r0,hi16(@LC158)
	ld	 r2,r13,lo16(_cache_il2_opt)
	or.u	 r13,r0,hi16(_cache_il1)
	or	 r3,r3,lo16(@LC158)
	bsr.n	 _strcmp
	st	 r0,r13,lo16(_cache_il1)
	bcnd.n	 eq0,r2,@L228
	or.u	 r13,r0,hi16(_cache_il2)
	or.u	 r2,r0,hi16(@LC159)
	or	 r4,r0,917
	or.u	 r3,r0,hi16(@LC160)
	or.u	 r5,r0,hi16(@LC161)
	or	 r2,r2,lo16(@LC159)
	or	 r3,r3,lo16(@LC160)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC161)
	align	 4
@L180:
	ld	 r2,r25,lo16(_cache_il1_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC162)
	bcnd.n	 ne0,r2,@L183
	or.u	 r13,r0,hi16(_cache_dl1)
	ld	 r12,r13,lo16(_cache_dl1)
	bcnd.n	 ne0,r12,@L184
	or.u	 r13,r0,hi16(_cache_il2_opt)
	or.u	 r2,r0,hi16(@LC163)
	or	 r4,r0,923
	or.u	 r3,r0,hi16(@LC164)
	or.u	 r5,r0,hi16(@LC165)
	or	 r2,r2,lo16(@LC163)
	or	 r3,r3,lo16(@LC164)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC165)
	align	 4
@L184:
	or.u	 r3,r0,hi16(@LC166)
	ld	 r2,r13,lo16(_cache_il2_opt)
	or.u	 r13,r0,hi16(_cache_il1)
	or	 r3,r3,lo16(@LC166)
	bsr.n	 _strcmp
	st	 r12,r13,lo16(_cache_il1)
	bcnd.n	 eq0,r2,@L228
	or.u	 r13,r0,hi16(_cache_il2)
	or.u	 r2,r0,hi16(@LC167)
	or	 r4,r0,928
	or.u	 r3,r0,hi16(@LC168)
	or.u	 r5,r0,hi16(@LC169)
	or	 r2,r2,lo16(@LC167)
	or	 r3,r3,lo16(@LC168)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC169)
	align	 4
@L183:
	or.u	 r3,r0,hi16(@LC170)
	ld	 r2,r25,lo16(_cache_il1_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC170)
	bcnd.n	 ne0,r2,@L187
	addu	 r4,r31,88
	or.u	 r13,r0,hi16(_cache_dl2)
	ld	 r12,r13,lo16(_cache_dl2)
	bcnd.n	 ne0,r12,@L188
	or.u	 r13,r0,hi16(_cache_il2_opt)
	or.u	 r2,r0,hi16(@LC171)
	or	 r4,r0,934
	or.u	 r3,r0,hi16(@LC172)
	or.u	 r5,r0,hi16(@LC173)
	or	 r2,r2,lo16(@LC171)
	or	 r3,r3,lo16(@LC172)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC173)
	align	 4
@L188:
	or.u	 r3,r0,hi16(@LC174)
	ld	 r2,r13,lo16(_cache_il2_opt)
	or.u	 r13,r0,hi16(_cache_il1)
	or	 r3,r3,lo16(@LC174)
	bsr.n	 _strcmp
	st	 r12,r13,lo16(_cache_il1)
	bcnd.n	 eq0,r2,@L228
	or.u	 r13,r0,hi16(_cache_il2)
	or.u	 r2,r0,hi16(@LC175)
	or	 r4,r0,939
	or.u	 r3,r0,hi16(@LC176)
	or.u	 r5,r0,hi16(@LC177)
	or	 r2,r2,lo16(@LC175)
	or	 r3,r3,lo16(@LC176)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC177)
	align	 4
@L187:
	ld	 r2,r25,lo16(_cache_il1_opt)
	or.u	 r3,r0,hi16(@LC178)
	addu	 r22,r31,216
	addu	 r21,r31,220
	addu	 r24,r31,224
	addu	 r23,r31,228
	or	 r3,r3,lo16(@LC178)
	or	 r5,r0,r22
	or	 r6,r0,r21
	or	 r7,r0,r24
	bsr.n	 _sscanf
	or	 r8,r0,r23
	cmp	 r2,r2,5
	bb0.n	 ne,r2,@L191
	or.u	 r2,r0,hi16(@LC179)
	or	 r4,r0,946
	or.u	 r3,r0,hi16(@LC180)
	or.u	 r5,r0,hi16(@LC181)
	or	 r2,r2,lo16(@LC179)
	or	 r3,r3,lo16(@LC180)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC181)
	align	 4
@L191:
	bsr.n	 _cache_char2policy
	ld.b	 r2,r31,228
	or	 r8,r0,r2
	addu	 r2,r31,88
	ld	 r3,r31,216
	or	 r5,r0,0
	ld	 r4,r31,220
	or.u	 r13,r0,hi16(_cache_il1_lat)
	ld	 r7,r31,224
	or.u	 r9,r0,hi16(_il1_access_fn)
	ld	 r13,r13,lo16(_cache_il1_lat)
	or	 r6,r0,0
	or	 r9,r9,lo16(_il1_access_fn)
	bsr.n	 _cache_create
	st	 r13,r31,32
	or.u	 r13,r0,hi16(_cache_il1)
	or.u	 r25,r0,hi16(_cache_il2_opt)
	st	 r2,r13,lo16(_cache_il1)
	or.u	 r3,r0,hi16(@LC182)
	ld	 r2,r25,lo16(_cache_il2_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC182)
	bcnd.n	 ne0,r2,@L192
	or.u	 r13,r0,hi16(_cache_il2)
@L228:
	br.n	 @L182
	st	 r0,r13,lo16(_cache_il2)
	align	 4
@L192:
	or.u	 r3,r0,hi16(@LC183)
	ld	 r2,r25,lo16(_cache_il2_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC183)
	bcnd.n	 ne0,r2,@L194
	addu	 r4,r31,88
	or.u	 r13,r0,hi16(_cache_dl2)
	ld	 r12,r13,lo16(_cache_dl2)
	bcnd.n	 ne0,r12,@L195
	or.u	 r13,r0,hi16(_cache_il2)
	or.u	 r2,r0,hi16(@LC184)
	or	 r4,r0,957
	or.u	 r3,r0,hi16(@LC185)
	or.u	 r5,r0,hi16(@LC186)
	or	 r2,r2,lo16(@LC184)
	or	 r3,r3,lo16(@LC185)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC186)
	align	 4
@L195:
	br.n	 @L182
	st	 r12,r13,lo16(_cache_il2)
	align	 4
@L194:
	ld	 r2,r25,lo16(_cache_il2_opt)
	or	 r5,r0,r22
	or	 r6,r0,r21
	or	 r7,r0,r24
	or.u	 r3,r0,hi16(@LC187)
	or	 r8,r0,r23
	bsr.n	 _sscanf
	or	 r3,r3,lo16(@LC187)
	cmp	 r2,r2,5
	bb0.n	 ne,r2,@L197
	or.u	 r2,r0,hi16(@LC188)
	or	 r4,r0,965
	or.u	 r3,r0,hi16(@LC189)
	or.u	 r5,r0,hi16(@LC190)
	or	 r2,r2,lo16(@LC188)
	or	 r3,r3,lo16(@LC189)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC190)
	align	 4
@L197:
	bsr.n	 _cache_char2policy
	ld.b	 r2,r31,228
	or	 r8,r0,r2
	addu	 r2,r31,88
	ld	 r3,r31,216
	or	 r5,r0,0
	ld	 r4,r31,220
	or.u	 r13,r0,hi16(_cache_il2_lat)
	ld	 r7,r31,224
	or.u	 r9,r0,hi16(_il2_access_fn)
	ld	 r13,r13,lo16(_cache_il2_lat)
	or	 r6,r0,0
	or	 r9,r9,lo16(_il2_access_fn)
	bsr.n	 _cache_create
	st	 r13,r31,32
	or.u	 r13,r0,hi16(_cache_il2)
	st	 r2,r13,lo16(_cache_il2)
@L182:
	or.u	 r25,r0,hi16(_itlb_opt)
	or.u	 r3,r0,hi16(@LC191)
	ld	 r2,r25,lo16(_itlb_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC191)
	bcnd.n	 ne0,r2,@L198
	addu	 r4,r31,88
	or.u	 r13,r0,hi16(_itlb)
	br.n	 @L199
	st	 r0,r13,lo16(_itlb)
	align	 4
@L198:
	ld	 r2,r25,lo16(_itlb_opt)
	addu	 r5,r31,216
	addu	 r6,r31,220
	addu	 r7,r31,224
	or.u	 r3,r0,hi16(@LC192)
	addu	 r8,r31,228
	bsr.n	 _sscanf
	or	 r3,r3,lo16(@LC192)
	cmp	 r2,r2,5
	bb0.n	 ne,r2,@L200
	or.u	 r2,r0,hi16(@LC193)
	or	 r4,r0,979
	or.u	 r3,r0,hi16(@LC194)
	or.u	 r5,r0,hi16(@LC195)
	or	 r2,r2,lo16(@LC193)
	or	 r3,r3,lo16(@LC194)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC195)
	align	 4
@L200:
	bsr.n	 _cache_char2policy
	ld.b	 r2,r31,228
	or	 r8,r0,r2
	addu	 r2,r31,88
	or	 r5,r0,0
	ld	 r3,r31,216
	or	 r6,r0,4
	ld	 r4,r31,220
	or.u	 r9,r0,hi16(_itlb_access_fn)
	ld	 r7,r31,224
	or	 r13,r0,1
	or	 r9,r9,lo16(_itlb_access_fn)
	bsr.n	 _cache_create
	st	 r13,r31,32
	or.u	 r13,r0,hi16(_itlb)
	st	 r2,r13,lo16(_itlb)
@L199:
	or.u	 r25,r0,hi16(_dtlb_opt)
	or.u	 r3,r0,hi16(@LC196)
	ld	 r2,r25,lo16(_dtlb_opt)
	bsr.n	 _mystricmp
	or	 r3,r3,lo16(@LC196)
	bcnd.n	 ne0,r2,@L201
	addu	 r4,r31,88
	or.u	 r13,r0,hi16(_dtlb)
	br.n	 @L202
	st	 r0,r13,lo16(_dtlb)
	align	 4
@L201:
	ld	 r2,r25,lo16(_dtlb_opt)
	addu	 r5,r31,216
	addu	 r6,r31,220
	addu	 r7,r31,224
	or.u	 r3,r0,hi16(@LC197)
	addu	 r8,r31,228
	bsr.n	 _sscanf
	or	 r3,r3,lo16(@LC197)
	cmp	 r2,r2,5
	bb0.n	 ne,r2,@L203
	or.u	 r2,r0,hi16(@LC198)
	or	 r4,r0,993
	or.u	 r3,r0,hi16(@LC199)
	or.u	 r5,r0,hi16(@LC200)
	or	 r2,r2,lo16(@LC198)
	or	 r3,r3,lo16(@LC199)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC200)
	align	 4
@L203:
	bsr.n	 _cache_char2policy
	ld.b	 r2,r31,228
	or	 r8,r0,r2
	addu	 r2,r31,88
	or	 r5,r0,0
	ld	 r3,r31,216
	or	 r6,r0,4
	ld	 r4,r31,220
	or.u	 r9,r0,hi16(_dtlb_access_fn)
	ld	 r7,r31,224
	or	 r13,r0,1
	or	 r9,r9,lo16(_dtlb_access_fn)
	bsr.n	 _cache_create
	st	 r13,r31,32
	or.u	 r13,r0,hi16(_dtlb)
	st	 r2,r13,lo16(_dtlb)
@L202:
	or.u	 r13,r0,hi16(_cache_dl1_lat)
	ld	 r13,r13,lo16(_cache_dl1_lat)
	bcnd.n	 gt0,r13,@L204
	or.u	 r13,r0,hi16(_cache_dl2_lat)
	or.u	 r2,r0,hi16(@LC201)
	or	 r4,r0,1001
	or.u	 r3,r0,hi16(@LC202)
	or.u	 r5,r0,hi16(@LC203)
	or	 r2,r2,lo16(@LC201)
	or	 r3,r3,lo16(@LC202)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC203)
	align	 4
@L204:
	ld	 r13,r13,lo16(_cache_dl2_lat)
	bcnd.n	 gt0,r13,@L205
	or.u	 r13,r0,hi16(_cache_il1_lat)
	or.u	 r2,r0,hi16(@LC204)
	or	 r4,r0,1004
	or.u	 r3,r0,hi16(@LC205)
	or.u	 r5,r0,hi16(@LC206)
	or	 r2,r2,lo16(@LC204)
	or	 r3,r3,lo16(@LC205)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC206)
	align	 4
@L205:
	ld	 r13,r13,lo16(_cache_il1_lat)
	bcnd.n	 gt0,r13,@L206
	or.u	 r13,r0,hi16(_cache_il2_lat)
	or.u	 r2,r0,hi16(@LC207)
	or	 r4,r0,1007
	or.u	 r3,r0,hi16(@LC208)
	or.u	 r5,r0,hi16(@LC209)
	or	 r2,r2,lo16(@LC207)
	or	 r3,r3,lo16(@LC208)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC209)
	align	 4
@L206:
	ld	 r13,r13,lo16(_cache_il2_lat)
	bcnd.n	 gt0,r13,@L207
	or.u	 r13,r0,hi16(_mem_nelt)
	or.u	 r2,r0,hi16(@LC210)
	or	 r4,r0,1010
	or.u	 r3,r0,hi16(@LC211)
	or.u	 r5,r0,hi16(@LC212)
	or	 r2,r2,lo16(@LC210)
	or	 r3,r3,lo16(@LC211)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC212)
	align	 4
@L207:
	ld	 r13,r13,lo16(_mem_nelt)
	cmp	 r13,r13,2
	bb0.n	 ne,r13,@L208
	or.u	 r2,r0,hi16(@LC213)
	or	 r4,r0,1013
	or.u	 r3,r0,hi16(@LC214)
	or.u	 r5,r0,hi16(@LC215)
	or	 r2,r2,lo16(@LC213)
	or	 r3,r3,lo16(@LC214)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC215)
	align	 4
@L208:
	or.u	 r13,r0,hi16(_mem_lat)
	ld	 r12,r13,lo16(_mem_lat)
	bcnd.n	 le0,r12,@L210
	or	 r13,r13,lo16(_mem_lat)
	ld	 r13,r13,4
	bcnd.n	 gt0,r13,@L209
	or.u	 r13,r0,hi16(_mem_bus_width)
@L210:
	or.u	 r2,r0,hi16(@LC216)
	or	 r4,r0,1016
	or.u	 r3,r0,hi16(@LC217)
	or.u	 r5,r0,hi16(@LC218)
	or	 r2,r2,lo16(@LC216)
	or	 r3,r3,lo16(@LC217)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC218)
	align	 4
@L209:
	ld	 r12,r13,lo16(_mem_bus_width)
	bcnd.n	 le0,r12,@L212
	subu	 r13,r12,1
	and	 r13,r12,r13
	bcnd.n	 eq0,r13,@L211
	or.u	 r13,r0,hi16(_tlb_miss_lat)
@L212:
	or.u	 r2,r0,hi16(@LC219)
	or	 r4,r0,1019
	or.u	 r3,r0,hi16(@LC220)
	or.u	 r5,r0,hi16(@LC221)
	or	 r2,r2,lo16(@LC219)
	or	 r3,r3,lo16(@LC220)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC221)
	align	 4
@L211:
	ld	 r13,r13,lo16(_tlb_miss_lat)
	bcnd.n	 gt0,r13,@L213
	or.u	 r13,r0,hi16(_res_ialu)
	or.u	 r2,r0,hi16(@LC222)
	or	 r4,r0,1022
	or.u	 r3,r0,hi16(@LC223)
	or.u	 r5,r0,hi16(@LC224)
	or	 r2,r2,lo16(@LC222)
	or	 r3,r3,lo16(@LC223)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC224)
	align	 4
@L213:
	ld	 r11,r13,lo16(_res_ialu)
	bcnd.n	 gt0,r11,@L214
	cmp	 r13,r11,8
	or.u	 r2,r0,hi16(@LC225)
	or	 r4,r0,1025
	or.u	 r3,r0,hi16(@LC226)
	or.u	 r5,r0,hi16(@LC227)
	or	 r2,r2,lo16(@LC225)
	or	 r3,r3,lo16(@LC226)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC227)
	align	 4
@L214:
	bb0.n	 gt,r13,@L215
	or.u	 r13,r0,hi16(_res_imult)
	or.u	 r2,r0,hi16(@LC228)
	or	 r4,r0,1027
	or.u	 r3,r0,hi16(@LC229)
	or.u	 r5,r0,hi16(@LC230)
	or	 r2,r2,lo16(@LC228)
	or	 r3,r3,lo16(@LC229)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC230)
	align	 4
@L215:
	or.u	 r12,r0,hi16(_fu_config)
	ld	 r10,r13,lo16(_res_imult)
	or	 r12,r12,lo16(_fu_config)
	bcnd.n	 gt0,r10,@L216
	st	 r11,r12,4
	or.u	 r2,r0,hi16(@LC231)
	or	 r4,r0,1031
	or.u	 r3,r0,hi16(@LC232)
	or.u	 r5,r0,hi16(@LC233)
	or	 r2,r2,lo16(@LC231)
	or	 r3,r3,lo16(@LC232)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC233)
	align	 4
@L216:
	cmp	 r13,r10,8
	bb0.n	 gt,r13,@L217
	or.u	 r13,r0,hi16(_res_memport)
	or.u	 r2,r0,hi16(@LC234)
	or	 r4,r0,1033
	or.u	 r3,r0,hi16(@LC235)
	or.u	 r5,r0,hi16(@LC236)
	or	 r2,r2,lo16(@LC234)
	or	 r3,r3,lo16(@LC235)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC236)
	align	 4
@L217:
	ld	 r11,r13,lo16(_res_memport)
	bcnd.n	 gt0,r11,@L218
	st	 r10,r12,272
	or.u	 r2,r0,hi16(@LC237)
	or	 r4,r0,1037
	or.u	 r3,r0,hi16(@LC238)
	or.u	 r5,r0,hi16(@LC239)
	or	 r2,r2,lo16(@LC237)
	or	 r3,r3,lo16(@LC238)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC239)
	align	 4
@L218:
	cmp	 r13,r11,8
	bb0.n	 gt,r13,@L219
	or.u	 r13,r0,hi16(_res_fpalu)
	or.u	 r2,r0,hi16(@LC240)
	or	 r4,r0,1039
	or.u	 r3,r0,hi16(@LC241)
	or.u	 r5,r0,hi16(@LC242)
	or	 r2,r2,lo16(@LC240)
	or	 r3,r3,lo16(@LC241)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC242)
	align	 4
@L219:
	ld	 r10,r13,lo16(_res_fpalu)
	bcnd.n	 gt0,r10,@L220
	st	 r11,r12,540
	or.u	 r2,r0,hi16(@LC243)
	or	 r4,r0,1043
	or.u	 r3,r0,hi16(@LC244)
	or.u	 r5,r0,hi16(@LC245)
	or	 r2,r2,lo16(@LC243)
	or	 r3,r3,lo16(@LC244)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC245)
	align	 4
@L220:
	cmp	 r13,r10,8
	bb0.n	 gt,r13,@L221
	or.u	 r13,r0,hi16(_res_fpmult)
	or.u	 r2,r0,hi16(@LC246)
	or	 r4,r0,1045
	or.u	 r3,r0,hi16(@LC247)
	or.u	 r5,r0,hi16(@LC248)
	or	 r2,r2,lo16(@LC246)
	or	 r3,r3,lo16(@LC247)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC248)
	align	 4
@L221:
	ld	 r11,r13,lo16(_res_fpmult)
	bcnd.n	 gt0,r11,@L222
	st	 r10,r12,808
	or.u	 r2,r0,hi16(@LC249)
	or	 r4,r0,1049
	or.u	 r3,r0,hi16(@LC250)
	or.u	 r5,r0,hi16(@LC251)
	or	 r2,r2,lo16(@LC249)
	or	 r3,r3,lo16(@LC250)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC251)
	align	 4
@L222:
	cmp	 r13,r11,8
	bb0.n	 gt,r13,@L223
	or.u	 r2,r0,hi16(@LC252)
	or	 r4,r0,1051
	or.u	 r3,r0,hi16(@LC253)
	or.u	 r5,r0,hi16(@LC254)
	or	 r2,r2,lo16(@LC252)
	or	 r3,r3,lo16(@LC253)
	bsr.n	 __fatal
	or	 r5,r5,lo16(@LC254)
	align	 4
@L223:
	st	 r11,r12,1076
@Lte1:
	ld	 r1,r31,80
	ld	 r21,r31,60
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	jmp.n	 r1
	addu	 r31,r31,240

	align	 8
	global	 _sim_aux_config
_sim_aux_config:
@Ltb2:
@Lte2:
	jmp	 r1

