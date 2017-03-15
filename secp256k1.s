	.file	"secp256k1.c"
# GNU C89 (GCC) version 6.3.1 20170306 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 6.3.1 20170306, GMP version 6.1.2, MPFR version 3.1.5-p2, MPC version 1.0.3, isl version 0.15
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I ../include -MD secp256k1.d
# -MF .deps/libsecp256k1_la-secp256k1.Tpo -MP
# -MT libsecp256k1_la-secp256k1.lo -D HAVE_CONFIG_H -D SECP256K1_BUILD
# secp256k1.c -mtune=generic -march=x86-64 -O3 -Wpedantic -Wall -Wextra
# -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes
# -Wno-unused-function -Wno-long-long -Wno-overlength-strings -std=c90
# -fverbose-asm -fvisibility=hidden
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
# -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
# -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-alignment -fipa-cp-clone
# -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-paths -fsplit-wide-types -fssa-backprop
# -fssa-phiopt -fstdarg-opt -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
# -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.p2align 4,,15
	.type	secp256k1_fe_mul_inner, @function
secp256k1_fe_mul_inner:
.LFB66:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx	# b, b
#APP
# 28 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq 0(%rbx),%rax
mulq %r13
movq %rax,%rcx
movq %rdx,%r15
movq 8(%rbx),%rax
mulq %r12
addq %rax,%rcx
adcq %rdx,%r15
movq 16(%rbx),%rax
mulq %r11
addq %rax,%rcx
adcq %rdx,%r15
movq 24(%rbx),%rax
mulq %r10
addq %rax,%rcx
adcq %rdx,%r15
movq 32(%rbx),%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rcx
adcq %rdx,%r15
shrdq $52,%r9,%r8
movq %rcx,%rsi
movq $0xfffffffffffff,%rdx
andq %rdx,%rsi
movq %rsi,-24(%rsp)	# tmp1
shrdq $52,%r15,%rcx
xorq %r15,%r15
movq 0(%rbx),%rax
mulq %r14
addq %rax,%rcx
adcq %rdx,%r15
movq 8(%rbx),%rax
mulq %r13
addq %rax,%rcx
adcq %rdx,%r15
movq 16(%rbx),%rax
mulq %r12
addq %rax,%rcx
adcq %rdx,%r15
movq 24(%rbx),%rax
mulq %r11
addq %rax,%rcx
adcq %rdx,%r15
movq 32(%rbx),%rax
mulq %r10
addq %rax,%rcx
adcq %rdx,%r15
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rcx
adcq %rdx,%r15
movq %rcx,%rsi
movq $0xfffffffffffff,%rdx
andq %rdx,%rsi
shrdq $52,%r15,%rcx
xorq %r15,%r15
movq %rsi,%rax
shrq $48,%rax
movq %rax,-8(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,-16(%rsp)	# tmp2
movq 0(%rbx),%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq 8(%rbx),%rax
mulq %r14
addq %rax,%rcx
adcq %rdx,%r15
movq 16(%rbx),%rax
mulq %r13
addq %rax,%rcx
adcq %rdx,%r15
movq 24(%rbx),%rax
mulq %r12
addq %rax,%rcx
adcq %rdx,%r15
movq 32(%rbx),%rax
mulq %r11
addq %rax,%rcx
adcq %rdx,%r15
movq %rcx,%rsi
movq $0xfffffffffffff,%rdx
andq %rdx,%rsi
shrdq $52,%r15,%rcx
xorq %r15,%r15
shlq $4,%rsi
movq -8(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq 0(%rbx),%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq 8(%rbx),%rax
mulq %r10
addq %rax,%r8
adcq %rdx,%r9
movq 16(%rbx),%rax
mulq %r14
addq %rax,%rcx
adcq %rdx,%r15
movq 24(%rbx),%rax
mulq %r13
addq %rax,%rcx
adcq %rdx,%r15
movq 32(%rbx),%rax
mulq %r12
addq %rax,%rcx
adcq %rdx,%r15
movq %rcx,%rax
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%r15,%rcx
xorq %r15,%r15
movq %r8,%rax
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq 0(%rbx),%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 8(%rbx),%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq 16(%rbx),%rax
mulq %r10
addq %rax,%r8
adcq %rdx,%r9
movq -16(%rsp),%rsi	# tmp2
movq -24(%rsp),%r10	# tmp1
movq 24(%rbx),%rax
mulq %r14
addq %rax,%rcx
adcq %rdx,%r15
movq 32(%rbx),%rax
mulq %r13
addq %rax,%rcx
adcq %rdx,%r15
movq %rcx,%rax
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%r15,%rcx
movq %r8,%rax
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rcx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
movq $0xfffffffffffff,%rdx
andq %rdx,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	secp256k1_fe_mul_inner, .-secp256k1_fe_mul_inner
	.p2align 4,,15
	.type	secp256k1_fe_sqr_inner, @function
secp256k1_fe_sqr_inner:
.LFB67:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,-24(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,-8(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,-16(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq -8(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq -16(%rsp),%rsi	# tmp2
movq -24(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE67:
	.size	secp256k1_fe_sqr_inner, .-secp256k1_fe_sqr_inner
	.p2align 4,,15
	.type	secp256k1_fe_normalize, @function
secp256k1_fe_normalize:
.LFB68:
	.cfi_startproc
	movq	32(%rdi), %rax	# r_2(D)->n, t4
	movabsq	$4294968273, %r10	#, tmp137
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movabsq	$4503599627370495, %rcx	#, tmp139
	movabsq	$281474976710655, %rsi	#, tmp134
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rax, %r9	# t4, t4
	shrq	$48, %rax	#, x
	imulq	%r10, %rax	# tmp137, tmp136
	andq	%rsi, %r9	# tmp134, t4
	addq	(%rdi), %rax	# r_2(D)->n, t0
	movq	%rax, %r8	# t0, tmp138
	andq	%rcx, %rax	# tmp139, t0
	shrq	$52, %r8	#, tmp138
	addq	8(%rdi), %r8	# r_2(D)->n, t1
	movq	%r8, %rdx	# t1, tmp140
	andq	%rcx, %r8	# tmp139, t1
	shrq	$52, %rdx	#, tmp140
	addq	16(%rdi), %rdx	# r_2(D)->n, t2
	movq	%rdx, %rbp	# t2, tmp142
	movq	%rdx, %rbx	# t2, t2
	andq	%r8, %rdx	# t1, tmp146
	shrq	$52, %rbp	#, tmp142
	addq	24(%rdi), %rbp	# r_2(D)->n, t3
	andq	%rcx, %rbx	# tmp139, t2
	movq	%rbp, %r11	# t3, tmp144
	andq	%rbp, %rdx	# t3, m
	shrq	$52, %r11	#, tmp144
	addq	%r11, %r9	# tmp144, t4
	movq	%rbp, %r11	# t3, t3
	movabsq	$4503595332402222, %rbp	#, tmp152
	andq	%rcx, %r11	# tmp139, t3
	cmpq	%rcx, %rdx	# tmp139, m
	sete	%dl	#, tmp150
	cmpq	%rbp, %rax	# tmp152, t0
	seta	%bpl	#, tmp153
	andl	%edx, %ebp	# tmp150, tmp154
	xorl	%edx, %edx	# tmp158
	cmpq	%rsi, %r9	# tmp134, t4
	sete	%dl	#, tmp158
	andq	%rbp, %rdx	# tmp154, tmp159
	movq	%r9, %rbp	# t4, tmp160
	shrq	$48, %rbp	#, tmp160
	orq	%rbp, %rdx	# tmp160, x
	imulq	%r10, %rdx	# tmp137, _33
	addq	%rdx, %rax	# _33, t0
	movq	%rax, %rdx	# t0, tmp163
	andq	%rcx, %rax	# tmp139, tmp168
	shrq	$52, %rdx	#, tmp163
	movq	%rax, (%rdi)	# tmp168, r_2(D)->n
	addq	%rdx, %r8	# tmp163, t1
	movq	%r8, %rdx	# t1, tmp164
	andq	%rcx, %r8	# tmp139, tmp170
	shrq	$52, %rdx	#, tmp164
	movq	%r8, 8(%rdi)	# tmp170, r_2(D)->n
	addq	%rdx, %rbx	# tmp164, t2
	movq	%rbx, %rdx	# t2, tmp165
	andq	%rcx, %rbx	# tmp139, tmp172
	shrq	$52, %rdx	#, tmp165
	movq	%rbx, 16(%rdi)	# tmp172, r_2(D)->n
	addq	%rdx, %r11	# tmp165, t3
	movq	%r11, %rdx	# t3, tmp166
	andq	%rcx, %r11	# tmp139, tmp174
	shrq	$52, %rdx	#, tmp166
	movq	%r11, 24(%rdi)	# tmp174, r_2(D)->n
	addq	%rdx, %r9	# tmp166, t4
	andq	%r9, %rsi	# t4, tmp176
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movq	%rsi, 32(%rdi)	# tmp176, r_2(D)->n
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	secp256k1_fe_normalize, .-secp256k1_fe_normalize
	.p2align 4,,15
	.type	secp256k1_fe_normalize_weak, @function
secp256k1_fe_normalize_weak:
.LFB69:
	.cfi_startproc
	movq	32(%rdi), %rax	# r_2(D)->n, t4
	movabsq	$281474976710655, %rdx	#, tmp109
	movabsq	$4503599627370495, %rcx	#, tmp116
	andq	%rax, %rdx	# t4, tmp109
	shrq	$48, %rax	#, x
	movq	%rdx, %r8	# tmp109, t4
	movabsq	$4294968273, %rdx	#, tmp112
	imulq	%rdx, %rax	# tmp112, tmp111
	addq	(%rdi), %rax	# r_2(D)->n, t0
	movq	%rax, %r9	# t0, tmp113
	andq	%rcx, %rax	# tmp116, tmp117
	shrq	$52, %r9	#, tmp113
	addq	8(%rdi), %r9	# r_2(D)->n, t1
	movq	%rax, (%rdi)	# tmp117, r_2(D)->n
	movq	%r9, %rsi	# t1, tmp114
	andq	%rcx, %r9	# tmp116, tmp119
	shrq	$52, %rsi	#, tmp114
	addq	16(%rdi), %rsi	# r_2(D)->n, t2
	movq	%r9, 8(%rdi)	# tmp119, r_2(D)->n
	movq	%rsi, %rdx	# t2, tmp115
	andq	%rcx, %rsi	# tmp116, tmp121
	shrq	$52, %rdx	#, tmp115
	addq	24(%rdi), %rdx	# r_2(D)->n, t3
	movq	%rsi, 16(%rdi)	# tmp121, r_2(D)->n
	andq	%rdx, %rcx	# t3, tmp123
	shrq	$52, %rdx	#, tmp124
	addq	%r8, %rdx	# t4, tmp125
	movq	%rcx, 24(%rdi)	# tmp123, r_2(D)->n
	movq	%rdx, 32(%rdi)	# tmp125, r_2(D)->n
	ret
	.cfi_endproc
.LFE69:
	.size	secp256k1_fe_normalize_weak, .-secp256k1_fe_normalize_weak
	.p2align 4,,15
	.type	secp256k1_fe_normalize_var, @function
secp256k1_fe_normalize_var:
.LFB70:
	.cfi_startproc
	movq	32(%rdi), %rax	# r_7(D)->n, t4
	movabsq	$4294968273, %r11	#, tmp131
	movabsq	$4503599627370495, %rsi	#, tmp133
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movabsq	$281474976710655, %r10	#, tmp128
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rax, %r8	# t4, t4
	shrq	$48, %rax	#, x
	imulq	%r11, %rax	# tmp131, tmp130
	andq	%r10, %r8	# tmp128, t4
	addq	(%rdi), %rax	# r_7(D)->n, t0
	movq	%rax, %rcx	# t0, tmp132
	andq	%rsi, %rax	# tmp133, t0
	shrq	$52, %rcx	#, tmp132
	addq	8(%rdi), %rcx	# r_7(D)->n, t1
	movq	%rcx, %rdx	# t1, tmp134
	andq	%rsi, %rcx	# tmp133, t1
	shrq	$52, %rdx	#, tmp134
	addq	16(%rdi), %rdx	# r_7(D)->n, t2
	movq	%rdx, %r9	# t2, tmp136
	movq	%rdx, %rbx	# t2, t2
	andq	%rcx, %rdx	# t1, tmp140
	shrq	$52, %r9	#, tmp136
	addq	24(%rdi), %r9	# r_7(D)->n, t3
	andq	%rsi, %rbx	# tmp133, t2
	movq	%r9, %rbp	# t3, tmp138
	andq	%r9, %rdx	# t3, m
	shrq	$52, %rbp	#, tmp138
	addq	%rbp, %r8	# tmp138, t4
	movq	%r9, %rbp	# t3, t3
	movabsq	$4503595332402222, %r9	#, tmp146
	andq	%rsi, %rbp	# tmp133, t3
	cmpq	%rsi, %rdx	# tmp133, m
	sete	%dl	#, tmp144
	cmpq	%r9, %rax	# tmp146, t0
	seta	%r9b	#, tmp147
	andl	%edx, %r9d	# tmp144, tmp148
	xorl	%edx, %edx	# tmp152
	cmpq	%r10, %r8	# tmp128, t4
	sete	%dl	#, tmp152
	andq	%r9, %rdx	# tmp148, tmp153
	movq	%r8, %r9	# t4, tmp154
	shrq	$48, %r9	#, tmp154
	orq	%r9, %rdx	# tmp154, tmp153
	je	.L9	#,
	addq	%r11, %rax	# tmp131, t0
	movq	%rax, %rdx	# t0, tmp157
	andq	%rsi, %rax	# tmp133, t0
	shrq	$52, %rdx	#, tmp157
	addq	%rdx, %rcx	# tmp157, t1
	movq	%rcx, %rdx	# t1, tmp159
	andq	%rsi, %rcx	# tmp133, t1
	shrq	$52, %rdx	#, tmp159
	addq	%rdx, %rbx	# tmp159, t2
	movq	%rbx, %rdx	# t2, tmp161
	andq	%rsi, %rbx	# tmp133, t2
	shrq	$52, %rdx	#, tmp161
	addq	%rdx, %rbp	# tmp161, t3
	movq	%rbp, %rdx	# t3, tmp163
	andq	%rsi, %rbp	# tmp133, t3
	shrq	$52, %rdx	#, tmp163
	addq	%rdx, %r8	# tmp163, t4
	andq	%r10, %r8	# tmp128, t4
.L9:
	movq	%rbx, 16(%rdi)	# t2, r_7(D)->n
	movq	%rbp, 24(%rdi)	# t3, r_7(D)->n
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movq	%rax, (%rdi)	# t0, r_7(D)->n
	movq	%rcx, 8(%rdi)	# t1, r_7(D)->n
	movq	%r8, 32(%rdi)	# t4, r_7(D)->n
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE70:
	.size	secp256k1_fe_normalize_var, .-secp256k1_fe_normalize_var
	.p2align 4,,15
	.type	secp256k1_fe_normalizes_to_zero_var, @function
secp256k1_fe_normalizes_to_zero_var:
.LFB72:
	.cfi_startproc
	movq	32(%rdi), %rsi	# r_3(D)->n, t4
	movabsq	$4294968273, %rax	#, tmp126
	movq	%rsi, %rdx	# t4, x
	shrq	$48, %rdx	#, x
	imulq	%rax, %rdx	# tmp126, tmp125
	movabsq	$4503599627370495, %rax	#, tmp127
	addq	(%rdi), %rdx	# r_3(D)->n, t0
	andq	%rdx, %rax	# t0, z0
	je	.L19	#,
	movabsq	$4503595332402223, %r8	#, tmp131
	xorl	%ecx, %ecx	# _40
	cmpq	%r8, %rax	# tmp131, z0
	je	.L19	#,
	movzbl	%cl, %eax	# _40, _40
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movq	%rdx, %r9	# t0, tmp134
	movabsq	$281474976710655, %rcx	#, tmp133
	movabsq	$4294968272, %r10	#, tmp143
	shrq	$52, %r9	#, tmp134
	addq	8(%rdi), %r9	# r_3(D)->n, t1
	andq	%rcx, %rsi	# tmp133, t4
	xorq	%r10, %rax	# tmp143, z1
	movq	%r9, %r8	# t1, tmp135
	orq	%r9, %rdx	# t1, tmp138
	andq	%r9, %rax	# t1, tmp144
	shrq	$52, %r8	#, tmp135
	addq	16(%rdi), %r8	# r_3(D)->n, t2
	movq	%r8, %rcx	# t2, tmp136
	andq	%r8, %rax	# t2, _41
	orq	%r8, %rdx	# t2, tmp139
	shrq	$52, %rcx	#, tmp136
	addq	24(%rdi), %rcx	# r_3(D)->n, t3
	movq	%rcx, %rdi	# t3, tmp137
	orq	%rcx, %rdx	# t3, tmp140
	andq	%rax, %rcx	# _41, z1
	shrq	$52, %rdi	#, tmp137
	movabsq	$4222124650659840, %rax	#, tmp146
	addq	%rdi, %rsi	# tmp137, t4
	movabsq	$4503599627370495, %rdi	#, tmp141
	xorq	%rsi, %rax	# t4, tmp145
	andq	%rdi, %rdx	# tmp141, z0
	andq	%rcx, %rax	# z1, z1
	cmpq	%rdi, %rax	# tmp141, z1
	sete	%cl	#, tmp150
	orq	%rdx, %rsi	# z0, t4
	sete	%al	#, tmp153
	orl	%eax, %ecx	# tmp153, _40
	movzbl	%cl, %eax	# _40, _40
	ret
	.cfi_endproc
.LFE72:
	.size	secp256k1_fe_normalizes_to_zero_var, .-secp256k1_fe_normalizes_to_zero_var
	.p2align 4,,15
	.type	secp256k1_fe_set_b32, @function
secp256k1_fe_set_b32:
.LFB78:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	$0, 32(%rdi)	#, r_7(D)->n
	movl	$1, %r10d	#, ivtmp.248
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	$0, 24(%rdi)	#, r_7(D)->n
	leaq	31(%rsi), %rbx	#, ivtmp.244
	movq	$0, 16(%rdi)	#, r_7(D)->n
	movq	$0, 8(%rdi)	#, r_7(D)->n
	xorl	%r9d, %r9d	# ivtmp.240
	movq	$0, (%rdi)	#, r_7(D)->n
	xorl	%ebp, %ebp	# pretmp_27
	movl	$1321528399, %r11d	#, tmp303
	jmp	.L25	#
	.p2align 4,,10
	.p2align 3
.L30:
	movl	%r9d, %eax	# ivtmp.240, tmp358
	imull	%r11d	# tmp303
	movl	%r9d, %eax	# ivtmp.240, tmp343
	sarl	$31, %eax	#, tmp343
	sarl	$2, %edx	#, tmp342
	subl	%eax, %edx	# tmp343, tmp339
	movslq	%edx, %rdx	# tmp339, tmp344
	movq	(%rdi,%rdx,8), %rbp	# r_7(D)->n, pretmp_27
.L25:
	movl	%r9d, %eax	# ivtmp.240, tmp354
	leal	0(,%r9,4), %ecx	#, tmp310
	movzbl	(%rbx), %r8d	# MEM[base: _55, offset: 0B], MEM[base: _55, offset: 0B]
	imull	%r11d	# tmp303
	movl	%r9d, %eax	# ivtmp.240, tmp305
	addl	$2, %r9d	#, ivtmp.240
	sarl	$31, %eax	#, tmp305
	subq	$1, %rbx	#, ivtmp.244
	sarl	$2, %edx	#, tmp304
	andl	$15, %r8d	#, tmp309
	subl	%eax, %edx	# tmp305, limb
	movl	%ecx, %eax	# tmp310, tmp355
	movslq	%edx, %rsi	# limb, limb
	imull	%r11d	# tmp303
	movl	%ecx, %eax	# tmp310, tmp315
	sarl	$31, %eax	#, tmp315
	sarl	$4, %edx	#, tmp314
	subl	%eax, %edx	# tmp315, tmp311
	movl	%r10d, %eax	# ivtmp.248, tmp356
	imull	$52, %edx, %edx	#, tmp311, tmp316
	subl	%edx, %ecx	# tmp316, shift
	imull	%r11d	# tmp303
	salq	%cl, %r8	# shift, tmp318
	movl	%r10d, %eax	# ivtmp.248, tmp324
	leal	0(,%r10,4), %ecx	#, tmp330
	sarl	$31, %eax	#, tmp324
	orq	%rbp, %r8	# pretmp_27, tmp319
	movq	%r8, (%rdi,%rsi,8)	# tmp319, r_7(D)->n
	movzbl	1(%rbx), %r8d	# MEM[base: _55, offset: 0B], tmp327
	addl	$2, %r10d	#, ivtmp.248
	sarl	$2, %edx	#, tmp323
	subl	%eax, %edx	# tmp324, limb
	movl	%ecx, %eax	# tmp330, tmp357
	movslq	%edx, %rsi	# limb, limb
	imull	%r11d	# tmp303
	movl	%ecx, %eax	# tmp330, tmp335
	shrb	$4, %r8b	#, tmp327
	sarl	$31, %eax	#, tmp335
	movzbl	%r8b, %r8d	# tmp327, tmp329
	sarl	$4, %edx	#, tmp334
	subl	%eax, %edx	# tmp335, tmp331
	imull	$52, %edx, %edx	#, tmp331, tmp336
	subl	%edx, %ecx	# tmp336, shift
	salq	%cl, %r8	# shift, tmp338
	orq	%r8, (%rdi,%rsi,8)	# tmp338, MEM[(struct secp256k1_fe *)_52]
	cmpl	$64, %r9d	#, ivtmp.240
	jne	.L30	#,
	movabsq	$281474976710655, %rdx	#, tmp345
	cmpq	%rdx, 32(%rdi)	# tmp345, r_7(D)->n
	movl	$1, %eax	#, <retval>
	je	.L31	#,
.L23:
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	movq	24(%rdi), %rdx	# r_7(D)->n, r_7(D)->n
	andq	16(%rdi), %rdx	# r_7(D)->n, tmp346
	movabsq	$4503599627370495, %rcx	#, tmp349
	andq	8(%rdi), %rdx	# r_7(D)->n, tmp348
	cmpq	%rcx, %rdx	# tmp349, tmp348
	jne	.L23	#,
	movabsq	$4503595332402222, %rax	#, tmp351
	cmpq	%rax, (%rdi)	# tmp351, r_7(D)->n
	setbe	%al	#, <retval>
	movzbl	%al, %eax	# <retval>, <retval>
	jmp	.L23	#
	.cfi_endproc
.LFE78:
	.size	secp256k1_fe_set_b32, .-secp256k1_fe_set_b32
	.p2align 4,,15
	.type	secp256k1_scalar_add, @function
secp256k1_scalar_add:
.LFB101:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r8	# r, r
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %rdi	# b, b
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdx), %rax	# b_5(D)->d, b_5(D)->d
	xorl	%ebx, %ebx	# a_2(D)->d
	movq	(%rsi), %rcx	# a_2(D)->d, a_2(D)->d
	movq	8(%rdi), %r9	# b_5(D)->d, b_5(D)->d
	xorl	%edx, %edx	# b_5(D)->d
	movq	16(%rdi), %r11	# b_5(D)->d, b_5(D)->d
	addq	%rax, %rcx	# b_5(D)->d, t
	movq	8(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	adcq	%rdx, %rbx	# b_5(D)->d, t
	xorl	%r12d, %r12d	# t
	xorl	%edx, %edx	# a_2(D)->d
	xorl	%r10d, %r10d	# b_5(D)->d
	addq	%rax, %r9	# a_2(D)->d, tmp176
	movq	16(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	adcq	%rdx, %r10	# a_2(D)->d,
	addq	%rbx, %r9	# t, t
	adcq	%r12, %r10	# t, t
	xorl	%r12d, %r12d	# b_5(D)->d
	xorl	%r14d, %r14d	# t
	movq	%r10, %r13	# t, t
	xorl	%edx, %edx	# a_2(D)->d
	addq	%r11, %rax	# b_5(D)->d, tmp181
	adcq	%r12, %rdx	# b_5(D)->d,
	movq	24(%rdi), %r11	# b_5(D)->d, b_5(D)->d
	addq	%rax, %r13	# tmp181, t
	movq	24(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	adcq	%rdx, %r14	#, t
	xorl	%edx, %edx	# t
	movq	%rdx, %r15	# t, t
	xorl	%r12d, %r12d	# b_5(D)->d
	xorl	%edx, %edx	# a_2(D)->d
	movabsq	$-4994812053365940165, %rdi	#, tmp192
	addq	%r11, %rax	# b_5(D)->d, tmp186
	adcq	%r12, %rdx	# b_5(D)->d,
	addq	%r14, %rax	# t, t
	adcq	%r15, %rdx	# t, t
	cmpq	$-1, %rax	#, t
	setne	%r14b	#, tmp188
	cmpq	$-3, %r13	#, _26
	setbe	%sil	#, tmp190
	orl	%r14d, %esi	# tmp188, _65
	cmpq	%rdi, %r9	# tmp192, _18
	movabsq	$-4624529908474429120, %rdi	#, tmp195
	seta	%r14b	#, tmp193
	cmpq	%rdi, %rcx	# tmp195, t
	seta	%dil	#, tmp196
	orl	%edi, %r14d	# tmp196, tmp197
	movabsq	$-4994812053365940166, %rdi	#, tmp200
	cmpq	%rdi, %r9	# tmp200, _18
	movzbl	%r14b, %r14d	# tmp197, tmp198
	setbe	%dil	#, tmp201
	orl	%esi, %edi	# _65, tmp202
	movzbl	%sil, %esi	# _65, no
	movzbl	%dil, %edi	# tmp202, no
	notl	%esi	# tmp209
	notl	%edi	# tmp204
	andl	%edi, %r14d	# tmp204, tmp205
	xorl	%edi, %edi	# tmp206
	cmpq	$-1, %r13	#, _26
	sete	%dil	#, tmp206
	xorl	%r12d, %r12d	#
	andl	%edi, %esi	# tmp206, tmp210
	xorl	%edi, %edi	# t
	orl	%esi, %r14d	# tmp210, yes
	movabsq	$4624529908474429119, %rsi	#, tmp214
	addl	%r14d, %edx	# yes,
	imulq	%rdx, %rsi	# _41, tmp214
	movq	%rsi, %r11	# tmp214, tmp215
	movabsq	$4994812053365940164, %rsi	#, tmp218
	addq	%rcx, %r11	# t, tmp215
	adcq	%rdi, %r12	# t,
	movq	%r11, -16(%rsp)	# t, %sfp
	xorl	%edi, %edi	# t
	imulq	%rdx, %rsi	# _41, tmp218
	movq	%r12, -8(%rsp)	# t, %sfp
	movq	%r12, %r11	# t, t
	xorl	%ebx, %ebx	#
	xorl	%r12d, %r12d	# t
	movq	-16(%rsp), %xmm0	# %sfp, tmp226
	movq	%rsi, %rcx	# tmp218, tmp219
	addq	%r9, %rcx	# t, tmp221
	adcq	%rdi, %rbx	# t,
	addq	%rcx, %r11	# tmp221, t
	movq	%r13, %rcx	# t, t
	adcq	%rbx, %r12	#, t
	xorl	%edi, %edi	# t
	xorl	%ebx, %ebx	# t
	movq	%r12, %rsi	# t, t
	xorl	%r10d, %r10d	# _38
	addq	%rdx, %rcx	# _38, tmp225
	adcq	%r10, %rbx	# _38,
	addq	%rcx, %rsi	# tmp225, t
	movq	%r11, -16(%rsp)	# t, %sfp
	adcq	%rbx, %rdi	#, t
	movhps	-16(%rsp), %xmm0	# %sfp, tmp226
	movq	%rsi, -16(%rsp)	# t, %sfp
	movq	%rdi, %rcx	# t, t
	addq	%rax, %rcx	# t, t
	movl	%edx, %eax	# _38,
	movaps	%xmm0, (%r8)	# tmp226, MEM[(long unsigned int *)r_10(D)]
	movq	-16(%rsp), %xmm0	# %sfp, tmp227
	movq	%rcx, -16(%rsp)	# t, %sfp
	movhps	-16(%rsp), %xmm0	# %sfp, tmp227
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	movaps	%xmm0, 16(%r8)	# tmp227, MEM[(long unsigned int *)r_10(D) + 16B]
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	secp256k1_scalar_add, .-secp256k1_scalar_add
	.p2align 4,,15
	.type	secp256k1_scalar_set_b32, @function
secp256k1_scalar_set_b32:
.LFB103:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %rcx	# r, r
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbp	# overflow, overflow
	movq	24(%rsi), %r9	# MEM[(const unsigned char *)b32_2(D) + 24B], MEM[(const unsigned char *)b32_2(D) + 24B]
	movabsq	$-4994812053365940165, %rdx	#, tmp172
	bswap	%r9	# _33
	movq	%r9, (%rdi)	# _33, r_34(D)->d
	movq	16(%rsi), %r11	# MEM[(const unsigned char *)b32_2(D) + 16B], MEM[(const unsigned char *)b32_2(D) + 16B]
	bswap	%r11	# _65
	movq	%r11, 8(%rdi)	# _65, r_34(D)->d
	movq	8(%rsi), %r8	# MEM[(const unsigned char *)b32_2(D) + 8B], MEM[(const unsigned char *)b32_2(D) + 8B]
	bswap	%r8	# _96
	movq	%r8, 16(%rdi)	# _96, r_34(D)->d
	movq	(%rsi), %r12	# MEM[(const unsigned char *)b32_2(D)], MEM[(const unsigned char *)b32_2(D)]
	bswap	%r12	# _127
	cmpq	$-1, %r12	#, _127
	setne	%r13b	#, tmp168
	cmpq	$-3, %r8	#, _96
	setbe	%al	#, tmp170
	orl	%r13d, %eax	# tmp168, _156
	cmpq	%rdx, %r11	# tmp172, _65
	movabsq	$-4624529908474429120, %rdx	#, tmp175
	seta	%r13b	#, tmp173
	cmpq	%rdx, %r9	# tmp175, _33
	seta	%dl	#, tmp176
	orl	%edx, %r13d	# tmp176, tmp177
	movabsq	$-4994812053365940166, %rdx	#, tmp180
	cmpq	%rdx, %r11	# tmp180, _65
	movzbl	%r13b, %r13d	# tmp177, tmp178
	setbe	%dl	#, tmp181
	orl	%eax, %edx	# _156, tmp182
	movzbl	%al, %eax	# _156, no
	movzbl	%dl, %edx	# tmp182, no
	notl	%eax	# tmp189
	notl	%edx	# tmp184
	andl	%edx, %r13d	# tmp184, tmp185
	xorl	%edx, %edx	# tmp186
	cmpq	$-1, %r8	#, _96
	sete	%dl	#, tmp186
	xorl	%edi, %edi	#
	andl	%edx, %eax	# tmp186, tmp190
	xorl	%edx, %edx	# _33
	orl	%eax, %r13d	# tmp190, yes
	movabsq	$4624529908474429119, %rax	#, tmp192
	movslq	%r13d, %rbx	# yes, _132
	imulq	%rbx, %rax	# _132, tmp192
	movq	%rax, %rsi	# tmp192, tmp193
	movabsq	$4994812053365940164, %rax	#, tmp196
	addq	%r9, %rsi	# _33, t
	adcq	%rdx, %rdi	# _33, t
	movq	%rsi, (%rcx)	# t, r_34(D)->d
	xorl	%edx, %edx	# _65
	imulq	%rbx, %rax	# _132, tmp196
	movq	%rdi, %rsi	# t, t
	xorl	%edi, %edi	# t
	movq	%rsi, %r9	# t, t
	movq	%rdi, %r10	# t, t
	xorl	%edi, %edi	#
	movq	%rax, %rsi	# tmp196, tmp197
	movq	%r8, %rax	# _96, _96
	addq	%r11, %rsi	# _65, tmp199
	adcq	%rdx, %rdi	# _65,
	addq	%r9, %rsi	# t, t
	movq	%rbx, %r9	# _132, yes
	adcq	%r10, %rdi	# t, t
	movq	%rsi, 8(%rcx)	# t, r_34(D)->d
	xorl	%edx, %edx	# _96
	movq	%rdi, %rsi	# t, t
	sarq	$63, %rbx	#, _132
	xorl	%edi, %edi	# t
	addq	%r9, %rax	# yes, tmp204
	adcq	%rbx, %rdx	# yes,
	addq	%rax, %rsi	# tmp204, t
	adcq	%rdx, %rdi	#, t
	movq	%rsi, 16(%rcx)	# t, r_34(D)->d
	movq	%rdi, %rsi	# t, t
	addq	%r12, %rsi	# _127, t
	testq	%rbp, %rbp	# overflow
	movq	%rsi, 24(%rcx)	# t, r_34(D)->d
	je	.L34	#,
	movl	%r13d, 0(%rbp)	# yes, *overflow_129(D)
.L34:
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	secp256k1_scalar_set_b32, .-secp256k1_scalar_set_b32
	.p2align 4,,15
	.type	secp256k1_scalar_get_b32, @function
secp256k1_scalar_get_b32:
.LFB104:
	.cfi_startproc
	movzbl	31(%rsi), %eax	# a_2(D)->d, tmp181
	movb	%al, (%rdi)	# tmp181, *bin_6(D)
	movzwl	30(%rsi), %eax	# a_2(D)->d, tmp183
	movb	%al, 1(%rdi)	# tmp183, MEM[(unsigned char *)bin_6(D) + 1B]
	movq	24(%rsi), %rax	# a_2(D)->d, tmp185
	shrq	$40, %rax	#, tmp185
	movb	%al, 2(%rdi)	# tmp185, MEM[(unsigned char *)bin_6(D) + 2B]
	movl	28(%rsi), %eax	# a_2(D)->d, tmp187
	movb	%al, 3(%rdi)	# tmp187, MEM[(unsigned char *)bin_6(D) + 3B]
	movq	24(%rsi), %rax	# a_2(D)->d, tmp189
	shrq	$24, %rax	#, tmp189
	movb	%al, 4(%rdi)	# tmp189, MEM[(unsigned char *)bin_6(D) + 4B]
	movq	24(%rsi), %rax	# a_2(D)->d, tmp191
	shrq	$16, %rax	#, tmp191
	movb	%al, 5(%rdi)	# tmp191, MEM[(unsigned char *)bin_6(D) + 5B]
	movq	24(%rsi), %rax	# a_2(D)->d, tmp193
	shrq	$8, %rax	#, tmp193
	movb	%al, 6(%rdi)	# tmp193, MEM[(unsigned char *)bin_6(D) + 6B]
	movq	24(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	movb	%al, 7(%rdi)	# a_2(D)->d, MEM[(unsigned char *)bin_6(D) + 7B]
	movzbl	23(%rsi), %eax	# a_2(D)->d, tmp196
	movb	%al, 8(%rdi)	# tmp196, MEM[(unsigned char *)bin_6(D) + 8B]
	movzwl	22(%rsi), %eax	# a_2(D)->d, tmp198
	movb	%al, 9(%rdi)	# tmp198, MEM[(unsigned char *)bin_6(D) + 9B]
	movq	16(%rsi), %rax	# a_2(D)->d, tmp200
	shrq	$40, %rax	#, tmp200
	movb	%al, 10(%rdi)	# tmp200, MEM[(unsigned char *)bin_6(D) + 10B]
	movl	20(%rsi), %eax	# a_2(D)->d, tmp202
	movb	%al, 11(%rdi)	# tmp202, MEM[(unsigned char *)bin_6(D) + 11B]
	movq	16(%rsi), %rax	# a_2(D)->d, tmp204
	shrq	$24, %rax	#, tmp204
	movb	%al, 12(%rdi)	# tmp204, MEM[(unsigned char *)bin_6(D) + 12B]
	movq	16(%rsi), %rax	# a_2(D)->d, tmp206
	shrq	$16, %rax	#, tmp206
	movb	%al, 13(%rdi)	# tmp206, MEM[(unsigned char *)bin_6(D) + 13B]
	movq	16(%rsi), %rax	# a_2(D)->d, tmp208
	shrq	$8, %rax	#, tmp208
	movb	%al, 14(%rdi)	# tmp208, MEM[(unsigned char *)bin_6(D) + 14B]
	movq	16(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	movb	%al, 15(%rdi)	# a_2(D)->d, MEM[(unsigned char *)bin_6(D) + 15B]
	movzbl	15(%rsi), %eax	# a_2(D)->d, tmp211
	movb	%al, 16(%rdi)	# tmp211, MEM[(unsigned char *)bin_6(D) + 16B]
	movzwl	14(%rsi), %eax	# a_2(D)->d, tmp213
	movb	%al, 17(%rdi)	# tmp213, MEM[(unsigned char *)bin_6(D) + 17B]
	movq	8(%rsi), %rax	# a_2(D)->d, tmp215
	shrq	$40, %rax	#, tmp215
	movb	%al, 18(%rdi)	# tmp215, MEM[(unsigned char *)bin_6(D) + 18B]
	movl	12(%rsi), %eax	# a_2(D)->d, tmp217
	movb	%al, 19(%rdi)	# tmp217, MEM[(unsigned char *)bin_6(D) + 19B]
	movq	8(%rsi), %rax	# a_2(D)->d, tmp219
	shrq	$24, %rax	#, tmp219
	movb	%al, 20(%rdi)	# tmp219, MEM[(unsigned char *)bin_6(D) + 20B]
	movq	8(%rsi), %rax	# a_2(D)->d, tmp221
	shrq	$16, %rax	#, tmp221
	movb	%al, 21(%rdi)	# tmp221, MEM[(unsigned char *)bin_6(D) + 21B]
	movq	8(%rsi), %rax	# a_2(D)->d, tmp223
	shrq	$8, %rax	#, tmp223
	movb	%al, 22(%rdi)	# tmp223, MEM[(unsigned char *)bin_6(D) + 22B]
	movq	8(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	movb	%al, 23(%rdi)	# a_2(D)->d, MEM[(unsigned char *)bin_6(D) + 23B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp226
	shrq	$56, %rax	#, tmp226
	movb	%al, 24(%rdi)	# tmp226, MEM[(unsigned char *)bin_6(D) + 24B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp228
	shrq	$48, %rax	#, tmp228
	movb	%al, 25(%rdi)	# tmp228, MEM[(unsigned char *)bin_6(D) + 25B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp230
	shrq	$40, %rax	#, tmp230
	movb	%al, 26(%rdi)	# tmp230, MEM[(unsigned char *)bin_6(D) + 26B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp232
	shrq	$32, %rax	#, tmp232
	movb	%al, 27(%rdi)	# tmp232, MEM[(unsigned char *)bin_6(D) + 27B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp234
	shrq	$24, %rax	#, tmp234
	movb	%al, 28(%rdi)	# tmp234, MEM[(unsigned char *)bin_6(D) + 28B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp236
	shrq	$16, %rax	#, tmp236
	movb	%al, 29(%rdi)	# tmp236, MEM[(unsigned char *)bin_6(D) + 29B]
	movq	(%rsi), %rax	# a_2(D)->d, tmp238
	shrq	$8, %rax	#, tmp238
	movb	%al, 30(%rdi)	# tmp238, MEM[(unsigned char *)bin_6(D) + 30B]
	movq	(%rsi), %rax	# a_2(D)->d, a_2(D)->d
	movb	%al, 31(%rdi)	# a_2(D)->d, MEM[(unsigned char *)bin_6(D) + 31B]
	ret
	.cfi_endproc
.LFE104:
	.size	secp256k1_scalar_get_b32, .-secp256k1_scalar_get_b32
	.p2align 4,,15
	.type	secp256k1_scalar_reduce_512, @function
secp256k1_scalar_reduce_512:
.LFB110:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rcx	# r, r
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
#APP
# 270 "scalar_4x64_impl.h" 1
	movq 32(%rsi), %r11
movq 40(%rsi), %r12
movq 48(%rsi), %r13
movq 56(%rsi), %r14
movq 0(%rsi), %r8
xorq %r9, %r9
xorq %r10, %r10
movq $4624529908474429119, %rax	#
mulq %r11
addq %rax, %r8
adcq %rdx, %r9
movq %r8, -40(%rsp)	# %sfp
xorq %r8, %r8
addq 8(%rsi), %r9
adcq $0, %r10
movq $4624529908474429119, %rax	#
mulq %r12
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq $4994812053365940164, %rax	#
mulq %r11
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r9, -32(%rsp)	# %sfp
xorq %r9, %r9
addq 16(%rsi), %r10
adcq $0, %r8
adcq $0, %r9
movq $4624529908474429119, %rax	#
mulq %r13
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq $4994812053365940164, %rax	#
mulq %r12
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
addq %r11, %r10
adcq $0, %r8
adcq $0, %r9
movq %r10, -24(%rsp)	# %sfp
xorq %r10, %r10
addq 24(%rsi), %r8
adcq $0, %r9
adcq $0, %r10
movq $4624529908474429119, %rax	#
mulq %r14
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq $4994812053365940164, %rax	#
mulq %r13
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
addq %r12, %r8
adcq $0, %r9
adcq $0, %r10
movq %r8, -16(%rsp)	# %sfp
xorq %r8, %r8
movq $4994812053365940164, %rax	#
mulq %r14
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
addq %r13, %r9
adcq $0, %r10
adcq $0, %r8
movq %r9, %r15	# m4
addq %r14, %r10
adcq $0, %r8
movq %r10, %rsi	# m5
movq %r8, %rdi	# m6

# 0 "" 2
# 376 "scalar_4x64_impl.h" 1
	movq %r15, %r11	# m4
movq %rsi, %r12	# m5
movq %rdi, %r13	# m6
movq -40(%rsp), %r8	# %sfp
xorq %r9, %r9
xorq %r10, %r10
movq $4624529908474429119, %rax	#
mulq %r11
addq %rax, %r8
adcq %rdx, %r9
movq %r8, %rbx	# p0
xorq %r8, %r8
addq -32(%rsp), %r9	# %sfp
adcq $0, %r10
movq $4624529908474429119, %rax	#
mulq %r12
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq $4994812053365940164, %rax	#
mulq %r11
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r9, %r14	# p1
xorq %r9, %r9
addq -24(%rsp), %r10	# %sfp
adcq $0, %r8
adcq $0, %r9
movq $4624529908474429119, %rax	#
mulq %r13
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq $4994812053365940164, %rax	#
mulq %r12
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
addq %r11, %r10
adcq $0, %r8
adcq $0, %r9
movq %r10, %rbp	# p2
addq -16(%rsp), %r8	# %sfp
adcq $0, %r9
movq $4994812053365940164, %rax	#
mulq %r13
addq %rax, %r8
adcq %rdx, %r9
addq %r12, %r8
adcq $0, %r9
movq %r8, %rsi	# p3
addq %r13, %r9
movq %r9, %r15	# p4

# 0 "" 2
#NO_APP
	movq	%rcx, %rdi	# r, r
#APP
# 455 "scalar_4x64_impl.h" 1
	movq %r15, %r10	# p4
movq $4624529908474429119, %rax	#
mulq %r10
addq %rbx, %rax	# p0
adcq $0, %rdx
movq %rax, 0(%rdi)	# r
movq %rdx, %r8
xorq %r9, %r9
addq %r14, %r8	# p1
adcq $0, %r9
movq $4994812053365940164, %rax	#
mulq %r10
addq %rax, %r8
adcq %rdx, %r9
movq %r8, 8(%rdi)	# r
xorq %r8, %r8
addq %r10, %r9
adcq $0, %r8
addq %rbp, %r9	# p2
adcq $0, %r8
movq %r9, 16(%rdi)	# r
xorq %r9, %r9
addq %rsi, %r8	# p3
adcq $0, %r9
movq %r8, 24(%rdi)	# r
movq %r9, %r14	# c

# 0 "" 2
#NO_APP
	movq	24(%rcx), %rbp	# MEM[(const struct secp256k1_scalar *)r_15(D)].d, _44
	movq	16(%rcx), %rbx	# MEM[(const struct secp256k1_scalar *)r_15(D)].d, _46
	movabsq	$-4994812053365940165, %rsi	#, tmp176
	movq	8(%rcx), %r13	# MEM[(const struct secp256k1_scalar *)r_15(D)].d, _54
	movq	(%rcx), %r9	# MEM[(const struct secp256k1_scalar *)r_15(D)].d, _63
	movabsq	$-4624529908474429120, %rdi	#, tmp179
	cmpq	$-1, %rbp	#, _44
	setne	%dl	#, tmp166
	cmpq	$-3, %rbx	#, _46
	setbe	%al	#, tmp168
	orl	%eax, %edx	# tmp168, _48
	movabsq	$-4994812053365940166, %rax	#, tmp170
	cmpq	%rax, %r13	# tmp170, _54
	setbe	%al	#, tmp171
	orl	%edx, %eax	# _48, tmp172
	cmpq	%rsi, %r13	# tmp176, _54
	movzbl	%dl, %edx	# _48, no
	seta	%sil	#, tmp177
	cmpq	%rdi, %r9	# tmp179, _63
	movzbl	%al, %eax	# tmp172, no
	seta	%dil	#, tmp180
	notl	%eax	# tmp174
	notl	%edx	# tmp187
	orl	%edi, %esi	# tmp180, tmp181
	movzbl	%sil, %esi	# tmp181, tmp182
	andl	%esi, %eax	# tmp182, tmp183
	xorl	%esi, %esi	# tmp184
	cmpq	$-1, %rbx	#, _46
	sete	%sil	#, tmp184
	xorl	%edi, %edi	#
	andl	%esi, %edx	# tmp184, tmp188
	orl	%edx, %eax	# tmp188, yes
	xorl	%edx, %edx	# _63
	leal	(%rax,%r14), %r8d	#, _22
	movabsq	$4624529908474429119, %rax	#, tmp191
	imulq	%r8, %rax	# _22, tmp191
	movq	%rax, %rsi	# tmp191, tmp192
	addq	%r9, %rsi	# _63, t
	movq	%r13, %r9	# _54, _54
	adcq	%rdx, %rdi	# _63, t
	xorl	%r12d, %r12d	# t
	xorl	%edx, %edx	#
	movq	%rdi, %r11	# t, t
	movabsq	$4994812053365940164, %rdi	#, tmp195
	movq	%rsi, -40(%rsp)	# t, %sfp
	movq	%rdi, %r10	# tmp195, tmp195
	movq	-40(%rsp), %xmm0	# %sfp, tmp203
	imulq	%r8, %r10	# _22, tmp195
	movq	%rbp, %rsi	# _44, _44
	movq	%r10, %rax	# tmp195, tmp196
	xorl	%r10d, %r10d	# _54
	addq	%rax, %r9	# tmp196, tmp198
	movq	%rbx, %rax	# _46, _46
	adcq	%rdx, %r10	#,
	addq	%r11, %r9	# t, t
	adcq	%r12, %r10	# t, t
	xorl	%r14d, %r14d	# t
	xorl	%r12d, %r12d	# _20
	xorl	%edx, %edx	# _46
	addq	%r8, %rax	# _20, tmp202
	movq	%r9, -40(%rsp)	# t, %sfp
	adcq	%r12, %rdx	# _20,
	addq	%r10, %rax	# t, t
	movhps	-40(%rsp), %xmm0	# %sfp, tmp203
	adcq	%r14, %rdx	# t, t
	movq	%rax, -40(%rsp)	# t, %sfp
	addq	%rdx, %rsi	# t, t
	movaps	%xmm0, (%rcx)	# tmp203, MEM[(long unsigned int *)r_15(D)]
	movq	-40(%rsp), %xmm0	# %sfp, tmp204
	movq	%rsi, -40(%rsp)	# t, %sfp
	movhps	-40(%rsp), %xmm0	# %sfp, tmp204
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	movaps	%xmm0, 16(%rcx)	# tmp204, MEM[(long unsigned int *)r_15(D) + 16B]
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	secp256k1_scalar_reduce_512, .-secp256k1_scalar_reduce_512
	.p2align 4,,15
	.type	secp256k1_scalar_mul_512, @function
secp256k1_scalar_mul_512:
.LFB111:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# l, l
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rdi	# a, a
	movq	%rbp, %rsi	# l, l
#APP
# 575 "scalar_4x64_impl.h" 1
	movq 0(%rdi), %r15
movq 8(%rdi), %rbx
movq 16(%rdi), %rcx
movq 0(%rdx), %r11
movq 8(%rdx), %r12
movq 16(%rdx), %r13
movq 24(%rdx), %r14
movq %r15, %rax
mulq %r11
movq %rax, 0(%rsi)
movq %rdx, %r8
xorq %r9, %r9
xorq %r10, %r10
movq %r15, %rax
mulq %r12
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %rbx, %rax
mulq %r11
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %r8, 8(%rsi)
xorq %r8, %r8
movq %r15, %rax
mulq %r13
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %rbx, %rax
mulq %r12
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %rcx, %rax
mulq %r11
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r9, 16(%rsi)
xorq %r9, %r9
movq %r15, %rax
mulq %r14
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq 24(%rdi), %r15
movq %rbx, %rax
mulq %r13
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq %rcx, %rax
mulq %r12
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq %r15, %rax
mulq %r11
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq %r10, 24(%rsi)
xorq %r10, %r10
movq %rbx, %rax
mulq %r14
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %rcx, %rax
mulq %r13
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %r15, %rax
mulq %r12
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %r8, 32(%rsi)
xorq %r8, %r8
movq %rcx, %rax
mulq %r14
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r15, %rax
mulq %r13
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r9, 40(%rsi)
movq %r15, %rax
mulq %r14
addq %rax, %r10
adcq %rdx, %r8
movq %r10, 48(%rsi)
movq %r8, 56(%rsi)

# 0 "" 2
#NO_APP
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	secp256k1_scalar_mul_512, .-secp256k1_scalar_mul_512
	.p2align 4,,15
	.type	secp256k1_scalar_sqr_512, @function
secp256k1_scalar_sqr_512:
.LFB112:
	.cfi_startproc
	movq	%rdi, %rcx	# l, l
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %rdi	# a, a
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %rsi	# l, l
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
#APP
# 741 "scalar_4x64_impl.h" 1
	movq 0(%rdi), %r11
movq 8(%rdi), %r12
movq 16(%rdi), %r13
movq 24(%rdi), %r14
movq %r11, %rax
mulq %r11
movq %rax, 0(%rsi)
movq %rdx, %r8
xorq %r9, %r9
xorq %r10, %r10
movq %r11, %rax
mulq %r12
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %r8, 8(%rsi)
xorq %r8, %r8
movq %r11, %rax
mulq %r13
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r12, %rax
mulq %r12
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r9, 16(%rsi)
xorq %r9, %r9
movq %r11, %rax
mulq %r14
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq %r12, %rax
mulq %r13
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
addq %rax, %r10
adcq %rdx, %r8
adcq $0, %r9
movq %r10, 24(%rsi)
xorq %r10, %r10
movq %r12, %rax
mulq %r14
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %r13, %rax
mulq %r13
addq %rax, %r8
adcq %rdx, %r9
adcq $0, %r10
movq %r8, 32(%rsi)
xorq %r8, %r8
movq %r13, %rax
mulq %r14
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
addq %rax, %r9
adcq %rdx, %r10
adcq $0, %r8
movq %r9, 40(%rsi)
movq %r14, %rax
mulq %r14
addq %rax, %r10
adcq %rdx, %r8
movq %r10, 48(%rsi)
movq %r8, 56(%rsi)

# 0 "" 2
#NO_APP
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	secp256k1_scalar_sqr_512, .-secp256k1_scalar_sqr_512
	.p2align 4,,15
	.type	secp256k1_scalar_inverse, @function
secp256k1_scalar_inverse:
.LFB120:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12	# r, r
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbp	# x, x
	movl	$6, %ebx	#, ivtmp_1
	subq	$416, %rsp	#,
	.cfi_def_cfa_offset 448
	leaq	352(%rsp), %rdi	#, tmp622
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp623
	movq	%rsp, %rdi	#,
	call	secp256k1_scalar_reduce_512	#
	leaq	352(%rsp), %rdi	#, tmp624
	movq	%rbp, %rdx	# x,
	movq	%rsp, %rsi	#,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp625
	movq	%rsp, %rdi	#,
	call	secp256k1_scalar_reduce_512	#
	leaq	352(%rsp), %rdi	#, tmp626
	movq	%rsp, %rsi	#,
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp627
	leaq	32(%rsp), %rdi	#, tmp628
	call	secp256k1_scalar_reduce_512	#
	leaq	32(%rsp), %rsi	#, tmp629
	leaq	352(%rsp), %rdi	#, tmp630
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp631
	leaq	32(%rsp), %rdi	#, tmp632
	call	secp256k1_scalar_reduce_512	#
	leaq	32(%rsp), %rsi	#, tmp633
	leaq	352(%rsp), %rdi	#, tmp634
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp635
	leaq	64(%rsp), %rdi	#, tmp636
	call	secp256k1_scalar_reduce_512	#
	leaq	64(%rsp), %rsi	#, tmp637
	leaq	352(%rsp), %rdi	#, tmp638
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp639
	leaq	64(%rsp), %rdi	#, tmp640
	call	secp256k1_scalar_reduce_512	#
	leaq	64(%rsp), %rsi	#, tmp641
	leaq	352(%rsp), %rdi	#, tmp642
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp643
	leaq	96(%rsp), %rdi	#, tmp644
	call	secp256k1_scalar_reduce_512	#
	leaq	96(%rsp), %rsi	#, tmp645
	leaq	352(%rsp), %rdi	#, tmp646
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp647
	leaq	96(%rsp), %rdi	#, tmp648
	call	secp256k1_scalar_reduce_512	#
	leaq	96(%rsp), %rsi	#, tmp649
	leaq	352(%rsp), %rdi	#, tmp650
	movq	%rsp, %rdx	#,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp651
	leaq	96(%rsp), %rdi	#, tmp652
	call	secp256k1_scalar_reduce_512	#
	leaq	96(%rsp), %rsi	#, tmp653
	leaq	352(%rsp), %rdi	#, tmp654
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp655
	leaq	128(%rsp), %rdi	#, tmp656
	call	secp256k1_scalar_reduce_512	#
	leaq	128(%rsp), %rsi	#, tmp657
	leaq	352(%rsp), %rdi	#, tmp658
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp659
	leaq	128(%rsp), %rdi	#, tmp660
	call	secp256k1_scalar_reduce_512	#
	leaq	128(%rsp), %rsi	#, tmp661
	leaq	352(%rsp), %rdi	#, tmp662
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp663
	leaq	160(%rsp), %rdi	#, tmp664
	call	secp256k1_scalar_reduce_512	#
	leaq	160(%rsp), %rsi	#, tmp665
	leaq	352(%rsp), %rdi	#, tmp666
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp667
	leaq	160(%rsp), %rdi	#, tmp668
	call	secp256k1_scalar_reduce_512	#
	leaq	160(%rsp), %rsi	#, tmp669
	leaq	352(%rsp), %rdi	#, tmp670
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp671
	leaq	192(%rsp), %rdi	#, tmp672
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L48:
	leaq	192(%rsp), %rsi	#, tmp673
	leaq	352(%rsp), %rdi	#, tmp674
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp675
	leaq	192(%rsp), %rdi	#, tmp676
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_1
	jne	.L48	#,
	leaq	128(%rsp), %rdx	#, tmp677
	leaq	192(%rsp), %rsi	#, tmp678
	leaq	352(%rsp), %rdi	#, tmp679
	movl	$14, %ebx	#, ivtmp_2
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp680
	leaq	192(%rsp), %rdi	#, tmp681
	call	secp256k1_scalar_reduce_512	#
	leaq	192(%rsp), %rsi	#, tmp682
	leaq	352(%rsp), %rdi	#, tmp683
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp684
	leaq	224(%rsp), %rdi	#, tmp685
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L49:
	leaq	224(%rsp), %rsi	#, tmp686
	leaq	352(%rsp), %rdi	#, tmp687
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp688
	leaq	224(%rsp), %rdi	#, tmp689
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_2
	jne	.L49	#,
	leaq	192(%rsp), %rdx	#, tmp690
	leaq	224(%rsp), %rsi	#, tmp691
	leaq	352(%rsp), %rdi	#, tmp692
	movl	$29, %ebx	#, ivtmp_3
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp693
	leaq	224(%rsp), %rdi	#, tmp694
	call	secp256k1_scalar_reduce_512	#
	leaq	224(%rsp), %rsi	#, tmp695
	leaq	352(%rsp), %rdi	#, tmp696
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp697
	leaq	256(%rsp), %rdi	#, tmp698
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L50:
	leaq	256(%rsp), %rsi	#, tmp699
	leaq	352(%rsp), %rdi	#, tmp700
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp701
	leaq	256(%rsp), %rdi	#, tmp702
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_3
	jne	.L50	#,
	leaq	224(%rsp), %rdx	#, tmp703
	leaq	256(%rsp), %rsi	#, tmp704
	leaq	352(%rsp), %rdi	#, tmp705
	movl	$59, %ebx	#, ivtmp_4
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp706
	leaq	256(%rsp), %rdi	#, tmp707
	call	secp256k1_scalar_reduce_512	#
	leaq	256(%rsp), %rsi	#, tmp708
	leaq	352(%rsp), %rdi	#, tmp709
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp710
	leaq	288(%rsp), %rdi	#, tmp711
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L51:
	leaq	288(%rsp), %rsi	#, tmp712
	leaq	352(%rsp), %rdi	#, tmp713
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp714
	leaq	288(%rsp), %rdi	#, tmp715
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_4
	jne	.L51	#,
	leaq	256(%rsp), %rdx	#, tmp716
	leaq	288(%rsp), %rsi	#, tmp717
	leaq	352(%rsp), %rdi	#, tmp718
	movl	$6, %ebx	#, ivtmp_5
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp719
	leaq	288(%rsp), %rdi	#, tmp720
	call	secp256k1_scalar_reduce_512	#
	leaq	288(%rsp), %rsi	#, tmp721
	leaq	352(%rsp), %rdi	#, tmp722
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp723
	leaq	320(%rsp), %rdi	#, tmp724
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L52:
	leaq	320(%rsp), %rsi	#, tmp725
	leaq	352(%rsp), %rdi	#, tmp726
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp727
	leaq	320(%rsp), %rdi	#, tmp728
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_5
	jne	.L52	#,
	leaq	128(%rsp), %rdx	#, tmp729
	leaq	320(%rsp), %rsi	#, tmp730
	leaq	352(%rsp), %rdi	#, tmp731
	movl	$4, %ebx	#, ivtmp_6
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp732
	leaq	320(%rsp), %rdi	#, tmp733
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp734
	leaq	352(%rsp), %rdi	#, tmp735
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp736
	leaq	320(%rsp), %rdi	#, tmp737
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp738
	leaq	352(%rsp), %rdi	#, tmp739
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp740
	leaq	320(%rsp), %rdi	#, tmp741
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp742
	leaq	352(%rsp), %rdi	#, tmp743
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp744
	leaq	320(%rsp), %rdi	#, tmp745
	call	secp256k1_scalar_reduce_512	#
.L53:
	leaq	320(%rsp), %rsi	#, tmp746
	leaq	352(%rsp), %rdi	#, tmp747
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp748
	leaq	320(%rsp), %rdi	#, tmp749
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_6
	jne	.L53	#,
	leaq	32(%rsp), %rdx	#, tmp750
	leaq	320(%rsp), %rsi	#, tmp751
	leaq	352(%rsp), %rdi	#, tmp752
	movl	$4, %ebx	#, ivtmp_11
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp753
	leaq	320(%rsp), %rdi	#, tmp754
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp755
	leaq	352(%rsp), %rdi	#, tmp756
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp757
	leaq	320(%rsp), %rdi	#, tmp758
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp759
	leaq	352(%rsp), %rdi	#, tmp760
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp761
	leaq	320(%rsp), %rdi	#, tmp762
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp763
	leaq	352(%rsp), %rdi	#, tmp764
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp765
	leaq	320(%rsp), %rdi	#, tmp766
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp767
	leaq	352(%rsp), %rdi	#, tmp768
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp769
	leaq	320(%rsp), %rdi	#, tmp770
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp771
	leaq	352(%rsp), %rdi	#, tmp772
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp773
	leaq	320(%rsp), %rdi	#, tmp774
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp775
	leaq	352(%rsp), %rdi	#, tmp776
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp777
	leaq	320(%rsp), %rdi	#, tmp778
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp779
	leaq	352(%rsp), %rdi	#, tmp780
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp781
	leaq	320(%rsp), %rdi	#, tmp782
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp783
	leaq	352(%rsp), %rdi	#, tmp784
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp785
	leaq	320(%rsp), %rdi	#, tmp786
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp787
	leaq	352(%rsp), %rdi	#, tmp788
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp789
	leaq	320(%rsp), %rdi	#, tmp790
	call	secp256k1_scalar_reduce_512	#
.L54:
	leaq	320(%rsp), %rsi	#, tmp791
	leaq	352(%rsp), %rdi	#, tmp792
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp793
	leaq	320(%rsp), %rdi	#, tmp794
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_11
	jne	.L54	#,
	leaq	32(%rsp), %rdx	#, tmp795
	leaq	320(%rsp), %rsi	#, tmp796
	leaq	352(%rsp), %rdi	#, tmp797
	movl	$3, %ebx	#, ivtmp_8
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp798
	leaq	320(%rsp), %rdi	#, tmp799
	call	secp256k1_scalar_reduce_512	#
.L55:
	leaq	320(%rsp), %rsi	#, tmp800
	leaq	352(%rsp), %rdi	#, tmp801
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp802
	leaq	320(%rsp), %rdi	#, tmp803
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_8
	jne	.L55	#,
	leaq	320(%rsp), %rsi	#, tmp804
	leaq	352(%rsp), %rdi	#, tmp805
	movq	%rsp, %rdx	#,
	movl	$4, %ebx	#, ivtmp_13
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp806
	leaq	320(%rsp), %rdi	#, tmp807
	call	secp256k1_scalar_reduce_512	#
.L56:
	leaq	320(%rsp), %rsi	#, tmp808
	leaq	352(%rsp), %rdi	#, tmp809
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp810
	leaq	320(%rsp), %rdi	#, tmp811
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_13
	jne	.L56	#,
	leaq	32(%rsp), %rdx	#, tmp812
	leaq	320(%rsp), %rsi	#, tmp813
	leaq	352(%rsp), %rdi	#, tmp814
	movl	$5, %ebx	#, ivtmp_14
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp815
	leaq	320(%rsp), %rdi	#, tmp816
	call	secp256k1_scalar_reduce_512	#
.L57:
	leaq	320(%rsp), %rsi	#, tmp817
	leaq	352(%rsp), %rdi	#, tmp818
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp819
	leaq	320(%rsp), %rdi	#, tmp820
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_14
	jne	.L57	#,
	leaq	32(%rsp), %rdx	#, tmp821
	leaq	320(%rsp), %rsi	#, tmp822
	leaq	352(%rsp), %rdi	#, tmp823
	movl	$4, %ebx	#, ivtmp_9
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp824
	leaq	320(%rsp), %rdi	#, tmp825
	call	secp256k1_scalar_reduce_512	#
.L58:
	leaq	320(%rsp), %rsi	#, tmp826
	leaq	352(%rsp), %rdi	#, tmp827
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp828
	leaq	320(%rsp), %rdi	#, tmp829
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_9
	jne	.L58	#,
	leaq	320(%rsp), %rsi	#, tmp830
	leaq	352(%rsp), %rdi	#, tmp831
	movq	%rsp, %rdx	#,
	movl	$5, %ebx	#, ivtmp_18
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp832
	leaq	320(%rsp), %rdi	#, tmp833
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp834
	leaq	352(%rsp), %rdi	#, tmp835
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp836
	leaq	320(%rsp), %rdi	#, tmp837
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp838
	leaq	352(%rsp), %rdi	#, tmp839
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp840
	leaq	320(%rsp), %rdi	#, tmp841
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp842
	leaq	352(%rsp), %rdi	#, tmp843
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp844
	leaq	320(%rsp), %rdi	#, tmp845
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp846
	leaq	352(%rsp), %rdi	#, tmp847
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp848
	leaq	320(%rsp), %rdi	#, tmp849
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp850
	leaq	352(%rsp), %rdi	#, tmp851
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp852
	leaq	320(%rsp), %rdi	#, tmp853
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp854
	leaq	352(%rsp), %rdi	#, tmp855
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp856
	leaq	320(%rsp), %rdi	#, tmp857
	call	secp256k1_scalar_reduce_512	#
.L59:
	leaq	320(%rsp), %rsi	#, tmp858
	leaq	352(%rsp), %rdi	#, tmp859
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp860
	leaq	320(%rsp), %rdi	#, tmp861
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_18
	jne	.L59	#,
	leaq	64(%rsp), %rdx	#, tmp862
	leaq	320(%rsp), %rsi	#, tmp863
	leaq	352(%rsp), %rdi	#, tmp864
	movl	$3, %ebx	#, ivtmp_20
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp865
	leaq	320(%rsp), %rdi	#, tmp866
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp867
	leaq	352(%rsp), %rdi	#, tmp868
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp869
	leaq	320(%rsp), %rdi	#, tmp870
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp871
	leaq	352(%rsp), %rdi	#, tmp872
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp873
	leaq	320(%rsp), %rdi	#, tmp874
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp875
	leaq	352(%rsp), %rdi	#, tmp876
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp877
	leaq	320(%rsp), %rdi	#, tmp878
	call	secp256k1_scalar_reduce_512	#
.L60:
	leaq	320(%rsp), %rsi	#, tmp879
	leaq	352(%rsp), %rdi	#, tmp880
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp881
	leaq	320(%rsp), %rdi	#, tmp882
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_20
	jne	.L60	#,
	leaq	320(%rsp), %rsi	#, tmp883
	leaq	352(%rsp), %rdi	#, tmp884
	movq	%rbp, %rdx	# x,
	movl	$4, %ebx	#, ivtmp_10
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp885
	leaq	320(%rsp), %rdi	#, tmp886
	call	secp256k1_scalar_reduce_512	#
.L61:
	leaq	320(%rsp), %rsi	#, tmp887
	leaq	352(%rsp), %rdi	#, tmp888
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp889
	leaq	320(%rsp), %rdi	#, tmp890
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_10
	jne	.L61	#,
	leaq	320(%rsp), %rsi	#, tmp891
	leaq	352(%rsp), %rdi	#, tmp892
	movq	%rbp, %rdx	# x,
	movl	$10, %ebx	#, ivtmp_17
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp893
	leaq	320(%rsp), %rdi	#, tmp894
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp895
	leaq	352(%rsp), %rdi	#, tmp896
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp897
	leaq	320(%rsp), %rdi	#, tmp898
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp899
	leaq	352(%rsp), %rdi	#, tmp900
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp901
	leaq	320(%rsp), %rdi	#, tmp902
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp903
	leaq	352(%rsp), %rdi	#, tmp904
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp905
	leaq	320(%rsp), %rdi	#, tmp906
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L62:
	leaq	320(%rsp), %rsi	#, tmp907
	leaq	352(%rsp), %rdi	#, tmp908
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp909
	leaq	320(%rsp), %rdi	#, tmp910
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_17
	jne	.L62	#,
	leaq	32(%rsp), %rdx	#, tmp911
	leaq	320(%rsp), %rsi	#, tmp912
	leaq	352(%rsp), %rdi	#, tmp913
	movl	$4, %ebx	#, ivtmp_21
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp914
	leaq	320(%rsp), %rdi	#, tmp915
	call	secp256k1_scalar_reduce_512	#
.L63:
	leaq	320(%rsp), %rsi	#, tmp916
	leaq	352(%rsp), %rdi	#, tmp917
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp918
	leaq	320(%rsp), %rdi	#, tmp919
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_21
	jne	.L63	#,
	leaq	32(%rsp), %rdx	#, tmp920
	leaq	320(%rsp), %rsi	#, tmp921
	leaq	352(%rsp), %rdi	#, tmp922
	movl	$9, %ebx	#, ivtmp_23
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp923
	leaq	320(%rsp), %rdi	#, tmp924
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L64:
	leaq	320(%rsp), %rsi	#, tmp925
	leaq	352(%rsp), %rdi	#, tmp926
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp927
	leaq	320(%rsp), %rdi	#, tmp928
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_23
	jne	.L64	#,
	leaq	160(%rsp), %rdx	#, tmp929
	leaq	320(%rsp), %rsi	#, tmp930
	leaq	352(%rsp), %rdi	#, tmp931
	movl	$3, %ebx	#, ivtmp_25
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp932
	leaq	320(%rsp), %rdi	#, tmp933
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp934
	leaq	352(%rsp), %rdi	#, tmp935
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp936
	leaq	320(%rsp), %rdi	#, tmp937
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp938
	leaq	352(%rsp), %rdi	#, tmp939
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp940
	leaq	320(%rsp), %rdi	#, tmp941
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp942
	leaq	352(%rsp), %rdi	#, tmp943
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp944
	leaq	320(%rsp), %rdi	#, tmp945
	call	secp256k1_scalar_reduce_512	#
.L65:
	leaq	320(%rsp), %rsi	#, tmp946
	leaq	352(%rsp), %rdi	#, tmp947
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp948
	leaq	320(%rsp), %rdi	#, tmp949
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_25
	jne	.L65	#,
	leaq	320(%rsp), %rsi	#, tmp950
	leaq	352(%rsp), %rdi	#, tmp951
	movq	%rbp, %rdx	# x,
	movl	$3, %ebx	#, ivtmp_27
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp952
	leaq	320(%rsp), %rdi	#, tmp953
	call	secp256k1_scalar_reduce_512	#
.L66:
	leaq	320(%rsp), %rsi	#, tmp954
	leaq	352(%rsp), %rdi	#, tmp955
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp956
	leaq	320(%rsp), %rdi	#, tmp957
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_27
	jne	.L66	#,
	leaq	320(%rsp), %rsi	#, tmp958
	leaq	352(%rsp), %rdi	#, tmp959
	movq	%rbp, %rdx	# x,
	movl	$5, %ebx	#, ivtmp_29
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp960
	leaq	320(%rsp), %rdi	#, tmp961
	call	secp256k1_scalar_reduce_512	#
.L67:
	leaq	320(%rsp), %rsi	#, tmp962
	leaq	352(%rsp), %rdi	#, tmp963
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp964
	leaq	320(%rsp), %rdi	#, tmp965
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_29
	jne	.L67	#,
	leaq	64(%rsp), %rdx	#, tmp966
	leaq	320(%rsp), %rsi	#, tmp967
	leaq	352(%rsp), %rdi	#, tmp968
	movl	$5, %ebx	#, ivtmp_31
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp969
	leaq	320(%rsp), %rdi	#, tmp970
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp971
	leaq	352(%rsp), %rdi	#, tmp972
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp973
	leaq	320(%rsp), %rdi	#, tmp974
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp975
	leaq	352(%rsp), %rdi	#, tmp976
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp977
	leaq	320(%rsp), %rdi	#, tmp978
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp979
	leaq	352(%rsp), %rdi	#, tmp980
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp981
	leaq	320(%rsp), %rdi	#, tmp982
	call	secp256k1_scalar_reduce_512	#
.L68:
	leaq	320(%rsp), %rsi	#, tmp983
	leaq	352(%rsp), %rdi	#, tmp984
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp985
	leaq	320(%rsp), %rdi	#, tmp986
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_31
	jne	.L68	#,
	leaq	320(%rsp), %rsi	#, tmp987
	leaq	352(%rsp), %rdi	#, tmp988
	movq	%rsp, %rdx	#,
	movl	$4, %ebx	#, ivtmp_34
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp989
	leaq	320(%rsp), %rdi	#, tmp990
	call	secp256k1_scalar_reduce_512	#
.L69:
	leaq	320(%rsp), %rsi	#, tmp991
	leaq	352(%rsp), %rdi	#, tmp992
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp993
	leaq	320(%rsp), %rdi	#, tmp994
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_34
	jne	.L69	#,
	leaq	320(%rsp), %rsi	#, tmp995
	leaq	352(%rsp), %rdi	#, tmp996
	movq	%rsp, %rdx	#,
	movl	$8, %ebx	#, ivtmp_36
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp997
	leaq	320(%rsp), %rdi	#, tmp998
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp999
	leaq	352(%rsp), %rdi	#, tmp1000
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1001
	leaq	320(%rsp), %rdi	#, tmp1002
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp1003
	leaq	352(%rsp), %rdi	#, tmp1004
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1005
	leaq	320(%rsp), %rdi	#, tmp1006
	call	secp256k1_scalar_reduce_512	#
	leaq	320(%rsp), %rsi	#, tmp1007
	leaq	352(%rsp), %rdi	#, tmp1008
	movq	%rbp, %rdx	# x,
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp1009
	leaq	320(%rsp), %rdi	#, tmp1010
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L70:
	leaq	320(%rsp), %rsi	#, tmp1011
	leaq	352(%rsp), %rdi	#, tmp1012
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1013
	leaq	320(%rsp), %rdi	#, tmp1014
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_36
	jne	.L70	#,
	leaq	320(%rsp), %rsi	#, tmp1015
	leaq	352(%rsp), %rdi	#, tmp1016
	movq	%rsp, %rdx	#,
	movl	$3, %ebx	#, ivtmp_38
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp1017
	leaq	320(%rsp), %rdi	#, tmp1018
	call	secp256k1_scalar_reduce_512	#
.L71:
	leaq	320(%rsp), %rsi	#, tmp1019
	leaq	352(%rsp), %rdi	#, tmp1020
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1021
	leaq	320(%rsp), %rdi	#, tmp1022
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_38
	jne	.L71	#,
	leaq	320(%rsp), %rsi	#, tmp1023
	leaq	352(%rsp), %rdi	#, tmp1024
	movq	%rsp, %rdx	#,
	movl	$3, %ebx	#, ivtmp_441
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp1025
	leaq	320(%rsp), %rdi	#, tmp1026
	call	secp256k1_scalar_reduce_512	#
.L72:
	leaq	320(%rsp), %rsi	#, tmp1027
	leaq	352(%rsp), %rdi	#, tmp1028
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1029
	leaq	320(%rsp), %rdi	#, tmp1030
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_441
	jne	.L72	#,
	leaq	320(%rsp), %rsi	#, tmp1031
	leaq	352(%rsp), %rdi	#, tmp1032
	movq	%rbp, %rdx	# x,
	movl	$6, %ebx	#, ivtmp_465
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp1033
	leaq	320(%rsp), %rdi	#, tmp1034
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	320(%rsp), %rsi	#, tmp1035
	leaq	352(%rsp), %rdi	#, tmp1036
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1037
	leaq	320(%rsp), %rdi	#, tmp1038
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_465
	jne	.L73	#,
	leaq	320(%rsp), %rsi	#, tmp1039
	leaq	352(%rsp), %rdi	#, tmp1040
	movq	%rbp, %rdx	# x,
	movl	$8, %ebx	#, ivtmp_477
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp1041
	leaq	320(%rsp), %rdi	#, tmp1042
	call	secp256k1_scalar_reduce_512	#
	.p2align 4,,10
	.p2align 3
.L74:
	leaq	320(%rsp), %rsi	#, tmp1043
	leaq	352(%rsp), %rdi	#, tmp1044
	call	secp256k1_scalar_sqr_512	#
	leaq	352(%rsp), %rsi	#, tmp1045
	leaq	320(%rsp), %rdi	#, tmp1046
	call	secp256k1_scalar_reduce_512	#
	subl	$1, %ebx	#, ivtmp_477
	jne	.L74	#,
	leaq	96(%rsp), %rdx	#, tmp1047
	leaq	320(%rsp), %rsi	#, tmp1048
	leaq	352(%rsp), %rdi	#, tmp1049
	call	secp256k1_scalar_mul_512	#
	leaq	352(%rsp), %rsi	#, tmp1050
	movq	%r12, %rdi	# r,
	call	secp256k1_scalar_reduce_512	#
	addq	$416, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	secp256k1_scalar_inverse, .-secp256k1_scalar_inverse
	.p2align 4,,15
	.type	secp256k1_sha256_transform, @function
secp256k1_sha256_transform:
.LFB165:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	4(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 4B], b
	movl	(%rdi), %eax	# *s_2(D), a
	movq	%rdi, -8(%rsp)	# s, %sfp
	movl	%ecx, %r13d	# b, b
	movl	8(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 8B], c
	movl	%eax, %ebx	# a, a
	movl	%r13d, -36(%rsp)	# b, %sfp
	movl	%ebx, -40(%rsp)	# a, %sfp
	movl	%ecx, %r12d	# c, c
	movl	12(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 12B], d
	movl	%r12d, -32(%rsp)	# c, %sfp
	movl	%ecx, %r11d	# d, d
	movl	16(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 16B], e
	movl	%r11d, -28(%rsp)	# d, %sfp
	movl	%ecx, %r14d	# e, e
	movl	20(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 20B], f
	movl	%r14d, %edx	# e, tmp2299
	rorl	$11, %edx	#, tmp2299
	movl	%ecx, %ebp	# f, f
	movl	24(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 24B], g
	movl	%ebp, -20(%rsp)	# f, %sfp
	movl	%ecx, %r10d	# g, g
	movl	28(%rdi), %ecx	# MEM[(uint32_t *)s_2(D) + 28B], h
	movl	%r14d, %edi	# e, tmp2298
	rorl	$6, %edi	#, tmp2298
	movl	%edi, %eax	# tmp2298, tmp2298
	movl	%ebx, %edi	# a, tmp2316
	movl	%ecx, %r8d	# h, h
	movl	(%rsi), %ecx	# *chunk_21(D), *chunk_21(D)
	xorl	%edx, %eax	# tmp2299, tmp2300
	movl	%r14d, %edx	# e, tmp2301
	andl	%r13d, %edi	# b, tmp2316
	movl	%r8d, -12(%rsp)	# h, %sfp
	roll	$7, %edx	#, tmp2301
	bswap	%ecx	# *chunk_21(D)
	xorl	%edx, %eax	# tmp2301, tmp2302
	movl	%ecx, %r15d	# *chunk_21(D), w0
	movl	%ebp, %ecx	# f, tmp2305
	leal	1116352408(%r8,%rax), %edx	#, tmp2304
	xorl	%r10d, %ecx	# g, tmp2305
	movl	%ebx, %eax	# a, tmp2309
	movl	%r15d, -88(%rsp)	# w0, %sfp
	andl	%r14d, %ecx	# e, tmp2306
	rorl	$2, %eax	#, tmp2309
	movl	%r10d, %r8d	# g, g
	xorl	%r10d, %ecx	# g, tmp2307
	movl	%r14d, %r10d	# e, tmp2320
	movl	%r8d, -16(%rsp)	# g, %sfp
	addl	%edx, %ecx	# tmp2304, tmp2308
	xorl	%ebp, %r10d	# f, tmp2320
	leal	(%rcx,%r15), %edx	#, t1
	movl	%ebx, %ecx	# a, tmp2310
	movl	4(%rsi), %r15d	# MEM[(const uint32_t *)chunk_21(D) + 4B], MEM[(const uint32_t *)chunk_21(D) + 4B]
	rorl	$13, %ecx	#, tmp2310
	xorl	%ecx, %eax	# tmp2310, tmp2311
	movl	%ebx, %ecx	# a, tmp2312
	leal	(%r11,%rdx), %r11d	#, d
	roll	$10, %ecx	#, tmp2312
	bswap	%r15d	# w1
	xorl	%ecx, %eax	# tmp2312, tmp2313
	movl	%ebx, %ecx	# a, tmp2314
	orl	%r13d, %ecx	# b, tmp2314
	andl	%r12d, %ecx	# c, tmp2315
	orl	%edi, %ecx	# tmp2316, tmp2317
	leal	1899447441(%r8,%r15), %edi	#, tmp2324
	movl	%ebx, %r8d	# a, tmp2338
	addl	%eax, %ecx	# tmp2313, t2
	movl	%r10d, %eax	# tmp2320, tmp2320
	movl	%r11d, %r10d	# d, tmp2329
	addl	%edx, %ecx	# t1, h
	andl	%r11d, %eax	# d, tmp2321
	movl	%r11d, %edx	# d, tmp2326
	xorl	%ebp, %eax	# f, tmp2322
	rorl	$6, %edx	#, tmp2326
	roll	$7, %r10d	#, tmp2329
	addl	%eax, %edi	# tmp2322, tmp2325
	movl	%edx, %eax	# tmp2326, tmp2326
	movl	%r11d, %edx	# d, tmp2327
	rorl	$11, %edx	#, tmp2327
	xorl	%eax, %edx	# tmp2326, tmp2328
	movl	%r10d, %eax	# tmp2329, tmp2329
	xorl	%edx, %eax	# tmp2328, tmp2330
	movl	%ecx, %edx	# h, tmp2331
	addl	%edi, %eax	# tmp2325, t1
	rorl	$2, %edx	#, tmp2331
	leal	(%r12,%rax), %r9d	#, c
	movl	%ecx, %r12d	# h, tmp2332
	rorl	$13, %r12d	#, tmp2332
	movl	%r12d, %edi	# tmp2332, tmp2332
	movl	%r14d, %r12d	# e, e
	xorl	%edx, %edi	# tmp2331, tmp2333
	movl	%ecx, %edx	# h, tmp2334
	andl	%ecx, %r8d	# h, tmp2338
	roll	$10, %edx	#, tmp2334
	movl	%r12d, -24(%rsp)	# e, %sfp
	xorl	%edx, %edi	# tmp2334, tmp2335
	movl	%ebx, %edx	# a, tmp2336
	orl	%ecx, %edx	# h, tmp2336
	andl	%r13d, %edx	# b, tmp2337
	orl	%r8d, %edx	# tmp2338, tmp2339
	addl	%edi, %edx	# tmp2335, t2
	addl	%eax, %edx	# t1, g
	movl	8(%rsi), %eax	# MEM[(const uint32_t *)chunk_21(D) + 8B], MEM[(const uint32_t *)chunk_21(D) + 8B]
	movl	%eax, %edi	# MEM[(const uint32_t *)chunk_21(D) + 8B], MEM[(const uint32_t *)chunk_21(D) + 8B]
	bswap	%edi	# MEM[(const uint32_t *)chunk_21(D) + 8B]
	movl	%edi, %r8d	# MEM[(const uint32_t *)chunk_21(D) + 8B], w2
	movl	%r14d, %edi	# e, tmp2342
	xorl	%r11d, %edi	# d, tmp2342
	movl	%r8d, -112(%rsp)	# w2, %sfp
	leal	-1245643825(%rbp,%r8), %r8d	#, tmp2346
	andl	%r9d, %edi	# c, tmp2343
	movl	%r9d, %ebp	# c, tmp2348
	xorl	%r14d, %edi	# e, tmp2344
	rorl	$6, %ebp	#, tmp2348
	movl	12(%rsi), %r14d	# MEM[(const uint32_t *)chunk_21(D) + 12B], MEM[(const uint32_t *)chunk_21(D) + 12B]
	addl	%edi, %r8d	# tmp2344, tmp2347
	movl	%ebp, %edi	# tmp2348, tmp2348
	movl	%r9d, %ebp	# c, tmp2349
	rorl	$11, %ebp	#, tmp2349
	movl	%ebp, %eax	# tmp2349, tmp2349
	movl	%r9d, %ebp	# c, tmp2351
	bswap	%r14d	# MEM[(const uint32_t *)chunk_21(D) + 12B]
	xorl	%edi, %eax	# tmp2348, tmp2350
	roll	$7, %ebp	#, tmp2351
	movl	%r14d, -108(%rsp)	# w3, %sfp
	xorl	%ebp, %eax	# tmp2351, tmp2352
	leal	(%r8,%rax), %edi	#, t1
	leal	0(%r13,%rdi), %ebp	#, b
	movl	%edx, %r13d	# g, tmp2353
	rorl	$2, %r13d	#, tmp2353
	movl	%r13d, %eax	# tmp2353, tmp2353
	movl	%edx, %r13d	# g, tmp2354
	rorl	$13, %r13d	#, tmp2354
	movl	%r13d, %r8d	# tmp2354, tmp2354
	movl	%edx, %r13d	# g, tmp2356
	xorl	%eax, %r8d	# tmp2353, tmp2355
	roll	$10, %r13d	#, tmp2356
	xorl	%r13d, %r8d	# tmp2356, tmp2357
	movl	%ecx, %r13d	# h, tmp2358
	orl	%edx, %r13d	# g, tmp2358
	movl	%r13d, %eax	# tmp2358, tmp2358
	movl	%ecx, %r13d	# h, tmp2360
	andl	%edx, %r13d	# g, tmp2360
	andl	%ebx, %eax	# a, tmp2359
	orl	%r13d, %eax	# tmp2360, tmp2361
	movl	%r11d, %r13d	# d, tmp2364
	xorl	%r9d, %r13d	# c, tmp2364
	addl	%r8d, %eax	# tmp2357, t2
	leal	-373957723(%r12,%r14), %r8d	#, tmp2368
	addl	%edi, %eax	# t1, f
	movl	%r13d, %edi	# tmp2364, tmp2364
	movl	%ebp, %r12d	# b, tmp2370
	andl	%ebp, %edi	# b, tmp2365
	movl	16(%rsi), %r13d	# MEM[(const uint32_t *)chunk_21(D) + 16B], MEM[(const uint32_t *)chunk_21(D) + 16B]
	xorl	%r11d, %edi	# d, tmp2366
	addl	%edi, %r8d	# tmp2366, tmp2369
	rorl	$6, %r12d	#, tmp2370
	movl	%r12d, %edi	# tmp2370, tmp2370
	movl	%ebp, %r12d	# b, tmp2371
	bswap	%r13d	# MEM[(const uint32_t *)chunk_21(D) + 16B]
	rorl	$11, %r12d	#, tmp2371
	leal	961987163(%r11,%r13), %r11d	#, tmp2390
	movl	%r13d, -104(%rsp)	# w4, %sfp
	movl	%r12d, %r10d	# tmp2371, tmp2371
	movl	%ebp, %r12d	# b, tmp2373
	xorl	%edi, %r10d	# tmp2370, tmp2372
	roll	$7, %r12d	#, tmp2373
	xorl	%r12d, %r10d	# tmp2373, tmp2374
	movl	%eax, %r12d	# f, tmp2375
	rorl	$2, %r12d	#, tmp2375
	leal	(%r8,%r10), %edi	#, t1
	movl	%r12d, %r10d	# tmp2375, tmp2375
	movl	%eax, %r12d	# f, tmp2376
	rorl	$13, %r12d	#, tmp2376
	leal	(%rbx,%rdi), %r14d	#, a
	movl	%r12d, %r8d	# tmp2376, tmp2376
	movl	%eax, %r12d	# f, tmp2378
	xorl	%r10d, %r8d	# tmp2375, tmp2377
	roll	$10, %r12d	#, tmp2378
	xorl	%r12d, %r8d	# tmp2378, tmp2379
	movl	%edx, %r12d	# g, tmp2380
	orl	%eax, %r12d	# f, tmp2380
	movl	%r12d, %r10d	# tmp2380, tmp2380
	movl	%edx, %r12d	# g, tmp2382
	andl	%eax, %r12d	# f, tmp2382
	andl	%ecx, %r10d	# h, tmp2381
	orl	%r12d, %r10d	# tmp2382, tmp2383
	movl	%r9d, %r12d	# c, tmp2386
	xorl	%ebp, %r12d	# b, tmp2386
	addl	%r8d, %r10d	# tmp2379, t2
	addl	%edi, %r10d	# t1, e
	movl	%r12d, %edi	# tmp2386, tmp2386
	movl	%r14d, %r12d	# a, tmp2392
	andl	%r14d, %edi	# a, tmp2387
	rorl	$6, %r12d	#, tmp2392
	xorl	%r9d, %edi	# c, tmp2388
	addl	%edi, %r11d	# tmp2388, tmp2391
	movl	%r12d, %edi	# tmp2392, tmp2392
	movl	%r14d, %r12d	# a, tmp2393
	rorl	$11, %r12d	#, tmp2393
	movl	%r12d, %r8d	# tmp2393, tmp2393
	movl	%r14d, %r12d	# a, tmp2395
	xorl	%edi, %r8d	# tmp2392, tmp2394
	roll	$7, %r12d	#, tmp2395
	xorl	%r12d, %r8d	# tmp2395, tmp2396
	movl	%r10d, %r12d	# e, tmp2397
	rorl	$2, %r12d	#, tmp2397
	leal	(%r11,%r8), %edi	#, t1
	movl	%r12d, %r8d	# tmp2397, tmp2397
	movl	%r10d, %r12d	# e, tmp2398
	rorl	$13, %r12d	#, tmp2398
	leal	(%rcx,%rdi), %r11d	#, h
	movl	%r12d, %ecx	# tmp2398, tmp2398
	movl	%r10d, %r12d	# e, tmp2400
	xorl	%r8d, %ecx	# tmp2397, tmp2399
	roll	$10, %r12d	#, tmp2400
	xorl	%r12d, %ecx	# tmp2400, tmp2401
	movl	%eax, %r12d	# f, tmp2402
	orl	%r10d, %r12d	# e, tmp2402
	movl	%r12d, %r8d	# tmp2402, tmp2402
	movl	%eax, %r12d	# f, tmp2404
	andl	%edx, %r8d	# g, tmp2403
	andl	%r10d, %r12d	# e, tmp2404
	orl	%r12d, %r8d	# tmp2404, tmp2405
	movl	20(%rsi), %r12d	# MEM[(const uint32_t *)chunk_21(D) + 20B], MEM[(const uint32_t *)chunk_21(D) + 20B]
	addl	%ecx, %r8d	# tmp2401, t2
	addl	%edi, %r8d	# t1, d
	movl	%ebp, %edi	# b, tmp2408
	xorl	%r14d, %edi	# a, tmp2408
	bswap	%r12d	# MEM[(const uint32_t *)chunk_21(D) + 20B]
	movl	%r12d, -80(%rsp)	# w5, %sfp
	movl	%edi, %ecx	# tmp2408, tmp2408
	leal	1508970993(%r9,%r12), %r9d	#, tmp2412
	movl	%r11d, %edi	# h, tmp2415
	movl	%r11d, %r12d	# h, tmp2414
	andl	%r11d, %ecx	# h, tmp2409
	rorl	$6, %r12d	#, tmp2414
	rorl	$11, %edi	#, tmp2415
	xorl	%ebp, %ecx	# b, tmp2410
	xorl	%r12d, %edi	# tmp2414, tmp2416
	movl	%r11d, %r12d	# h, tmp2417
	addl	%ecx, %r9d	# tmp2410, tmp2413
	roll	$7, %r12d	#, tmp2417
	xorl	%r12d, %edi	# tmp2417, tmp2418
	leal	(%r9,%rdi), %ecx	#, t1
	movl	%r8d, %r9d	# d, tmp2422
	roll	$10, %r9d	#, tmp2422
	leal	(%rdx,%rcx), %ebx	#, g
	movl	%r8d, %edx	# d, tmp2419
	rorl	$2, %edx	#, tmp2419
	movl	%edx, %edi	# tmp2419, tmp2419
	movl	%r8d, %edx	# d, tmp2420
	rorl	$13, %edx	#, tmp2420
	xorl	%edi, %edx	# tmp2419, tmp2421
	xorl	%r9d, %edx	# tmp2422, tmp2423
	movl	%r10d, %r9d	# e, tmp2424
	orl	%r8d, %r9d	# d, tmp2424
	movl	%r9d, %edi	# tmp2424, tmp2424
	movl	%r10d, %r9d	# e, tmp2426
	andl	%r8d, %r9d	# d, tmp2426
	andl	%eax, %edi	# f, tmp2425
	orl	%r9d, %edi	# tmp2426, tmp2427
	movl	%ebx, %r9d	# g, tmp2437
	addl	%edx, %edi	# tmp2423, t2
	movl	24(%rsi), %edx	# MEM[(const uint32_t *)chunk_21(D) + 24B], MEM[(const uint32_t *)chunk_21(D) + 24B]
	rorl	$11, %r9d	#, tmp2437
	addl	%ecx, %edi	# t1, c
	bswap	%edx	# MEM[(const uint32_t *)chunk_21(D) + 24B]
	movl	%edx, %ecx	# MEM[(const uint32_t *)chunk_21(D) + 24B], w6
	movl	%r14d, %edx	# a, tmp2430
	xorl	%r11d, %edx	# h, tmp2430
	movl	%ecx, -72(%rsp)	# w6, %sfp
	leal	-1841331548(%rbp,%rcx), %ecx	#, tmp2434
	andl	%ebx, %edx	# g, tmp2431
	movl	%edi, %ebp	# c, tmp2442
	xorl	%r14d, %edx	# a, tmp2432
	addl	%edx, %ecx	# tmp2432, tmp2435
	movl	%ebx, %edx	# g, tmp2436
	rorl	$6, %edx	#, tmp2436
	xorl	%edx, %r9d	# tmp2436, tmp2438
	movl	%ebx, %edx	# g, tmp2439
	roll	$7, %edx	#, tmp2439
	rorl	$13, %ebp	#, tmp2442
	xorl	%edx, %r9d	# tmp2439, tmp2440
	leal	(%rcx,%r9), %edx	#, t1
	movl	%edi, %r9d	# c, tmp2441
	movl	%ebp, %ecx	# tmp2442, tmp2442
	rorl	$2, %r9d	#, tmp2441
	movl	%r8d, %ebp	# d, tmp2448
	xorl	%r9d, %ecx	# tmp2441, tmp2443
	movl	%edi, %r9d	# c, tmp2444
	andl	%edi, %ebp	# c, tmp2448
	roll	$10, %r9d	#, tmp2444
	addl	%edx, %eax	# t1, f
	xorl	%r9d, %ecx	# tmp2444, tmp2445
	movl	%r8d, %r9d	# d, tmp2446
	movl	%eax, %r12d	# f, tmp2459
	orl	%edi, %r9d	# c, tmp2446
	rorl	$11, %r12d	#, tmp2459
	andl	%r10d, %r9d	# e, tmp2447
	orl	%ebp, %r9d	# tmp2448, tmp2449
	addl	%ecx, %r9d	# tmp2445, t2
	movl	%r12d, %ecx	# tmp2459, tmp2459
	addl	%edx, %r9d	# t1, b
	movl	28(%rsi), %edx	# MEM[(const uint32_t *)chunk_21(D) + 28B], MEM[(const uint32_t *)chunk_21(D) + 28B]
	movl	%r9d, %r12d	# b, tmp2466
	roll	$10, %r12d	#, tmp2466
	bswap	%edx	# MEM[(const uint32_t *)chunk_21(D) + 28B]
	movl	%edx, %ebp	# MEM[(const uint32_t *)chunk_21(D) + 28B], w7
	movl	%r11d, %edx	# h, tmp2452
	xorl	%ebx, %edx	# g, tmp2452
	movl	%ebp, -68(%rsp)	# w7, %sfp
	leal	-1424204075(%r14,%rbp), %ebp	#, tmp2456
	andl	%eax, %edx	# f, tmp2453
	xorl	%r11d, %edx	# h, tmp2454
	addl	%edx, %ebp	# tmp2454, tmp2457
	movl	%eax, %edx	# f, tmp2458
	rorl	$6, %edx	#, tmp2458
	xorl	%edx, %ecx	# tmp2458, tmp2460
	movl	%eax, %edx	# f, tmp2461
	roll	$7, %edx	#, tmp2461
	xorl	%edx, %ecx	# tmp2461, tmp2462
	leal	0(%rbp,%rcx), %edx	#, t1
	movl	%r9d, %ebp	# b, tmp2463
	rorl	$2, %ebp	#, tmp2463
	movl	%ebp, %ecx	# tmp2463, tmp2463
	movl	%r9d, %ebp	# b, tmp2464
	addl	%edx, %r10d	# t1, e
	rorl	$13, %ebp	#, tmp2464
	xorl	%ecx, %ebp	# tmp2463, tmp2465
	xorl	%r12d, %ebp	# tmp2466, tmp2467
	movl	%edi, %r12d	# c, tmp2468
	orl	%r9d, %r12d	# b, tmp2468
	movl	%r12d, %ecx	# tmp2468, tmp2468
	movl	%edi, %r12d	# c, tmp2470
	andl	%r9d, %r12d	# b, tmp2470
	andl	%r8d, %ecx	# d, tmp2469
	orl	%r12d, %ecx	# tmp2470, tmp2471
	movl	%r9d, %r12d	# b, tmp2492
	addl	%ebp, %ecx	# tmp2467, t2
	movl	%ebx, %ebp	# g, tmp2474
	addl	%edx, %ecx	# t1, a
	movl	32(%rsi), %edx	# MEM[(const uint32_t *)chunk_21(D) + 32B], MEM[(const uint32_t *)chunk_21(D) + 32B]
	xorl	%eax, %ebp	# f, tmp2474
	andl	%r10d, %ebp	# e, tmp2475
	andl	%ecx, %r12d	# a, tmp2492
	xorl	%ebx, %ebp	# g, tmp2476
	bswap	%edx	# MEM[(const uint32_t *)chunk_21(D) + 32B]
	leal	-670586216(%r11,%rdx), %r11d	#, tmp2478
	movl	%edx, -64(%rsp)	# w8, %sfp
	movl	%r10d, %edx	# e, tmp2481
	rorl	$11, %edx	#, tmp2481
	addl	%r11d, %ebp	# tmp2478, tmp2479
	movl	%r10d, %r11d	# e, tmp2480
	rorl	$6, %r11d	#, tmp2480
	xorl	%r11d, %edx	# tmp2480, tmp2482
	movl	%r10d, %r11d	# e, tmp2483
	roll	$7, %r11d	#, tmp2483
	xorl	%r11d, %edx	# tmp2483, tmp2484
	leal	0(%rbp,%rdx), %r11d	#, t1
	movl	%ecx, %edx	# a, tmp2485
	movl	%ecx, %ebp	# a, tmp2486
	rorl	$2, %edx	#, tmp2485
	rorl	$13, %ebp	#, tmp2486
	xorl	%edx, %ebp	# tmp2485, tmp2487
	movl	%ecx, %edx	# a, tmp2488
	addl	%r11d, %r8d	# t1, d
	roll	$10, %edx	#, tmp2488
	movl	%r8d, %r13d	# d, tmp2503
	xorl	%edx, %ebp	# tmp2488, tmp2489
	movl	%r9d, %edx	# b, tmp2490
	rorl	$11, %r13d	#, tmp2503
	orl	%ecx, %edx	# a, tmp2490
	andl	%edi, %edx	# c, tmp2491
	orl	%r12d, %edx	# tmp2492, tmp2493
	movl	%ecx, %r12d	# a, tmp2514
	addl	%ebp, %edx	# tmp2489, t2
	addl	%r11d, %edx	# t1, h
	movl	36(%rsi), %r11d	# MEM[(const uint32_t *)chunk_21(D) + 36B], MEM[(const uint32_t *)chunk_21(D) + 36B]
	bswap	%r11d	# MEM[(const uint32_t *)chunk_21(D) + 36B]
	movl	%r11d, %ebp	# MEM[(const uint32_t *)chunk_21(D) + 36B], w9
	movl	%eax, %r11d	# f, tmp2496
	xorl	%r10d, %r11d	# e, tmp2496
	leal	310598401(%rbx,%rbp), %ebx	#, tmp2500
	movl	%ebp, -100(%rsp)	# w9, %sfp
	andl	%r8d, %r11d	# d, tmp2497
	xorl	%eax, %r11d	# f, tmp2498
	addl	%r11d, %ebx	# tmp2498, tmp2501
	movl	%r8d, %r11d	# d, tmp2502
	rorl	$6, %r11d	#, tmp2502
	xorl	%r11d, %r13d	# tmp2502, tmp2504
	movl	%r8d, %r11d	# d, tmp2505
	roll	$7, %r11d	#, tmp2505
	xorl	%r11d, %r13d	# tmp2505, tmp2506
	andl	%edx, %r12d	# h, tmp2514
	leal	(%rbx,%r13), %r11d	#, t1
	movl	%edx, %r13d	# h, tmp2507
	movl	%edx, %ebx	# h, tmp2508
	rorl	$2, %r13d	#, tmp2507
	rorl	$13, %ebx	#, tmp2508
	xorl	%r13d, %ebx	# tmp2507, tmp2509
	movl	%edx, %r13d	# h, tmp2510
	addl	%r11d, %edi	# t1, c
	roll	$10, %r13d	#, tmp2510
	xorl	%r13d, %ebx	# tmp2510, tmp2511
	movl	%ecx, %r13d	# a, tmp2512
	orl	%edx, %r13d	# h, tmp2512
	andl	%r9d, %r13d	# b, tmp2513
	orl	%r12d, %r13d	# tmp2514, tmp2515
	addl	%ebx, %r13d	# tmp2511, t2
	movl	%edi, %ebx	# c, tmp2524
	addl	%r11d, %r13d	# t1, g
	movl	40(%rsi), %r11d	# MEM[(const uint32_t *)chunk_21(D) + 40B], MEM[(const uint32_t *)chunk_21(D) + 40B]
	rorl	$6, %ebx	#, tmp2524
	bswap	%r11d	# MEM[(const uint32_t *)chunk_21(D) + 40B]
	movl	%r11d, %r12d	# MEM[(const uint32_t *)chunk_21(D) + 40B], w10
	movl	%r10d, %r11d	# e, tmp2518
	xorl	%r8d, %r11d	# d, tmp2518
	leal	607225278(%rax,%r12), %eax	#, tmp2522
	movl	%r12d, -96(%rsp)	# w10, %sfp
	andl	%edi, %r11d	# c, tmp2519
	xorl	%r10d, %r11d	# e, tmp2520
	addl	%eax, %r11d	# tmp2522, tmp2523
	movl	%ebx, %eax	# tmp2524, tmp2524
	movl	%edi, %ebx	# c, tmp2525
	rorl	$11, %ebx	#, tmp2525
	movl	%ebx, %r14d	# tmp2525, tmp2525
	movl	%edi, %ebx	# c, tmp2527
	xorl	%eax, %r14d	# tmp2524, tmp2526
	roll	$7, %ebx	#, tmp2527
	xorl	%ebx, %r14d	# tmp2527, tmp2528
	movl	%r13d, %ebx	# g, tmp2532
	leal	(%r11,%r14), %eax	#, t1
	movl	%r13d, %r11d	# g, tmp2529
	roll	$10, %ebx	#, tmp2532
	rorl	$2, %r11d	#, tmp2529
	movl	%r11d, %r14d	# tmp2529, tmp2529
	movl	%r13d, %r11d	# g, tmp2530
	addl	%eax, %r9d	# t1, b
	rorl	$13, %r11d	#, tmp2530
	xorl	%r14d, %r11d	# tmp2529, tmp2531
	xorl	%ebx, %r11d	# tmp2532, tmp2533
	movl	%edx, %ebx	# h, tmp2534
	orl	%r13d, %ebx	# g, tmp2534
	movl	%ebx, %r14d	# tmp2534, tmp2534
	movl	%edx, %ebx	# h, tmp2536
	andl	%r13d, %ebx	# g, tmp2536
	andl	%ecx, %r14d	# a, tmp2535
	orl	%ebx, %r14d	# tmp2536, tmp2537
	movl	%r8d, %ebx	# d, tmp2540
	addl	%r11d, %r14d	# tmp2533, t2
	xorl	%edi, %ebx	# c, tmp2540
	addl	%eax, %r14d	# t1, f
	movl	44(%rsi), %eax	# MEM[(const uint32_t *)chunk_21(D) + 44B], MEM[(const uint32_t *)chunk_21(D) + 44B]
	movl	%eax, %r11d	# MEM[(const uint32_t *)chunk_21(D) + 44B], MEM[(const uint32_t *)chunk_21(D) + 44B]
	movl	%ebx, %eax	# tmp2540, tmp2540
	movl	%r9d, %ebx	# b, tmp2546
	bswap	%r11d	# MEM[(const uint32_t *)chunk_21(D) + 44B]
	andl	%r9d, %eax	# b, tmp2541
	rorl	$6, %ebx	#, tmp2546
	leal	1426881987(%r10,%r11), %r10d	#, tmp2544
	xorl	%r8d, %eax	# d, tmp2542
	movl	%r11d, -76(%rsp)	# w11, %sfp
	movl	%r13d, %r11d	# g, tmp2558
	addl	%eax, %r10d	# tmp2542, tmp2545
	movl	%ebx, %eax	# tmp2546, tmp2546
	movl	%r9d, %ebx	# b, tmp2547
	rorl	$11, %ebx	#, tmp2547
	andl	%r14d, %r11d	# f, tmp2558
	movl	%ebx, %r12d	# tmp2547, tmp2547
	movl	%r9d, %ebx	# b, tmp2549
	xorl	%eax, %r12d	# tmp2546, tmp2548
	roll	$7, %ebx	#, tmp2549
	xorl	%ebx, %r12d	# tmp2549, tmp2550
	movl	%r14d, %ebx	# f, tmp2554
	leal	(%r10,%r12), %eax	#, t1
	movl	%r14d, %r10d	# f, tmp2551
	roll	$10, %ebx	#, tmp2554
	rorl	$2, %r10d	#, tmp2551
	movl	%r10d, %r12d	# tmp2551, tmp2551
	movl	%r14d, %r10d	# f, tmp2552
	addl	%eax, %ecx	# t1, a
	rorl	$13, %r10d	#, tmp2552
	xorl	%r12d, %r10d	# tmp2551, tmp2553
	xorl	%ebx, %r10d	# tmp2554, tmp2555
	movl	%r13d, %ebx	# g, tmp2556
	orl	%r14d, %ebx	# f, tmp2556
	movl	%ebx, %r12d	# tmp2556, tmp2556
	movl	56(%rsi), %ebx	# MEM[(const uint32_t *)chunk_21(D) + 56B], MEM[(const uint32_t *)chunk_21(D) + 56B]
	andl	%edx, %r12d	# h, tmp2557
	orl	%r11d, %r12d	# tmp2558, tmp2559
	movl	60(%rsi), %r11d	# MEM[(const uint32_t *)chunk_21(D) + 60B], MEM[(const uint32_t *)chunk_21(D) + 60B]
	addl	%r10d, %r12d	# tmp2555, t2
	movl	%edi, %r10d	# c, tmp2562
	bswap	%ebx	# w14
	addl	%eax, %r12d	# t1, e
	movl	48(%rsi), %eax	# MEM[(const uint32_t *)chunk_21(D) + 48B], MEM[(const uint32_t *)chunk_21(D) + 48B]
	xorl	%r9d, %r10d	# b, tmp2562
	bswap	%r11d	# w15
	movl	%eax, %ebp	# MEM[(const uint32_t *)chunk_21(D) + 48B], MEM[(const uint32_t *)chunk_21(D) + 48B]
	movl	%r10d, %eax	# tmp2562, tmp2562
	movl	%ecx, %r10d	# a, tmp2568
	bswap	%ebp	# MEM[(const uint32_t *)chunk_21(D) + 48B]
	andl	%ecx, %eax	# a, tmp2563
	rorl	$6, %r10d	#, tmp2568
	leal	1925078388(%r8,%rbp), %r8d	#, tmp2566
	xorl	%edi, %eax	# c, tmp2564
	movl	%ebp, -60(%rsp)	# w12, %sfp
	addl	%eax, %r8d	# tmp2564, tmp2567
	movl	%r10d, %eax	# tmp2568, tmp2568
	movl	%ecx, %r10d	# a, tmp2569
	rorl	$11, %r10d	#, tmp2569
	movl	%r10d, %ebp	# tmp2569, tmp2569
	movl	%ecx, %r10d	# a, tmp2571
	xorl	%eax, %ebp	# tmp2568, tmp2570
	roll	$7, %r10d	#, tmp2571
	xorl	%r10d, %ebp	# tmp2571, tmp2572
	movl	%r12d, %r10d	# e, tmp2576
	leal	(%r8,%rbp), %eax	#, t1
	movl	%r12d, %r8d	# e, tmp2573
	addl	%eax, %edx	# t1, h
	rorl	$2, %r8d	#, tmp2573
	roll	$10, %r10d	#, tmp2576
	movl	%r8d, %ebp	# tmp2573, tmp2573
	movl	%r12d, %r8d	# e, tmp2574
	rorl	$13, %r8d	#, tmp2574
	xorl	%ebp, %r8d	# tmp2573, tmp2575
	xorl	%r10d, %r8d	# tmp2576, tmp2577
	movl	%r14d, %r10d	# f, tmp2578
	orl	%r12d, %r10d	# e, tmp2578
	movl	%r10d, %ebp	# tmp2578, tmp2578
	movl	%r14d, %r10d	# f, tmp2580
	andl	%r12d, %r10d	# e, tmp2580
	andl	%r13d, %ebp	# g, tmp2579
	orl	%r10d, %ebp	# tmp2580, tmp2581
	movl	%r9d, %r10d	# b, tmp2584
	addl	%r8d, %ebp	# tmp2577, t2
	xorl	%ecx, %r10d	# a, tmp2584
	addl	%eax, %ebp	# t1, d
	movl	52(%rsi), %eax	# MEM[(const uint32_t *)chunk_21(D) + 52B], MEM[(const uint32_t *)chunk_21(D) + 52B]
	movl	%edx, %esi	# h, tmp2628
	movl	%eax, %r8d	# MEM[(const uint32_t *)chunk_21(D) + 52B], MEM[(const uint32_t *)chunk_21(D) + 52B]
	movl	%r10d, %eax	# tmp2584, tmp2584
	movl	%edx, %r10d	# h, tmp2590
	bswap	%r8d	# MEM[(const uint32_t *)chunk_21(D) + 52B]
	andl	%edx, %eax	# h, tmp2585
	rorl	$6, %r10d	#, tmp2590
	leal	-2132889090(%rdi,%r8), %edi	#, tmp2588
	xorl	%r9d, %eax	# b, tmp2586
	movl	%r8d, -92(%rsp)	# w13, %sfp
	leal	-1680079193(%r9,%rbx), %r9d	#, tmp2610
	addl	%eax, %edi	# tmp2586, tmp2589
	movl	%r10d, %eax	# tmp2590, tmp2590
	movl	%edx, %r10d	# h, tmp2591
	rorl	$11, %r10d	#, tmp2591
	movl	%r10d, %r8d	# tmp2591, tmp2591
	movl	%edx, %r10d	# h, tmp2593
	xorl	%eax, %r8d	# tmp2590, tmp2592
	roll	$7, %r10d	#, tmp2593
	xorl	%r10d, %r8d	# tmp2593, tmp2594
	movl	%ebp, %r10d	# d, tmp2598
	leal	(%rdi,%r8), %eax	#, t1
	movl	%ebp, %edi	# d, tmp2595
	roll	$10, %r10d	#, tmp2598
	rorl	$2, %edi	#, tmp2595
	movl	%edi, %r8d	# tmp2595, tmp2595
	movl	%ebp, %edi	# d, tmp2596
	addl	%eax, %r13d	# t1, g
	rorl	$13, %edi	#, tmp2596
	xorl	%r8d, %edi	# tmp2595, tmp2597
	xorl	%r10d, %edi	# tmp2598, tmp2599
	movl	%r12d, %r10d	# e, tmp2600
	orl	%ebp, %r10d	# d, tmp2600
	movl	%r10d, %r8d	# tmp2600, tmp2600
	movl	%r12d, %r10d	# e, tmp2602
	andl	%ebp, %r10d	# d, tmp2602
	andl	%r14d, %r8d	# f, tmp2601
	orl	%r10d, %r8d	# tmp2602, tmp2603
	movl	%r13d, %r10d	# g, tmp2615
	addl	%edi, %r8d	# tmp2599, t2
	movl	%ecx, %edi	# a, tmp2606
	addl	%eax, %r8d	# t1, c
	xorl	%edx, %edi	# h, tmp2606
	roll	$7, %r10d	#, tmp2615
	movl	%edi, %eax	# tmp2606, tmp2606
	movl	%r13d, %edi	# g, tmp2612
	xorl	%r13d, %esi	# g, tmp2628
	andl	%r13d, %eax	# g, tmp2607
	rorl	$6, %edi	#, tmp2612
	xorl	%ecx, %eax	# a, tmp2608
	leal	-1046744716(%rcx,%r11), %ecx	#, tmp2632
	addl	%eax, %r9d	# tmp2608, tmp2611
	movl	%edi, %eax	# tmp2612, tmp2612
	movl	%r13d, %edi	# g, tmp2613
	rorl	$11, %edi	#, tmp2613
	xorl	%eax, %edi	# tmp2612, tmp2614
	xorl	%r10d, %edi	# tmp2615, tmp2616
	movl	%ebp, %r10d	# d, tmp2624
	leal	(%r9,%rdi), %eax	#, t1
	movl	%r8d, %r9d	# c, tmp2617
	andl	%r8d, %r10d	# c, tmp2624
	rorl	$2, %r9d	#, tmp2617
	movl	%r9d, %edi	# tmp2617, tmp2617
	movl	%r8d, %r9d	# c, tmp2618
	addl	%eax, %r14d	# t1, f
	rorl	$13, %r9d	#, tmp2618
	xorl	%edi, %r9d	# tmp2617, tmp2619
	movl	%r8d, %edi	# c, tmp2620
	roll	$10, %edi	#, tmp2620
	xorl	%edi, %r9d	# tmp2620, tmp2621
	movl	%ebp, %edi	# d, tmp2622
	orl	%r8d, %edi	# c, tmp2622
	andl	%r12d, %edi	# e, tmp2623
	orl	%r10d, %edi	# tmp2624, tmp2625
	addl	%r9d, %edi	# tmp2621, t2
	movl	%r14d, %r9d	# f, tmp2637
	addl	%eax, %edi	# t1, b
	movl	%esi, %eax	# tmp2628, tmp2628
	movl	%r14d, %esi	# f, tmp2634
	andl	%r14d, %eax	# f, tmp2629
	rorl	$6, %esi	#, tmp2634
	roll	$7, %r9d	#, tmp2637
	xorl	%edx, %eax	# h, tmp2630
	addl	%eax, %ecx	# tmp2630, tmp2633
	movl	%esi, %eax	# tmp2634, tmp2634
	movl	%r14d, %esi	# f, tmp2635
	rorl	$11, %esi	#, tmp2635
	xorl	%eax, %esi	# tmp2634, tmp2636
	xorl	%r9d, %esi	# tmp2637, tmp2638
	movl	%edi, %r9d	# b, tmp2640
	leal	(%rcx,%rsi), %eax	#, t1
	movl	%edi, %esi	# b, tmp2639
	addl	%eax, %r12d	# t1, e
	rorl	$2, %esi	#, tmp2639
	rorl	$13, %r9d	#, tmp2640
	movl	%r9d, %ecx	# tmp2640, tmp2640
	movl	%r8d, %r9d	# c, tmp2646
	xorl	%esi, %ecx	# tmp2639, tmp2641
	movl	%edi, %esi	# b, tmp2642
	andl	%edi, %r9d	# b, tmp2646
	roll	$10, %esi	#, tmp2642
	xorl	%esi, %ecx	# tmp2642, tmp2643
	movl	%r8d, %esi	# c, tmp2644
	orl	%edi, %esi	# b, tmp2644
	andl	%ebp, %esi	# d, tmp2645
	orl	%r9d, %esi	# tmp2646, tmp2647
	movl	%ebx, %r9d	# w14, tmp2649
	roll	$15, %r9d	#, tmp2649
	addl	%ecx, %esi	# tmp2643, t2
	movl	%r9d, %r10d	# tmp2649, tmp2649
	movl	%ebx, %r9d	# w14, tmp2650
	addl	%eax, %esi	# t1, a
	roll	$13, %r9d	#, tmp2650
	movl	%r9d, %eax	# tmp2650, tmp2650
	movl	%ebx, %r9d	# w14, tmp2652
	shrl	$10, %r9d	#, tmp2652
	xorl	%r10d, %eax	# tmp2649, tmp2651
	movl	%r9d, %r10d	# tmp2652, tmp2652
	movl	-88(%rsp), %r9d	# %sfp, w0
	addl	-100(%rsp), %r9d	# %sfp, w0
	xorl	%eax, %r10d	# tmp2651, tmp2653
	leal	(%r10,%r9), %eax	#, _2597
	movl	%r15d, %r9d	# w1, tmp2655
	rorl	$7, %r9d	#, tmp2655
	movl	%r9d, %ecx	# tmp2655, tmp2655
	movl	%r15d, %r9d	# w1, tmp2656
	roll	$14, %r9d	#, tmp2656
	movl	%r9d, %r10d	# tmp2656, tmp2656
	movl	%r15d, %r9d	# w1, tmp2658
	xorl	%ecx, %r10d	# tmp2655, tmp2657
	shrl	$3, %r9d	#, tmp2658
	xorl	%r9d, %r10d	# tmp2658, tmp2659
	movl	%r13d, %r9d	# g, tmp2660
	xorl	%r14d, %r9d	# f, tmp2660
	addl	%eax, %r10d	# _2597, w0
	movl	%r9d, %eax	# tmp2660, tmp2660
	leal	-459576895(%rdx,%r10), %edx	#, tmp2664
	movl	%r12d, %r9d	# e, tmp2666
	andl	%r12d, %eax	# e, tmp2661
	rorl	$6, %r9d	#, tmp2666
	xorl	%r13d, %eax	# g, tmp2662
	addl	%eax, %edx	# tmp2662, tmp2665
	movl	%r9d, %eax	# tmp2666, tmp2666
	movl	%r12d, %r9d	# e, tmp2667
	rorl	$11, %r9d	#, tmp2667
	movl	%r9d, %ecx	# tmp2667, tmp2667
	movl	%r12d, %r9d	# e, tmp2669
	xorl	%eax, %ecx	# tmp2666, tmp2668
	roll	$7, %r9d	#, tmp2669
	xorl	%r9d, %ecx	# tmp2669, tmp2670
	movl	%esi, %r9d	# a, tmp2671
	leal	(%rdx,%rcx), %eax	#, t1
	addl	%eax, %ebp	# t1, d
	rorl	$2, %r9d	#, tmp2671
	addl	-96(%rsp), %r15d	# %sfp, tmp2686
	movl	%r9d, %ecx	# tmp2671, tmp2671
	movl	%esi, %r9d	# a, tmp2672
	rorl	$13, %r9d	#, tmp2672
	movl	%r9d, %edx	# tmp2672, tmp2672
	movl	%esi, %r9d	# a, tmp2674
	xorl	%ecx, %edx	# tmp2671, tmp2673
	roll	$10, %r9d	#, tmp2674
	xorl	%r9d, %edx	# tmp2674, tmp2675
	movl	%edi, %r9d	# b, tmp2676
	orl	%esi, %r9d	# a, tmp2676
	movl	%r9d, %ecx	# tmp2676, tmp2676
	movl	%edi, %r9d	# b, tmp2678
	andl	%esi, %r9d	# a, tmp2678
	andl	%r8d, %ecx	# c, tmp2677
	orl	%r9d, %ecx	# tmp2678, tmp2679
	movl	%r11d, %r9d	# w15, tmp2681
	addl	%edx, %ecx	# tmp2675, t2
	movl	%r11d, %edx	# w15, tmp2682
	roll	$15, %r9d	#, tmp2681
	roll	$13, %edx	#, tmp2682
	addl	%eax, %ecx	# t1, h
	movl	%edx, %eax	# tmp2682, tmp2682
	xorl	%r9d, %eax	# tmp2681, tmp2683
	movl	%r11d, %r9d	# w15, tmp2684
	shrl	$10, %r9d	#, tmp2684
	xorl	%eax, %r9d	# tmp2683, tmp2685
	addl	%r9d, %r15d	# tmp2685, _2592
	movl	-112(%rsp), %r9d	# %sfp, w2
	movl	%r9d, %edx	# w2, tmp2687
	rorl	$7, %edx	#, tmp2687
	movl	%edx, %eax	# tmp2687, tmp2687
	movl	%r9d, %edx	# w2, w2
	roll	$14, %r9d	#, tmp2688
	xorl	%eax, %r9d	# tmp2687, tmp2689
	shrl	$3, %edx	#, tmp2690
	xorl	%edx, %r9d	# tmp2690, tmp2691
	addl	%r15d, %r9d	# _2592, w1
	movl	%r14d, %r15d	# f, tmp2692
	xorl	%r12d, %r15d	# e, tmp2692
	leal	-272742522(%r13,%r9), %r13d	#, tmp2696
	movl	%r15d, %eax	# tmp2692, tmp2692
	movl	%ebp, %r15d	# d, tmp2698
	andl	%ebp, %eax	# d, tmp2693
	rorl	$6, %r15d	#, tmp2698
	xorl	%r14d, %eax	# f, tmp2694
	addl	%eax, %r13d	# tmp2694, tmp2697
	movl	%r15d, %eax	# tmp2698, tmp2698
	movl	%ebp, %r15d	# d, tmp2699
	rorl	$11, %r15d	#, tmp2699
	movl	%r15d, %edx	# tmp2699, tmp2699
	movl	%ebp, %r15d	# d, tmp2701
	xorl	%eax, %edx	# tmp2698, tmp2700
	roll	$7, %r15d	#, tmp2701
	xorl	%r15d, %edx	# tmp2701, tmp2702
	movl	%ecx, %r15d	# h, tmp2703
	rorl	$2, %r15d	#, tmp2703
	leal	0(%r13,%rdx), %eax	#, t1
	movl	%r15d, %edx	# tmp2703, tmp2703
	movl	%ecx, %r15d	# h, tmp2704
	rorl	$13, %r15d	#, tmp2704
	addl	%eax, %r8d	# t1, c
	movl	%r15d, %r13d	# tmp2704, tmp2704
	movl	%ecx, %r15d	# h, tmp2706
	xorl	%edx, %r13d	# tmp2703, tmp2705
	roll	$10, %r15d	#, tmp2706
	xorl	%r15d, %r13d	# tmp2706, tmp2707
	movl	%esi, %r15d	# a, tmp2708
	orl	%ecx, %r15d	# h, tmp2708
	movl	%r15d, %edx	# tmp2708, tmp2708
	movl	%esi, %r15d	# a, tmp2710
	andl	%ecx, %r15d	# h, tmp2710
	andl	%edi, %edx	# b, tmp2709
	orl	%r15d, %edx	# tmp2710, tmp2711
	addl	%r13d, %edx	# tmp2707, t2
	movl	-108(%rsp), %r13d	# %sfp, w3
	addl	%eax, %edx	# t1, g
	movl	%r13d, %r15d	# w3, tmp2713
	rorl	$7, %r15d	#, tmp2713
	movl	%r15d, %eax	# tmp2713, tmp2713
	movl	%r13d, %r15d	# w3, w3
	roll	$14, %r13d	#, tmp2714
	shrl	$3, %r15d	#, tmp2716
	xorl	%eax, %r13d	# tmp2713, tmp2715
	movl	%r15d, %eax	# tmp2716, tmp2716
	movl	%r10d, %r15d	# w0, tmp2719
	xorl	%r13d, %eax	# tmp2715, tmp2717
	movl	-112(%rsp), %r13d	# %sfp, w2
	addl	-76(%rsp), %r13d	# %sfp, w2
	roll	$15, %r15d	#, tmp2719
	addl	%r13d, %eax	# tmp2718, _2587
	movl	%r10d, %r13d	# w0, tmp2720
	roll	$13, %r13d	#, tmp2720
	xorl	%r15d, %r13d	# tmp2719, tmp2721
	movl	%r10d, %r15d	# w0, tmp2722
	shrl	$10, %r15d	#, tmp2722
	xorl	%r15d, %r13d	# tmp2722, tmp2723
	leal	0(%r13,%rax), %r15d	#, w2
	movl	%r12d, %r13d	# e, tmp2724
	movl	%r8d, %eax	# c, tmp2731
	xorl	%ebp, %r13d	# d, tmp2724
	rorl	$11, %eax	#, tmp2731
	andl	%r8d, %r13d	# c, tmp2725
	leal	264347078(%r14,%r15), %r14d	#, tmp2728
	movl	%r15d, -88(%rsp)	# w2, %sfp
	xorl	%r12d, %r13d	# e, tmp2726
	movl	%ecx, %r15d	# h, tmp2742
	addl	%r13d, %r14d	# tmp2726, tmp2729
	movl	%r8d, %r13d	# c, tmp2730
	rorl	$6, %r13d	#, tmp2730
	xorl	%r13d, %eax	# tmp2730, tmp2732
	movl	%r8d, %r13d	# c, tmp2733
	andl	%edx, %r15d	# g, tmp2742
	roll	$7, %r13d	#, tmp2733
	xorl	%r13d, %eax	# tmp2733, tmp2734
	leal	(%r14,%rax), %r13d	#, t1
	movl	%edx, %eax	# g, tmp2735
	movl	%edx, %r14d	# g, tmp2736
	rorl	$2, %eax	#, tmp2735
	rorl	$13, %r14d	#, tmp2736
	xorl	%eax, %r14d	# tmp2735, tmp2737
	movl	%edx, %eax	# g, tmp2738
	addl	%r13d, %edi	# t1, b
	roll	$10, %eax	#, tmp2738
	xorl	%eax, %r14d	# tmp2738, tmp2739
	movl	%ecx, %eax	# h, tmp2740
	orl	%edx, %eax	# g, tmp2740
	andl	%esi, %eax	# a, tmp2741
	orl	%r15d, %eax	# tmp2742, tmp2743
	movl	-104(%rsp), %r15d	# %sfp, w4
	addl	%r14d, %eax	# tmp2739, t2
	addl	%r13d, %eax	# t1, f
	movl	%r15d, %r14d	# w4, tmp2745
	movl	%r15d, %r13d	# w4, tmp2746
	roll	$14, %r13d	#, tmp2746
	rorl	$7, %r14d	#, tmp2745
	xorl	%r13d, %r14d	# tmp2746, tmp2747
	movl	%r15d, %r13d	# w4, tmp2748
	shrl	$3, %r13d	#, tmp2748
	xorl	%r14d, %r13d	# tmp2747, tmp2749
	movl	-108(%rsp), %r14d	# %sfp, w3
	addl	-60(%rsp), %r14d	# %sfp, w3
	addl	%r14d, %r13d	# tmp2750, _2582
	movl	%r9d, %r14d	# w1, tmp2751
	roll	$15, %r14d	#, tmp2751
	movl	%r14d, %r15d	# tmp2751, tmp2751
	movl	%r9d, %r14d	# w1, tmp2752
	roll	$13, %r14d	#, tmp2752
	xorl	%r15d, %r14d	# tmp2751, tmp2753
	movl	%r9d, %r15d	# w1, tmp2754
	shrl	$10, %r15d	#, tmp2754
	xorl	%r15d, %r14d	# tmp2754, tmp2755
	movl	%edi, %r15d	# b, tmp2763
	addl	%r13d, %r14d	# _2582, w3
	movl	%ebp, %r13d	# d, tmp2756
	xorl	%r8d, %r13d	# c, tmp2756
	leal	604807628(%r12,%r14), %r12d	#, tmp2760
	movl	%r14d, -84(%rsp)	# w3, %sfp
	andl	%edi, %r13d	# b, tmp2757
	movl	%edx, %r14d	# g, tmp2774
	xorl	%ebp, %r13d	# d, tmp2758
	addl	%r12d, %r13d	# tmp2760, tmp2761
	movl	%edi, %r12d	# b, tmp2762
	rorl	$6, %r12d	#, tmp2762
	rorl	$11, %r15d	#, tmp2763
	andl	%eax, %r14d	# f, tmp2774
	xorl	%r12d, %r15d	# tmp2762, tmp2764
	movl	%edi, %r12d	# b, tmp2765
	roll	$7, %r12d	#, tmp2765
	xorl	%r12d, %r15d	# tmp2765, tmp2766
	leal	0(%r13,%r15), %r12d	#, t1
	movl	%eax, %r13d	# f, tmp2767
	rorl	$2, %r13d	#, tmp2767
	movl	%r13d, %r15d	# tmp2767, tmp2767
	movl	%eax, %r13d	# f, tmp2768
	addl	%r12d, %esi	# t1, a
	rorl	$13, %r13d	#, tmp2768
	xorl	%r15d, %r13d	# tmp2767, tmp2769
	movl	%eax, %r15d	# f, tmp2770
	roll	$10, %r15d	#, tmp2770
	xorl	%r15d, %r13d	# tmp2770, tmp2771
	movl	%edx, %r15d	# g, tmp2772
	orl	%eax, %r15d	# f, tmp2772
	andl	%ecx, %r15d	# h, tmp2773
	orl	%r14d, %r15d	# tmp2774, tmp2775
	movl	-80(%rsp), %r14d	# %sfp, w5
	addl	%r13d, %r15d	# tmp2771, t2
	addl	%r12d, %r15d	# t1, e
	movl	%r14d, %r12d	# w5, tmp2777
	rorl	$7, %r12d	#, tmp2777
	movl	%r12d, %r13d	# tmp2777, tmp2777
	movl	%r14d, %r12d	# w5, tmp2778
	roll	$14, %r12d	#, tmp2778
	xorl	%r12d, %r13d	# tmp2778, tmp2779
	movl	%r14d, %r12d	# w5, tmp2780
	shrl	$3, %r12d	#, tmp2780
	xorl	%r13d, %r12d	# tmp2779, tmp2781
	movl	-104(%rsp), %r13d	# %sfp, w4
	addl	-92(%rsp), %r13d	# %sfp, w4
	addl	%r13d, %r12d	# tmp2782, _2577
	movl	-88(%rsp), %r13d	# %sfp, w2
	movl	%r13d, %r14d	# w2, tmp2783
	roll	$13, %r13d	#, tmp2784
	roll	$15, %r14d	#, tmp2783
	xorl	%r14d, %r13d	# tmp2783, tmp2785
	movl	-88(%rsp), %r14d	# %sfp, tmp2786
	shrl	$10, %r14d	#, tmp2786
	xorl	%r14d, %r13d	# tmp2786, tmp2787
	addl	%r13d, %r12d	# tmp2787, w4
	movl	%r12d, %r13d	# w4, w4
	movl	%r8d, %r12d	# c, tmp2788
	xorl	%edi, %r12d	# b, tmp2788
	leal	770255983(%rbp,%r13), %ebp	#, tmp2792
	movl	%r13d, -112(%rsp)	# w4, %sfp
	andl	%esi, %r12d	# a, tmp2789
	movl	%esi, %r13d	# a, tmp2795
	xorl	%r8d, %r12d	# c, tmp2790
	rorl	$11, %r13d	#, tmp2795
	addl	%ebp, %r12d	# tmp2792, tmp2793
	movl	%esi, %ebp	# a, tmp2794
	movl	%r13d, %r14d	# tmp2795, tmp2795
	rorl	$6, %ebp	#, tmp2794
	movl	%r15d, %r13d	# e, tmp2799
	xorl	%ebp, %r14d	# tmp2794, tmp2796
	movl	%esi, %ebp	# a, tmp2797
	rorl	$2, %r13d	#, tmp2799
	roll	$7, %ebp	#, tmp2797
	xorl	%ebp, %r14d	# tmp2797, tmp2798
	leal	(%r12,%r14), %ebp	#, t1
	movl	%r13d, %r14d	# tmp2799, tmp2799
	movl	%r15d, %r13d	# e, tmp2800
	rorl	$13, %r13d	#, tmp2800
	movl	%r13d, %r12d	# tmp2800, tmp2800
	movl	%r15d, %r13d	# e, tmp2802
	addl	%ebp, %ecx	# t1, h
	xorl	%r14d, %r12d	# tmp2799, tmp2801
	roll	$10, %r13d	#, tmp2802
	xorl	%r13d, %r12d	# tmp2802, tmp2803
	movl	%eax, %r13d	# f, tmp2804
	orl	%r15d, %r13d	# e, tmp2804
	movl	%r13d, %r14d	# tmp2804, tmp2804
	movl	%eax, %r13d	# f, tmp2806
	andl	%r15d, %r13d	# e, tmp2806
	andl	%edx, %r14d	# g, tmp2805
	orl	%r13d, %r14d	# tmp2806, tmp2807
	movl	-72(%rsp), %r13d	# %sfp, w6
	addl	%r12d, %r14d	# tmp2803, t2
	addl	%ebp, %r14d	# t1, d
	movl	%r13d, %ebp	# w6, tmp2809
	rorl	$7, %ebp	#, tmp2809
	movl	%ebp, %r12d	# tmp2809, tmp2809
	movl	%r13d, %ebp	# w6, tmp2810
	roll	$14, %ebp	#, tmp2810
	xorl	%ebp, %r12d	# tmp2810, tmp2811
	movl	%r13d, %ebp	# w6, tmp2812
	shrl	$3, %ebp	#, tmp2812
	xorl	%r12d, %ebp	# tmp2811, tmp2813
	movl	-80(%rsp), %r12d	# %sfp, w5
	addl	%ebx, %r12d	# w14, tmp2814
	addl	%r12d, %ebp	# tmp2814, _2572
	movl	-84(%rsp), %r12d	# %sfp, tmp2815
	roll	$15, %r12d	#, tmp2815
	movl	%r12d, %r13d	# tmp2815, tmp2815
	movl	-84(%rsp), %r12d	# %sfp, tmp2816
	roll	$13, %r12d	#, tmp2816
	xorl	%r13d, %r12d	# tmp2815, tmp2817
	movl	-84(%rsp), %r13d	# %sfp, tmp2818
	shrl	$10, %r13d	#, tmp2818
	xorl	%r13d, %r12d	# tmp2818, tmp2819
	movl	%edi, %r13d	# b, tmp2820
	addl	%r12d, %ebp	# tmp2819, w5
	xorl	%esi, %r13d	# a, tmp2820
	movl	%ebp, %r12d	# w5, w5
	movl	%r13d, %ebp	# tmp2820, tmp2820
	movl	%ecx, %r13d	# h, tmp2827
	andl	%ecx, %ebp	# h, tmp2821
	leal	1249150122(%r8,%r12), %r8d	#, tmp2824
	rorl	$11, %r13d	#, tmp2827
	xorl	%edi, %ebp	# b, tmp2822
	movl	%r12d, -80(%rsp)	# w5, %sfp
	movl	%r14d, %r12d	# d, tmp2832
	addl	%r8d, %ebp	# tmp2824, tmp2825
	movl	%ecx, %r8d	# h, tmp2826
	rorl	$13, %r12d	#, tmp2832
	rorl	$6, %r8d	#, tmp2826
	xorl	%r8d, %r13d	# tmp2826, tmp2828
	movl	%ecx, %r8d	# h, tmp2829
	roll	$7, %r8d	#, tmp2829
	xorl	%r8d, %r13d	# tmp2829, tmp2830
	leal	0(%rbp,%r13), %r8d	#, t1
	movl	%r14d, %r13d	# d, tmp2831
	movl	%r12d, %ebp	# tmp2832, tmp2832
	rorl	$2, %r13d	#, tmp2831
	movl	%r15d, %r12d	# e, tmp2838
	xorl	%r13d, %ebp	# tmp2831, tmp2833
	movl	%r14d, %r13d	# d, tmp2834
	andl	%r14d, %r12d	# d, tmp2838
	roll	$10, %r13d	#, tmp2834
	addl	%r8d, %edx	# t1, g
	xorl	%r13d, %ebp	# tmp2834, tmp2835
	movl	%r15d, %r13d	# e, tmp2836
	orl	%r14d, %r13d	# d, tmp2836
	andl	%eax, %r13d	# f, tmp2837
	orl	%r12d, %r13d	# tmp2838, tmp2839
	movl	-68(%rsp), %r12d	# %sfp, w7
	addl	%ebp, %r13d	# tmp2835, t2
	addl	%r8d, %r13d	# t1, c
	movl	%r12d, %r8d	# w7, tmp2841
	rorl	$7, %r8d	#, tmp2841
	movl	%r8d, %ebp	# tmp2841, tmp2841
	movl	%r12d, %r8d	# w7, tmp2842
	roll	$14, %r8d	#, tmp2842
	xorl	%r8d, %ebp	# tmp2842, tmp2843
	movl	%r12d, %r8d	# w7, tmp2844
	shrl	$3, %r8d	#, tmp2844
	xorl	%ebp, %r8d	# tmp2843, tmp2845
	movl	-72(%rsp), %ebp	# %sfp, w6
	addl	%r11d, %ebp	# w15, tmp2846
	addl	%ebp, %r8d	# tmp2846, _2567
	movl	-112(%rsp), %ebp	# %sfp, w4
	movl	%ebp, %r12d	# w4, tmp2847
	roll	$13, %ebp	#, tmp2848
	roll	$15, %r12d	#, tmp2847
	xorl	%r12d, %ebp	# tmp2847, tmp2849
	movl	-112(%rsp), %r12d	# %sfp, tmp2850
	shrl	$10, %r12d	#, tmp2850
	xorl	%r12d, %ebp	# tmp2850, tmp2851
	movl	%esi, %r12d	# a, tmp2852
	xorl	%ecx, %r12d	# h, tmp2852
	addl	%ebp, %r8d	# tmp2851, w6
	movl	%r8d, %ebp	# w6, w6
	movl	%r12d, %r8d	# tmp2852, tmp2852
	movl	%edx, %r12d	# g, tmp2859
	andl	%edx, %r8d	# g, tmp2853
	leal	1555081692(%rdi,%rbp), %edi	#, tmp2856
	rorl	$11, %r12d	#, tmp2859
	xorl	%esi, %r8d	# a, tmp2854
	movl	%ebp, -108(%rsp)	# w6, %sfp
	movl	%r13d, %ebp	# c, tmp2864
	addl	%edi, %r8d	# tmp2856, tmp2857
	movl	%edx, %edi	# g, tmp2858
	rorl	$13, %ebp	#, tmp2864
	rorl	$6, %edi	#, tmp2858
	xorl	%edi, %r12d	# tmp2858, tmp2860
	movl	%edx, %edi	# g, tmp2861
	roll	$7, %edi	#, tmp2861
	xorl	%edi, %r12d	# tmp2861, tmp2862
	leal	(%r8,%r12), %edi	#, t1
	movl	%r13d, %r12d	# c, tmp2863
	movl	%ebp, %r8d	# tmp2864, tmp2864
	rorl	$2, %r12d	#, tmp2863
	movl	%r14d, %ebp	# d, tmp2870
	xorl	%r12d, %r8d	# tmp2863, tmp2865
	movl	%r13d, %r12d	# c, tmp2866
	andl	%r13d, %ebp	# c, tmp2870
	roll	$10, %r12d	#, tmp2866
	addl	%edi, %eax	# t1, f
	xorl	%r12d, %r8d	# tmp2866, tmp2867
	movl	%r14d, %r12d	# d, tmp2868
	orl	%r13d, %r12d	# c, tmp2868
	andl	%r15d, %r12d	# e, tmp2869
	orl	%ebp, %r12d	# tmp2870, tmp2871
	movl	-64(%rsp), %ebp	# %sfp, w8
	addl	%r8d, %r12d	# tmp2867, t2
	addl	%edi, %r12d	# t1, b
	movl	%ebp, %edi	# w8, tmp2873
	rorl	$7, %edi	#, tmp2873
	movl	%edi, %r8d	# tmp2873, tmp2873
	movl	%ebp, %edi	# w8, tmp2874
	roll	$14, %edi	#, tmp2874
	xorl	%r8d, %edi	# tmp2873, tmp2875
	movl	%ebp, %r8d	# w8, tmp2876
	shrl	$3, %r8d	#, tmp2876
	xorl	%r8d, %edi	# tmp2876, tmp2877
	movl	-80(%rsp), %r8d	# %sfp, w5
	addl	-68(%rsp), %edi	# %sfp, tmp2878
	movl	%r8d, %ebp	# w5, tmp2879
	roll	$13, %r8d	#, tmp2880
	roll	$15, %ebp	#, tmp2879
	addl	%r10d, %edi	# w0, _2562
	xorl	%ebp, %r8d	# tmp2879, tmp2881
	movl	-80(%rsp), %ebp	# %sfp, tmp2882
	shrl	$10, %ebp	#, tmp2882
	xorl	%ebp, %r8d	# tmp2882, tmp2883
	movl	%eax, %ebp	# f, tmp2891
	addl	%r8d, %edi	# tmp2883, w7
	rorl	$11, %ebp	#, tmp2891
	movl	%edi, %r8d	# w7, w7
	movl	%ecx, %edi	# h, tmp2884
	xorl	%edx, %edi	# g, tmp2884
	leal	1996064986(%rsi,%r8), %esi	#, tmp2888
	movl	%r8d, -104(%rsp)	# w7, %sfp
	andl	%eax, %edi	# f, tmp2885
	movl	%r13d, %r8d	# c, tmp2902
	xorl	%ecx, %edi	# h, tmp2886
	andl	%r12d, %r8d	# b, tmp2902
	addl	%esi, %edi	# tmp2888, tmp2889
	movl	%eax, %esi	# f, tmp2890
	rorl	$6, %esi	#, tmp2890
	xorl	%esi, %ebp	# tmp2890, tmp2892
	movl	%eax, %esi	# f, tmp2893
	roll	$7, %esi	#, tmp2893
	xorl	%ebp, %esi	# tmp2892, tmp2894
	movl	%r12d, %ebp	# b, tmp2895
	addl	%edi, %esi	# tmp2889, t1
	movl	%r12d, %edi	# b, tmp2896
	rorl	$2, %ebp	#, tmp2895
	rorl	$13, %edi	#, tmp2896
	addl	%esi, %r15d	# t1, e
	xorl	%ebp, %edi	# tmp2895, tmp2897
	movl	%r12d, %ebp	# b, tmp2898
	roll	$10, %ebp	#, tmp2898
	xorl	%ebp, %edi	# tmp2898, tmp2899
	movl	%r13d, %ebp	# c, tmp2900
	orl	%r12d, %ebp	# b, tmp2900
	andl	%r14d, %ebp	# d, tmp2901
	orl	%r8d, %ebp	# tmp2902, tmp2903
	movl	-100(%rsp), %r8d	# %sfp, w9
	addl	%edi, %ebp	# tmp2899, t2
	addl	%esi, %ebp	# t1, a
	movl	%r8d, %esi	# w9, tmp2905
	rorl	$7, %esi	#, tmp2905
	movl	%esi, %edi	# tmp2905, tmp2905
	movl	%r8d, %esi	# w9, tmp2906
	roll	$14, %esi	#, tmp2906
	xorl	%edi, %esi	# tmp2905, tmp2907
	movl	%r8d, %edi	# w9, tmp2908
	shrl	$3, %edi	#, tmp2908
	xorl	%edi, %esi	# tmp2908, tmp2909
	addl	-64(%rsp), %esi	# %sfp, tmp2910
	movl	-108(%rsp), %edi	# %sfp, tmp2911
	addl	%r9d, %esi	# w1, _2557
	roll	$15, %edi	#, tmp2911
	movl	%edi, %r8d	# tmp2911, tmp2911
	movl	-108(%rsp), %edi	# %sfp, tmp2912
	roll	$13, %edi	#, tmp2912
	xorl	%r8d, %edi	# tmp2911, tmp2913
	movl	-108(%rsp), %r8d	# %sfp, tmp2914
	shrl	$10, %r8d	#, tmp2914
	xorl	%r8d, %edi	# tmp2914, tmp2915
	movl	%r15d, %r8d	# e, tmp2923
	addl	%edi, %esi	# tmp2915, w8
	rorl	$11, %r8d	#, tmp2923
	movl	%esi, %edi	# w8, w8
	movl	%edx, %esi	# g, tmp2916
	xorl	%eax, %esi	# f, tmp2916
	leal	-1740746414(%rcx,%rdi), %ecx	#, tmp2920
	movl	%edi, -72(%rsp)	# w8, %sfp
	andl	%r15d, %esi	# e, tmp2917
	movl	%r12d, %edi	# b, tmp2934
	xorl	%edx, %esi	# g, tmp2918
	andl	%ebp, %edi	# a, tmp2934
	addl	%ecx, %esi	# tmp2920, tmp2921
	movl	%r15d, %ecx	# e, tmp2922
	rorl	$6, %ecx	#, tmp2922
	xorl	%ecx, %r8d	# tmp2922, tmp2924
	movl	%r15d, %ecx	# e, tmp2925
	roll	$7, %ecx	#, tmp2925
	xorl	%r8d, %ecx	# tmp2924, tmp2926
	addl	%esi, %ecx	# tmp2921, t1
	movl	%ebp, %esi	# a, tmp2927
	rorl	$2, %esi	#, tmp2927
	addl	%ecx, %r14d	# t1, d
	movl	%esi, %r8d	# tmp2927, tmp2927
	movl	%ebp, %esi	# a, tmp2928
	rorl	$13, %esi	#, tmp2928
	xorl	%r8d, %esi	# tmp2927, tmp2929
	movl	%ebp, %r8d	# a, tmp2930
	roll	$10, %r8d	#, tmp2930
	xorl	%r8d, %esi	# tmp2930, tmp2931
	movl	%r12d, %r8d	# b, tmp2932
	orl	%ebp, %r8d	# a, tmp2932
	andl	%r13d, %r8d	# c, tmp2933
	orl	%edi, %r8d	# tmp2934, tmp2935
	movl	-96(%rsp), %edi	# %sfp, w10
	addl	%esi, %r8d	# tmp2931, t2
	addl	%ecx, %r8d	# t1, h
	movl	%edi, %ecx	# w10, tmp2937
	rorl	$7, %ecx	#, tmp2937
	movl	%ecx, %esi	# tmp2937, tmp2937
	movl	%edi, %ecx	# w10, tmp2938
	roll	$14, %ecx	#, tmp2938
	xorl	%esi, %ecx	# tmp2937, tmp2939
	movl	%edi, %esi	# w10, tmp2940
	shrl	$3, %esi	#, tmp2940
	xorl	%esi, %ecx	# tmp2940, tmp2941
	movl	-104(%rsp), %esi	# %sfp, w7
	addl	-100(%rsp), %ecx	# %sfp, tmp2942
	addl	-88(%rsp), %ecx	# %sfp, _2552
	movl	%esi, %edi	# w7, tmp2943
	roll	$13, %esi	#, tmp2944
	roll	$15, %edi	#, tmp2943
	xorl	%edi, %esi	# tmp2943, tmp2945
	movl	-104(%rsp), %edi	# %sfp, tmp2946
	shrl	$10, %edi	#, tmp2946
	xorl	%edi, %esi	# tmp2946, tmp2947
	movl	%r14d, %edi	# d, tmp2955
	addl	%esi, %ecx	# tmp2947, w9
	rorl	$11, %edi	#, tmp2955
	movl	%ecx, %esi	# w9, w9
	movl	%eax, %ecx	# f, tmp2948
	xorl	%r15d, %ecx	# e, tmp2948
	leal	-1473132947(%rdx,%rsi), %edx	#, tmp2952
	movl	%esi, -68(%rsp)	# w9, %sfp
	andl	%r14d, %ecx	# d, tmp2949
	movl	%r8d, %esi	# h, tmp2960
	xorl	%eax, %ecx	# f, tmp2950
	rorl	$13, %esi	#, tmp2960
	addl	%edx, %ecx	# tmp2952, tmp2953
	movl	%r14d, %edx	# d, tmp2954
	rorl	$6, %edx	#, tmp2954
	xorl	%edx, %edi	# tmp2954, tmp2956
	movl	%r14d, %edx	# d, tmp2957
	roll	$7, %edx	#, tmp2957
	xorl	%edi, %edx	# tmp2956, tmp2958
	movl	%r8d, %edi	# h, tmp2959
	addl	%ecx, %edx	# tmp2953, t1
	rorl	$2, %edi	#, tmp2959
	movl	%esi, %ecx	# tmp2960, tmp2960
	xorl	%edi, %ecx	# tmp2959, tmp2961
	movl	%r8d, %edi	# h, tmp2962
	movl	%ebp, %esi	# a, tmp2966
	roll	$10, %edi	#, tmp2962
	andl	%r8d, %esi	# h, tmp2966
	addl	%edx, %r13d	# t1, c
	xorl	%edi, %ecx	# tmp2962, tmp2963
	movl	%ebp, %edi	# a, tmp2964
	orl	%r8d, %edi	# h, tmp2964
	andl	%r12d, %edi	# b, tmp2965
	orl	%esi, %edi	# tmp2966, tmp2967
	movl	-76(%rsp), %esi	# %sfp, w11
	addl	%ecx, %edi	# tmp2963, t2
	addl	%edx, %edi	# t1, g
	movl	%esi, %edx	# w11, tmp2969
	rorl	$7, %edx	#, tmp2969
	movl	%edx, %ecx	# tmp2969, tmp2969
	movl	%esi, %edx	# w11, tmp2970
	roll	$14, %edx	#, tmp2970
	xorl	%ecx, %edx	# tmp2969, tmp2971
	movl	%esi, %ecx	# w11, tmp2972
	shrl	$3, %ecx	#, tmp2972
	xorl	%ecx, %edx	# tmp2972, tmp2973
	movl	-72(%rsp), %ecx	# %sfp, tmp2975
	addl	-96(%rsp), %edx	# %sfp, tmp2974
	addl	-84(%rsp), %edx	# %sfp, _2547
	roll	$15, %ecx	#, tmp2975
	movl	%ecx, %esi	# tmp2975, tmp2975
	movl	-72(%rsp), %ecx	# %sfp, tmp2976
	roll	$13, %ecx	#, tmp2976
	xorl	%esi, %ecx	# tmp2975, tmp2977
	movl	-72(%rsp), %esi	# %sfp, tmp2978
	shrl	$10, %esi	#, tmp2978
	xorl	%esi, %ecx	# tmp2978, tmp2979
	movl	%r13d, %esi	# c, tmp2986
	addl	%ecx, %edx	# tmp2979, w10
	rorl	$6, %esi	#, tmp2986
	movl	%edx, %ecx	# w10, w10
	movl	%r15d, %edx	# e, tmp2980
	xorl	%r14d, %edx	# d, tmp2980
	leal	-1341970488(%rax,%rcx), %eax	#, tmp2984
	movl	%ecx, -100(%rsp)	# w10, %sfp
	andl	%r13d, %edx	# c, tmp2981
	movl	%r8d, %ecx	# h, tmp2998
	xorl	%r15d, %edx	# e, tmp2982
	andl	%edi, %ecx	# g, tmp2998
	addl	%eax, %edx	# tmp2984, tmp2985
	movl	%esi, %eax	# tmp2986, tmp2986
	movl	%r13d, %esi	# c, tmp2987
	rorl	$11, %esi	#, tmp2987
	xorl	%eax, %esi	# tmp2986, tmp2988
	movl	%r13d, %eax	# c, tmp2989
	roll	$7, %eax	#, tmp2989
	xorl	%esi, %eax	# tmp2988, tmp2990
	movl	%edi, %esi	# g, tmp2991
	addl	%edx, %eax	# tmp2985, t1
	movl	%edi, %edx	# g, tmp2992
	rorl	$2, %esi	#, tmp2991
	rorl	$13, %edx	#, tmp2992
	addl	%eax, %r12d	# t1, b
	xorl	%esi, %edx	# tmp2991, tmp2993
	movl	%edi, %esi	# g, tmp2994
	roll	$10, %esi	#, tmp2994
	xorl	%esi, %edx	# tmp2994, tmp2995
	movl	%r8d, %esi	# h, tmp2996
	orl	%edi, %esi	# g, tmp2996
	andl	%ebp, %esi	# a, tmp2997
	orl	%ecx, %esi	# tmp2998, tmp2999
	movl	-60(%rsp), %ecx	# %sfp, w12
	addl	%edx, %esi	# tmp2995, t2
	addl	%eax, %esi	# t1, f
	movl	%ecx, %edx	# w12, tmp3001
	movl	%ecx, %eax	# w12, tmp3002
	rorl	$7, %edx	#, tmp3001
	roll	$14, %eax	#, tmp3002
	xorl	%edx, %eax	# tmp3001, tmp3003
	movl	%ecx, %edx	# w12, tmp3004
	shrl	$3, %edx	#, tmp3004
	xorl	%edx, %eax	# tmp3004, tmp3005
	movl	-68(%rsp), %edx	# %sfp, w9
	addl	-76(%rsp), %eax	# %sfp, tmp3006
	addl	-112(%rsp), %eax	# %sfp, _2542
	movl	%edx, %ecx	# w9, tmp3007
	roll	$13, %edx	#, tmp3008
	roll	$15, %ecx	#, tmp3007
	xorl	%ecx, %edx	# tmp3007, tmp3009
	movl	-68(%rsp), %ecx	# %sfp, tmp3010
	shrl	$10, %ecx	#, tmp3010
	xorl	%ecx, %edx	# tmp3010, tmp3011
	addl	%eax, %edx	# _2542, w11
	movl	%r14d, %eax	# d, tmp3012
	xorl	%r13d, %eax	# c, tmp3012
	movl	%edx, -64(%rsp)	# w11, %sfp
	leal	-1084653625(%r15,%rdx), %edx	#, tmp3016
	andl	%r12d, %eax	# b, tmp3013
	movl	%r12d, %r15d	# b, tmp3018
	xorl	%r14d, %eax	# d, tmp3014
	rorl	$6, %r15d	#, tmp3018
	addl	%eax, %edx	# tmp3014, tmp3017
	movl	%r15d, %eax	# tmp3018, tmp3018
	movl	%r12d, %r15d	# b, tmp3019
	rorl	$11, %r15d	#, tmp3019
	movl	%r15d, %ecx	# tmp3019, tmp3019
	movl	%r12d, %r15d	# b, tmp3021
	roll	$7, %r15d	#, tmp3021
	xorl	%eax, %ecx	# tmp3018, tmp3020
	movl	%r15d, %eax	# tmp3021, tmp3021
	movl	%esi, %r15d	# f, tmp3023
	rorl	$2, %r15d	#, tmp3023
	xorl	%ecx, %eax	# tmp3020, tmp3022
	movl	%r15d, %ecx	# tmp3023, tmp3023
	movl	%esi, %r15d	# f, tmp3024
	addl	%edx, %eax	# tmp3017, t1
	rorl	$13, %r15d	#, tmp3024
	addl	%eax, %ebp	# t1, a
	movl	%r15d, %edx	# tmp3024, tmp3024
	movl	%esi, %r15d	# f, tmp3026
	xorl	%ecx, %edx	# tmp3023, tmp3025
	roll	$10, %r15d	#, tmp3026
	xorl	%r15d, %edx	# tmp3026, tmp3027
	movl	%edi, %r15d	# g, tmp3028
	orl	%esi, %r15d	# f, tmp3028
	movl	%r15d, %ecx	# tmp3028, tmp3028
	movl	%edi, %r15d	# g, tmp3030
	andl	%esi, %r15d	# f, tmp3030
	andl	%r8d, %ecx	# h, tmp3029
	orl	%r15d, %ecx	# tmp3030, tmp3031
	addl	%edx, %ecx	# tmp3027, t2
	addl	%eax, %ecx	# t1, e
	movl	-92(%rsp), %eax	# %sfp, w13
	movl	%eax, %r15d	# w13, tmp3033
	rorl	$7, %r15d	#, tmp3033
	movl	%r15d, %edx	# tmp3033, tmp3033
	movl	%eax, %r15d	# w13, tmp3034
	roll	$14, %r15d	#, tmp3034
	movl	%r15d, %eax	# tmp3034, tmp3034
	movl	-92(%rsp), %r15d	# %sfp, tmp3036
	xorl	%edx, %eax	# tmp3033, tmp3035
	movl	-100(%rsp), %edx	# %sfp, w10
	shrl	$3, %r15d	#, tmp3036
	xorl	%r15d, %eax	# tmp3036, tmp3037
	movl	%edx, %r15d	# w10, tmp3039
	roll	$13, %edx	#, tmp3040
	roll	$15, %r15d	#, tmp3039
	addl	-60(%rsp), %eax	# %sfp, tmp3038
	xorl	%r15d, %edx	# tmp3039, tmp3041
	movl	-100(%rsp), %r15d	# %sfp, tmp3042
	addl	-80(%rsp), %eax	# %sfp, _2537
	shrl	$10, %r15d	#, tmp3042
	xorl	%r15d, %edx	# tmp3042, tmp3043
	leal	(%rdx,%rax), %r15d	#, w12
	movl	%r13d, %eax	# c, tmp3044
	movl	%ebp, %edx	# a, tmp3051
	xorl	%r12d, %eax	# b, tmp3044
	rorl	$11, %edx	#, tmp3051
	andl	%ebp, %eax	# a, tmp3045
	leal	-958395405(%r14,%r15), %r14d	#, tmp3048
	movl	%r15d, -96(%rsp)	# w12, %sfp
	xorl	%r13d, %eax	# c, tmp3046
	movl	%esi, %r15d	# f, tmp3062
	addl	%eax, %r14d	# tmp3046, tmp3049
	movl	%ebp, %eax	# a, tmp3050
	rorl	$6, %eax	#, tmp3050
	xorl	%eax, %edx	# tmp3050, tmp3052
	movl	%ebp, %eax	# a, tmp3053
	roll	$7, %eax	#, tmp3053
	xorl	%edx, %eax	# tmp3052, tmp3054
	addl	%r14d, %eax	# tmp3049, t1
	movl	%ecx, %r14d	# e, tmp3055
	rorl	$2, %r14d	#, tmp3055
	addl	%eax, %r8d	# t1, h
	movl	%r14d, %edx	# tmp3055, tmp3055
	movl	%ecx, %r14d	# e, tmp3056
	rorl	$13, %r14d	#, tmp3056
	xorl	%edx, %r14d	# tmp3055, tmp3057
	movl	%ecx, %edx	# e, tmp3058
	roll	$10, %edx	#, tmp3058
	andl	%ecx, %r15d	# e, tmp3062
	xorl	%edx, %r14d	# tmp3058, tmp3059
	movl	%esi, %edx	# f, tmp3060
	orl	%ecx, %edx	# e, tmp3060
	andl	%edi, %edx	# g, tmp3061
	orl	%r15d, %edx	# tmp3062, tmp3063
	addl	%r14d, %edx	# tmp3059, t2
	movl	%ebx, %r14d	# w14, tmp3065
	addl	%eax, %edx	# t1, d
	movl	%ebx, %eax	# w14, tmp3066
	rorl	$7, %r14d	#, tmp3065
	roll	$14, %eax	#, tmp3066
	xorl	%r14d, %eax	# tmp3065, tmp3067
	movl	%ebx, %r14d	# w14, tmp3068
	shrl	$3, %r14d	#, tmp3068
	xorl	%r14d, %eax	# tmp3068, tmp3069
	movl	-64(%rsp), %r14d	# %sfp, tmp3071
	addl	-92(%rsp), %eax	# %sfp, tmp3070
	addl	-108(%rsp), %eax	# %sfp, _2532
	roll	$15, %r14d	#, tmp3071
	movl	%r14d, %r15d	# tmp3071, tmp3071
	movl	-64(%rsp), %r14d	# %sfp, tmp3072
	roll	$13, %r14d	#, tmp3072
	xorl	%r15d, %r14d	# tmp3071, tmp3073
	movl	-64(%rsp), %r15d	# %sfp, tmp3074
	shrl	$10, %r15d	#, tmp3074
	xorl	%r15d, %r14d	# tmp3074, tmp3075
	movl	%ecx, %r15d	# e, tmp3094
	addl	%eax, %r14d	# _2532, w13
	movl	%r14d, %eax	# w13, w13
	movl	%r12d, %r14d	# b, tmp3076
	xorl	%ebp, %r14d	# a, tmp3076
	leal	-710438585(%r13,%rax), %r13d	#, tmp3080
	movl	%eax, -92(%rsp)	# w13, %sfp
	andl	%r8d, %r14d	# h, tmp3077
	xorl	%r12d, %r14d	# b, tmp3078
	addl	%r13d, %r14d	# tmp3080, tmp3081
	movl	%r8d, %r13d	# h, tmp3082
	rorl	$6, %r13d	#, tmp3082
	movl	%r13d, %eax	# tmp3082, tmp3082
	movl	%r8d, %r13d	# h, tmp3083
	rorl	$11, %r13d	#, tmp3083
	xorl	%eax, %r13d	# tmp3082, tmp3084
	movl	%r8d, %eax	# h, tmp3085
	roll	$7, %eax	#, tmp3085
	xorl	%eax, %r13d	# tmp3085, tmp3086
	movl	%edx, %eax	# d, tmp3088
	addl	%r14d, %r13d	# tmp3081, t1
	movl	%edx, %r14d	# d, tmp3087
	addl	%r13d, %edi	# t1, g
	rorl	$2, %r14d	#, tmp3087
	rorl	$13, %eax	#, tmp3088
	xorl	%r14d, %eax	# tmp3087, tmp3089
	movl	%edx, %r14d	# d, tmp3090
	andl	%edx, %r15d	# d, tmp3094
	roll	$10, %r14d	#, tmp3090
	xorl	%r14d, %eax	# tmp3090, tmp3091
	movl	%ecx, %r14d	# e, tmp3092
	orl	%edx, %r14d	# d, tmp3092
	andl	%esi, %r14d	# f, tmp3093
	orl	%r15d, %r14d	# tmp3094, tmp3095
	movl	-96(%rsp), %r15d	# %sfp, w12
	addl	%eax, %r14d	# tmp3091, t2
	movl	%r11d, %eax	# w15, tmp3098
	addl	%r14d, %r13d	# t2, c
	movl	%r11d, %r14d	# w15, tmp3097
	roll	$14, %eax	#, tmp3098
	rorl	$7, %r14d	#, tmp3097
	xorl	%r14d, %eax	# tmp3097, tmp3099
	movl	%r11d, %r14d	# w15, tmp3100
	shrl	$3, %r14d	#, tmp3100
	xorl	%r14d, %eax	# tmp3100, tmp3101
	movl	%r15d, %r14d	# w12, tmp3103
	addl	%eax, %ebx	# tmp3101, tmp3102
	movl	%r15d, %eax	# w12, tmp3104
	addl	-104(%rsp), %ebx	# %sfp, _2527
	roll	$15, %r14d	#, tmp3103
	roll	$13, %eax	#, tmp3104
	xorl	%r14d, %eax	# tmp3103, tmp3105
	movl	%r15d, %r14d	# w12, tmp3106
	shrl	$10, %r14d	#, tmp3106
	xorl	%r14d, %eax	# tmp3106, tmp3107
	movl	%edx, %r14d	# d, tmp3126
	addl	%eax, %ebx	# tmp3107, w14
	movl	%ebp, %eax	# a, tmp3108
	xorl	%r8d, %eax	# h, tmp3108
	leal	113926993(%r12,%rbx), %r12d	#, tmp3112
	movl	%ebx, %r15d	# w14, w14
	andl	%edi, %eax	# g, tmp3109
	movl	%edi, %ebx	# g, tmp3114
	xorl	%ebp, %eax	# a, tmp3110
	rorl	$6, %ebx	#, tmp3114
	addl	%eax, %r12d	# tmp3110, tmp3113
	movl	%edi, %eax	# g, tmp3115
	rorl	$11, %eax	#, tmp3115
	xorl	%ebx, %eax	# tmp3114, tmp3116
	movl	%edi, %ebx	# g, tmp3117
	roll	$7, %ebx	#, tmp3117
	xorl	%ebx, %eax	# tmp3117, tmp3118
	movl	%r13d, %ebx	# c, tmp3120
	andl	%r13d, %r14d	# c, tmp3126
	addl	%r12d, %eax	# tmp3113, t1
	movl	%r13d, %r12d	# c, tmp3119
	rorl	$13, %ebx	#, tmp3120
	rorl	$2, %r12d	#, tmp3119
	addl	%eax, %esi	# t1, f
	xorl	%r12d, %ebx	# tmp3119, tmp3121
	movl	%r13d, %r12d	# c, tmp3122
	roll	$10, %r12d	#, tmp3122
	xorl	%r12d, %ebx	# tmp3122, tmp3123
	movl	%edx, %r12d	# d, tmp3124
	orl	%r13d, %r12d	# c, tmp3124
	andl	%ecx, %r12d	# e, tmp3125
	orl	%r14d, %r12d	# tmp3126, tmp3127
	movl	-92(%rsp), %r14d	# %sfp, w13
	addl	%ebx, %r12d	# tmp3123, t2
	movl	%r10d, %ebx	# w0, tmp3130
	addl	%r12d, %eax	# t2, b
	movl	%r10d, %r12d	# w0, tmp3129
	roll	$14, %ebx	#, tmp3130
	rorl	$7, %r12d	#, tmp3129
	xorl	%r12d, %ebx	# tmp3129, tmp3131
	movl	%r10d, %r12d	# w0, tmp3132
	shrl	$3, %r12d	#, tmp3132
	xorl	%r12d, %ebx	# tmp3132, tmp3133
	movl	%r14d, %r12d	# w13, tmp3135
	addl	%ebx, %r11d	# tmp3133, tmp3134
	movl	%r14d, %ebx	# w13, tmp3136
	roll	$15, %r12d	#, tmp3135
	roll	$13, %ebx	#, tmp3136
	addl	-72(%rsp), %r11d	# %sfp, _2522
	xorl	%r12d, %ebx	# tmp3135, tmp3137
	movl	%r14d, %r12d	# w13, tmp3138
	shrl	$10, %r12d	#, tmp3138
	xorl	%r12d, %ebx	# tmp3138, tmp3139
	movl	%r8d, %r12d	# h, tmp3140
	xorl	%edi, %r12d	# g, tmp3140
	addl	%ebx, %r11d	# tmp3139, w15
	movl	%r12d, %ebx	# tmp3140, tmp3140
	leal	338241895(%rbp,%r11), %ebp	#, tmp3144
	movl	%r11d, %r14d	# w15, w15
	andl	%esi, %ebx	# f, tmp3141
	movl	%esi, %r11d	# f, tmp3146
	movl	%esi, %r12d	# f, tmp3147
	xorl	%r8d, %ebx	# h, tmp3142
	rorl	$6, %r11d	#, tmp3146
	addl	%ebx, %ebp	# tmp3142, tmp3145
	rorl	$11, %r12d	#, tmp3147
	movl	%r12d, %ebx	# tmp3147, tmp3147
	movl	%r13d, %r12d	# c, tmp3158
	xorl	%r11d, %ebx	# tmp3146, tmp3148
	movl	%esi, %r11d	# f, tmp3149
	andl	%eax, %r12d	# b, tmp3158
	roll	$7, %r11d	#, tmp3149
	xorl	%r11d, %ebx	# tmp3149, tmp3150
	movl	%eax, %r11d	# b, tmp3152
	addl	%ebp, %ebx	# tmp3145, t1
	movl	%eax, %ebp	# b, tmp3151
	rorl	$13, %r11d	#, tmp3152
	rorl	$2, %ebp	#, tmp3151
	addl	%ebx, %ecx	# t1, e
	xorl	%ebp, %r11d	# tmp3151, tmp3153
	movl	%eax, %ebp	# b, tmp3154
	roll	$10, %ebp	#, tmp3154
	xorl	%ebp, %r11d	# tmp3154, tmp3155
	movl	%r13d, %ebp	# c, tmp3156
	orl	%eax, %ebp	# b, tmp3156
	andl	%edx, %ebp	# d, tmp3157
	orl	%r12d, %ebp	# tmp3158, tmp3159
	addl	%r11d, %ebp	# tmp3155, t2
	movl	%r9d, %r11d	# w1, tmp3162
	addl	%ebp, %ebx	# t2, a
	movl	%r9d, %ebp	# w1, tmp3161
	roll	$14, %r11d	#, tmp3162
	rorl	$7, %ebp	#, tmp3161
	xorl	%ebp, %r11d	# tmp3161, tmp3163
	movl	%r9d, %ebp	# w1, tmp3164
	shrl	$3, %ebp	#, tmp3164
	xorl	%ebp, %r11d	# tmp3164, tmp3165
	movl	%r15d, %ebp	# w14, tmp3167
	addl	%r11d, %r10d	# tmp3165, tmp3166
	movl	%r15d, %r11d	# w14, tmp3168
	addl	-68(%rsp), %r10d	# %sfp, _2517
	roll	$15, %ebp	#, tmp3167
	roll	$13, %r11d	#, tmp3168
	movl	%r15d, -60(%rsp)	# w14, %sfp
	xorl	%ebp, %r11d	# tmp3167, tmp3169
	movl	%r15d, %ebp	# w14, tmp3170
	movl	-88(%rsp), %r15d	# %sfp, w2
	shrl	$10, %ebp	#, tmp3170
	movl	%r14d, -48(%rsp)	# w15, %sfp
	xorl	%ebp, %r11d	# tmp3170, tmp3171
	movl	%eax, %ebp	# b, tmp3190
	addl	%r11d, %r10d	# tmp3171, w0
	movl	%r10d, %r12d	# w0, w0
	movl	%edi, %r10d	# g, tmp3172
	xorl	%esi, %r10d	# f, tmp3172
	leal	666307205(%r8,%r12), %r11d	#, tmp3176
	movl	%ecx, %r8d	# e, tmp3178
	andl	%ecx, %r10d	# e, tmp3173
	xorl	%edi, %r10d	# g, tmp3174
	rorl	$6, %r8d	#, tmp3178
	andl	%ebx, %ebp	# a, tmp3190
	addl	%r10d, %r11d	# tmp3174, tmp3177
	movl	%ecx, %r10d	# e, tmp3179
	rorl	$11, %r10d	#, tmp3179
	xorl	%r8d, %r10d	# tmp3178, tmp3180
	movl	%ecx, %r8d	# e, tmp3181
	roll	$7, %r8d	#, tmp3181
	xorl	%r8d, %r10d	# tmp3181, tmp3182
	movl	%ebx, %r8d	# a, tmp3184
	addl	%r11d, %r10d	# tmp3177, t1
	movl	%ebx, %r11d	# a, tmp3183
	rorl	$13, %r8d	#, tmp3184
	rorl	$2, %r11d	#, tmp3183
	addl	%r10d, %edx	# t1, d
	xorl	%r11d, %r8d	# tmp3183, tmp3185
	movl	%ebx, %r11d	# a, tmp3186
	roll	$10, %r11d	#, tmp3186
	xorl	%r11d, %r8d	# tmp3186, tmp3187
	movl	%eax, %r11d	# b, tmp3188
	orl	%ebx, %r11d	# a, tmp3188
	andl	%r13d, %r11d	# c, tmp3189
	orl	%ebp, %r11d	# tmp3190, tmp3191
	movl	%r12d, %ebp	# w0, w0
	addl	%r8d, %r11d	# tmp3187, t2
	movl	%r15d, %r8d	# w2, tmp3194
	movl	%ebp, -44(%rsp)	# w0, %sfp
	addl	%r11d, %r10d	# t2, h
	movl	%r15d, %r11d	# w2, tmp3193
	roll	$14, %r8d	#, tmp3194
	rorl	$7, %r11d	#, tmp3193
	xorl	%r11d, %r8d	# tmp3193, tmp3195
	movl	%r15d, %r11d	# w2, tmp3196
	shrl	$3, %r11d	#, tmp3196
	xorl	%r11d, %r8d	# tmp3196, tmp3197
	addl	%r8d, %r9d	# tmp3197, tmp3198
	movl	%r14d, %r8d	# w15, tmp3199
	addl	-100(%rsp), %r9d	# %sfp, _2512
	roll	$15, %r8d	#, tmp3199
	movl	%r8d, %r11d	# tmp3199, tmp3199
	movl	%r14d, %r8d	# w15, tmp3200
	roll	$13, %r8d	#, tmp3200
	xorl	%r11d, %r8d	# tmp3199, tmp3201
	movl	%r14d, %r11d	# w15, tmp3202
	movl	-84(%rsp), %r14d	# %sfp, w3
	shrl	$10, %r11d	#, tmp3202
	xorl	%r11d, %r8d	# tmp3202, tmp3203
	addl	%r8d, %r9d	# tmp3203, w1
	movl	%esi, %r8d	# f, tmp3204
	xorl	%ecx, %r8d	# e, tmp3204
	movl	%r9d, -56(%rsp)	# w1, %sfp
	leal	773529912(%rdi,%r9), %r9d	#, tmp3208
	andl	%edx, %r8d	# d, tmp3205
	movl	%edx, %edi	# d, tmp3210
	xorl	%esi, %r8d	# f, tmp3206
	rorl	$6, %edi	#, tmp3210
	addl	%r8d, %r9d	# tmp3206, tmp3209
	movl	%edx, %r8d	# d, tmp3211
	rorl	$11, %r8d	#, tmp3211
	xorl	%edi, %r8d	# tmp3210, tmp3212
	movl	%edx, %edi	# d, tmp3213
	roll	$7, %edi	#, tmp3213
	xorl	%edi, %r8d	# tmp3213, tmp3214
	addl	%r9d, %r8d	# tmp3209, t1
	leal	0(%r13,%r8), %r9d	#, c
	movl	%r10d, %r13d	# h, tmp3215
	rorl	$2, %r13d	#, tmp3215
	movl	%r13d, %r11d	# tmp3215, tmp3215
	movl	%r10d, %r13d	# h, tmp3216
	rorl	$13, %r13d	#, tmp3216
	movl	%r13d, %edi	# tmp3216, tmp3216
	movl	%r10d, %r13d	# h, tmp3218
	xorl	%r11d, %edi	# tmp3215, tmp3217
	roll	$10, %r13d	#, tmp3218
	xorl	%r13d, %edi	# tmp3218, tmp3219
	movl	%ebx, %r13d	# a, tmp3220
	orl	%r10d, %r13d	# h, tmp3220
	movl	%r13d, %r11d	# tmp3220, tmp3220
	movl	%ebx, %r13d	# a, tmp3222
	andl	%r10d, %r13d	# h, tmp3222
	andl	%eax, %r11d	# b, tmp3221
	orl	%r13d, %r11d	# tmp3222, tmp3223
	movl	%r12d, %r13d	# w0, tmp3231
	addl	%edi, %r11d	# tmp3219, t2
	movl	%r14d, %edi	# w3, tmp3226
	roll	$15, %r13d	#, tmp3231
	addl	%r11d, %r8d	# t2, g
	movl	%r14d, %r11d	# w3, tmp3225
	roll	$14, %edi	#, tmp3226
	rorl	$7, %r11d	#, tmp3225
	xorl	%r11d, %edi	# tmp3225, tmp3227
	movl	%r14d, %r11d	# w3, tmp3228
	shrl	$3, %r11d	#, tmp3228
	xorl	%r11d, %edi	# tmp3228, tmp3229
	movl	%r13d, %r11d	# tmp3231, tmp3231
	movl	%r12d, %r13d	# w0, tmp3232
	addl	%r15d, %edi	# w2, tmp3230
	roll	$13, %r13d	#, tmp3232
	addl	-64(%rsp), %edi	# %sfp, _2507
	movl	%r13d, %r12d	# tmp3232, tmp3232
	movl	%ebp, %r13d	# w0, tmp3234
	xorl	%r11d, %r12d	# tmp3231, tmp3233
	shrl	$10, %r13d	#, tmp3234
	xorl	%r13d, %r12d	# tmp3234, tmp3235
	addl	%r12d, %edi	# tmp3235, w2
	movl	%r8d, %r12d	# g, tmp3250
	movl	%edi, %r13d	# w2, w2
	movl	%ecx, %edi	# e, tmp3236
	roll	$10, %r12d	#, tmp3250
	xorl	%edx, %edi	# d, tmp3236
	leal	1294757372(%rsi,%r13), %r11d	#, tmp3240
	movl	%r9d, %esi	# c, tmp3242
	andl	%r9d, %edi	# c, tmp3237
	rorl	$6, %esi	#, tmp3242
	movl	%r13d, -88(%rsp)	# w2, %sfp
	xorl	%ecx, %edi	# e, tmp3238
	addl	%edi, %r11d	# tmp3238, tmp3241
	movl	%r9d, %edi	# c, tmp3243
	rorl	$11, %edi	#, tmp3243
	xorl	%esi, %edi	# tmp3242, tmp3244
	movl	%r9d, %esi	# c, tmp3245
	roll	$7, %esi	#, tmp3245
	xorl	%esi, %edi	# tmp3245, tmp3246
	movl	%r8d, %esi	# g, tmp3247
	rorl	$2, %esi	#, tmp3247
	addl	%r11d, %edi	# tmp3241, t1
	movl	%esi, %r11d	# tmp3247, tmp3247
	movl	%r8d, %esi	# g, tmp3248
	addl	%edi, %eax	# t1, b
	rorl	$13, %esi	#, tmp3248
	xorl	%r11d, %esi	# tmp3247, tmp3249
	xorl	%r12d, %esi	# tmp3250, tmp3251
	movl	%r10d, %r12d	# h, tmp3252
	orl	%r8d, %r12d	# g, tmp3252
	movl	%r12d, %r11d	# tmp3252, tmp3252
	movl	%r10d, %r12d	# h, tmp3254
	andl	%r8d, %r12d	# g, tmp3254
	andl	%ebx, %r11d	# a, tmp3253
	orl	%r12d, %r11d	# tmp3254, tmp3255
	movl	-56(%rsp), %r12d	# %sfp, w1
	addl	%esi, %r11d	# tmp3251, t2
	movl	-112(%rsp), %esi	# %sfp, w4
	addl	%r11d, %edi	# t2, f
	movl	%esi, %r13d	# w4, tmp3257
	movl	%esi, %r15d	# w4, tmp3258
	rorl	$7, %r13d	#, tmp3257
	roll	$14, %r15d	#, tmp3258
	xorl	%r13d, %r15d	# tmp3257, tmp3259
	movl	%esi, %r13d	# w4, tmp3260
	movl	%r12d, %esi	# w1, tmp3263
	shrl	$3, %r13d	#, tmp3260
	xorl	%r13d, %r15d	# tmp3260, tmp3261
	addl	%r14d, %r15d	# w3, tmp3262
	movl	%r12d, %r14d	# w1, tmp3264
	addl	-96(%rsp), %r15d	# %sfp, _2502
	roll	$15, %esi	#, tmp3263
	roll	$13, %r14d	#, tmp3264
	movl	%r14d, %ebp	# tmp3264, tmp3264
	xorl	%esi, %ebp	# tmp3263, tmp3265
	movl	%r12d, %esi	# w1, tmp3266
	movl	%r8d, %r12d	# g, tmp3286
	shrl	$10, %esi	#, tmp3266
	andl	%edi, %r12d	# f, tmp3286
	xorl	%esi, %ebp	# tmp3266, tmp3267
	leal	0(%rbp,%r15), %esi	#, w3
	movl	%esi, %r14d	# w3, w3
	movl	%edx, %esi	# d, tmp3268
	xorl	%r9d, %esi	# c, tmp3268
	leal	1396182291(%rcx,%r14), %r11d	#, tmp3272
	movl	%r14d, -52(%rsp)	# w3, %sfp
	andl	%eax, %esi	# b, tmp3269
	xorl	%edx, %esi	# d, tmp3270
	addl	%esi, %r11d	# tmp3270, tmp3273
	movl	%eax, %esi	# b, tmp3274
	rorl	$6, %esi	#, tmp3274
	movl	%esi, %ecx	# tmp3274, tmp3274
	movl	%eax, %esi	# b, tmp3275
	rorl	$11, %esi	#, tmp3275
	xorl	%ecx, %esi	# tmp3274, tmp3276
	movl	%eax, %ecx	# b, tmp3277
	roll	$7, %ecx	#, tmp3277
	xorl	%ecx, %esi	# tmp3277, tmp3278
	movl	%edi, %ecx	# f, tmp3280
	addl	%r11d, %esi	# tmp3273, t1
	movl	%edi, %r11d	# f, tmp3279
	rorl	$13, %ecx	#, tmp3280
	rorl	$2, %r11d	#, tmp3279
	addl	%esi, %ebx	# t1, a
	xorl	%r11d, %ecx	# tmp3279, tmp3281
	movl	%edi, %r11d	# f, tmp3282
	roll	$10, %r11d	#, tmp3282
	xorl	%r11d, %ecx	# tmp3282, tmp3283
	movl	%r8d, %r11d	# g, tmp3284
	orl	%edi, %r11d	# f, tmp3284
	andl	%r10d, %r11d	# h, tmp3285
	orl	%r12d, %r11d	# tmp3286, tmp3287
	addl	%ecx, %r11d	# tmp3283, t2
	addl	%r11d, %esi	# t2, e
	movl	-80(%rsp), %r11d	# %sfp, w5
	movl	%r11d, %ecx	# w5, tmp3290
	movl	%r11d, %r12d	# w5, tmp3289
	movl	%r11d, %r14d	# w5, tmp3292
	roll	$14, %ecx	#, tmp3290
	rorl	$7, %r12d	#, tmp3289
	shrl	$3, %r14d	#, tmp3292
	movl	%ecx, %r13d	# tmp3290, tmp3290
	movl	%r11d, %r15d	# w5, w5
	xorl	%r12d, %r13d	# tmp3289, tmp3291
	movl	%r9d, %r12d	# c, tmp3300
	xorl	%r14d, %r13d	# tmp3292, tmp3293
	movl	-88(%rsp), %r14d	# %sfp, w2
	addl	-112(%rsp), %r13d	# %sfp, tmp3294
	addl	-92(%rsp), %r13d	# %sfp, _2497
	xorl	%eax, %r12d	# b, tmp3300
	movl	%r14d, %ecx	# w2, tmp3295
	roll	$15, %ecx	#, tmp3295
	movl	%ecx, %r11d	# tmp3295, tmp3295
	movl	%r14d, %ecx	# w2, tmp3296
	roll	$13, %ecx	#, tmp3296
	xorl	%r11d, %ecx	# tmp3295, tmp3297
	movl	%r14d, %r11d	# w2, tmp3298
	shrl	$10, %r11d	#, tmp3298
	xorl	%r11d, %ecx	# tmp3298, tmp3299
	addl	%r13d, %ecx	# _2497, w4
	movl	%ecx, %r13d	# w4, w4
	movl	%r12d, %ecx	# tmp3300, tmp3300
	movl	%ebx, %r12d	# a, tmp3306
	rorl	$6, %r12d	#, tmp3306
	andl	%ebx, %ecx	# a, tmp3301
	leal	1695183700(%rdx,%r13), %r11d	#, tmp3304
	movl	%r12d, %edx	# tmp3306, tmp3306
	movl	%ebx, %r12d	# a, tmp3307
	xorl	%r9d, %ecx	# c, tmp3302
	rorl	$11, %r12d	#, tmp3307
	addl	%ecx, %r11d	# tmp3302, tmp3305
	movl	%r13d, -84(%rsp)	# w4, %sfp
	movl	%r12d, %ecx	# tmp3307, tmp3307
	movl	%ebx, %r12d	# a, tmp3309
	xorl	%edx, %ecx	# tmp3306, tmp3308
	roll	$7, %r12d	#, tmp3309
	xorl	%r12d, %ecx	# tmp3309, tmp3310
	movl	%esi, %r12d	# e, tmp3311
	rorl	$2, %r12d	#, tmp3311
	addl	%r11d, %ecx	# tmp3305, t1
	movl	%r12d, %r11d	# tmp3311, tmp3311
	movl	%esi, %r12d	# e, tmp3312
	addl	%ecx, %r10d	# t1, h
	rorl	$13, %r12d	#, tmp3312
	movl	%r12d, %edx	# tmp3312, tmp3312
	movl	%esi, %r12d	# e, tmp3314
	xorl	%r11d, %edx	# tmp3311, tmp3313
	roll	$10, %r12d	#, tmp3314
	xorl	%r12d, %edx	# tmp3314, tmp3315
	movl	%edi, %r12d	# f, tmp3316
	orl	%esi, %r12d	# e, tmp3316
	movl	%r12d, %r11d	# tmp3316, tmp3316
	movl	%edi, %r12d	# f, tmp3318
	andl	%esi, %r12d	# e, tmp3318
	andl	%r8d, %r11d	# g, tmp3317
	orl	%r12d, %r11d	# tmp3318, tmp3319
	addl	%edx, %r11d	# tmp3315, t2
	movl	-108(%rsp), %edx	# %sfp, w6
	addl	%r11d, %ecx	# t2, d
	movl	%edx, %ebp	# w6, tmp3321
	movl	%edx, %r12d	# w6, tmp3322
	movl	%edx, %r13d	# w6, tmp3324
	rorl	$7, %ebp	#, tmp3321
	roll	$14, %r12d	#, tmp3322
	xorl	%ebp, %r12d	# tmp3321, tmp3323
	shrl	$3, %r13d	#, tmp3324
	xorl	%r13d, %r12d	# tmp3324, tmp3325
	movl	%ebx, %r13d	# a, tmp3364
	addl	%r15d, %r12d	# w5, tmp3326
	movl	-52(%rsp), %r15d	# %sfp, w3
	addl	-60(%rsp), %r12d	# %sfp, _2492
	movl	%r15d, %r14d	# w3, tmp3327
	roll	$15, %r14d	#, tmp3327
	movl	%r14d, %r11d	# tmp3327, tmp3327
	movl	%r15d, %r14d	# w3, tmp3328
	roll	$13, %r14d	#, tmp3328
	movl	%r14d, %edx	# tmp3328, tmp3328
	movl	%r15d, %r14d	# w3, tmp3330
	xorl	%r11d, %edx	# tmp3327, tmp3329
	shrl	$10, %r14d	#, tmp3330
	xorl	%r14d, %edx	# tmp3330, tmp3331
	leal	(%rdx,%r12), %r14d	#, w5
	movl	%eax, %r12d	# b, tmp3332
	xorl	%ebx, %r12d	# a, tmp3332
	movl	%r12d, %edx	# tmp3332, tmp3332
	leal	1986661051(%r9,%r14), %r11d	#, tmp3336
	movl	%r10d, %r12d	# h, tmp3339
	andl	%r10d, %edx	# h, tmp3333
	rorl	$11, %r12d	#, tmp3339
	movl	%r10d, %r9d	# h, tmp3338
	xorl	%eax, %edx	# b, tmp3334
	rorl	$6, %r9d	#, tmp3338
	movl	%r14d, -80(%rsp)	# w5, %sfp
	addl	%edx, %r11d	# tmp3334, tmp3337
	movl	%r12d, %edx	# tmp3339, tmp3339
	movl	%ecx, %r12d	# d, tmp3346
	xorl	%r9d, %edx	# tmp3338, tmp3340
	movl	%r10d, %r9d	# h, tmp3341
	roll	$10, %r12d	#, tmp3346
	roll	$7, %r9d	#, tmp3341
	xorl	%r9d, %edx	# tmp3341, tmp3342
	movl	%ecx, %r9d	# d, tmp3343
	addl	%r11d, %edx	# tmp3337, t1
	rorl	$2, %r9d	#, tmp3343
	movl	-104(%rsp), %r11d	# %sfp, w7
	leal	(%r8,%rdx), %r15d	#, g
	movl	%r9d, %r8d	# tmp3343, tmp3343
	movl	%ecx, %r9d	# d, tmp3344
	rorl	$13, %r9d	#, tmp3344
	xorl	%r8d, %r9d	# tmp3343, tmp3345
	movl	%r11d, %ebp	# w7, tmp3354
	xorl	%r12d, %r9d	# tmp3346, tmp3347
	movl	%esi, %r12d	# e, tmp3348
	orl	%ecx, %r12d	# d, tmp3348
	movl	%r12d, %r8d	# tmp3348, tmp3348
	movl	%esi, %r12d	# e, tmp3350
	andl	%ecx, %r12d	# d, tmp3350
	andl	%edi, %r8d	# f, tmp3349
	orl	%r12d, %r8d	# tmp3350, tmp3351
	movl	%r11d, %r12d	# w7, tmp3356
	addl	%r8d, %r9d	# tmp3351, t2
	movl	%r11d, %r8d	# w7, tmp3353
	movl	-84(%rsp), %r11d	# %sfp, w4
	addl	%edx, %r9d	# t1, c
	rorl	$7, %r8d	#, tmp3353
	roll	$14, %ebp	#, tmp3354
	xorl	%r8d, %ebp	# tmp3353, tmp3355
	shrl	$3, %r12d	#, tmp3356
	xorl	%r10d, %r13d	# h, tmp3364
	movl	%r11d, %r8d	# w4, tmp3360
	xorl	%r12d, %ebp	# tmp3356, tmp3357
	movl	%r11d, %r14d	# w4, tmp3359
	addl	-108(%rsp), %ebp	# %sfp, tmp3358
	roll	$13, %r8d	#, tmp3360
	roll	$15, %r14d	#, tmp3359
	addl	-48(%rsp), %ebp	# %sfp, _2487
	movl	%r8d, %edx	# tmp3360, tmp3360
	xorl	%r14d, %edx	# tmp3359, tmp3361
	movl	%r11d, %r14d	# w4, tmp3362
	shrl	$10, %r14d	#, tmp3362
	xorl	%r14d, %edx	# tmp3362, tmp3363
	movl	-44(%rsp), %r14d	# %sfp, w0
	leal	(%rdx,%rbp), %r8d	#, w6
	movl	%r13d, %edx	# tmp3364, tmp3364
	movl	%r15d, %r13d	# g, tmp3370
	andl	%r15d, %edx	# g, tmp3365
	rorl	$6, %r13d	#, tmp3370
	leal	-2117940946(%rax,%r8), %eax	#, tmp3368
	xorl	%ebx, %edx	# a, tmp3366
	movl	%r8d, -76(%rsp)	# w6, %sfp
	addl	%eax, %edx	# tmp3368, tmp3369
	movl	%r13d, %eax	# tmp3370, tmp3370
	movl	%r15d, %r13d	# g, tmp3371
	rorl	$11, %r13d	#, tmp3371
	movl	%r13d, %r12d	# tmp3371, tmp3371
	movl	%r15d, %r13d	# g, tmp3373
	roll	$7, %r13d	#, tmp3373
	xorl	%eax, %r12d	# tmp3370, tmp3372
	movl	%r13d, %eax	# tmp3373, tmp3373
	movl	%r9d, %r13d	# c, tmp3375
	rorl	$2, %r13d	#, tmp3375
	xorl	%r12d, %eax	# tmp3372, tmp3374
	movl	%r13d, %r12d	# tmp3375, tmp3375
	movl	%r9d, %r13d	# c, tmp3376
	addl	%edx, %eax	# tmp3369, t1
	rorl	$13, %r13d	#, tmp3376
	leal	(%rdi,%rax), %r11d	#, f
	movl	%r13d, %edx	# tmp3376, tmp3376
	movl	%r9d, %r13d	# c, tmp3378
	xorl	%r12d, %edx	# tmp3375, tmp3377
	roll	$10, %r13d	#, tmp3378
	xorl	%r13d, %edx	# tmp3378, tmp3379
	movl	%ecx, %r13d	# d, tmp3380
	orl	%r9d, %r13d	# c, tmp3380
	movl	%r13d, %edi	# tmp3380, tmp3380
	movl	%ecx, %r13d	# d, tmp3382
	andl	%r9d, %r13d	# c, tmp3382
	andl	%esi, %edi	# e, tmp3381
	orl	%r13d, %edi	# tmp3382, tmp3383
	movl	-72(%rsp), %r13d	# %sfp, w8
	addl	%edx, %edi	# tmp3379, t2
	leal	(%rdi,%rax), %r12d	#, b
	movl	%r10d, %eax	# h, tmp3396
	movl	%r13d, %edi	# w8, tmp3385
	movl	%r13d, %r8d	# w8, tmp3386
	movl	%r13d, %edx	# w8, tmp3388
	rorl	$7, %edi	#, tmp3385
	roll	$14, %r8d	#, tmp3386
	shrl	$3, %edx	#, tmp3388
	xorl	%edi, %r8d	# tmp3385, tmp3387
	xorl	%r15d, %eax	# g, tmp3396
	xorl	%edx, %r8d	# tmp3388, tmp3389
	addl	-104(%rsp), %r8d	# %sfp, tmp3390
	andl	%r11d, %eax	# f, tmp3397
	xorl	%r10d, %eax	# h, tmp3398
	leal	(%r8,%r14), %ebp	#, _2482
	movl	-80(%rsp), %r8d	# %sfp, w5
	movl	%r8d, %edi	# w5, tmp3391
	roll	$15, %edi	#, tmp3391
	movl	%edi, %r14d	# tmp3391, tmp3391
	movl	%r8d, %edi	# w5, w5
	roll	$13, %r8d	#, tmp3392
	xorl	%r14d, %r8d	# tmp3391, tmp3393
	shrl	$10, %edi	#, tmp3394
	xorl	%edi, %r8d	# tmp3394, tmp3395
	addl	%r8d, %ebp	# tmp3395, w7
	leal	-1838011259(%rbx,%rbp), %edx	#, tmp3400
	movl	%r11d, %ebx	# f, tmp3402
	movl	%ebp, -72(%rsp)	# w7, %sfp
	rorl	$6, %ebx	#, tmp3402
	addl	%eax, %edx	# tmp3398, tmp3401
	movl	%ebx, %eax	# tmp3402, tmp3402
	movl	%r11d, %ebx	# f, tmp3403
	rorl	$11, %ebx	#, tmp3403
	movl	%ebx, %r14d	# tmp3403, tmp3403
	movl	%r11d, %ebx	# f, tmp3405
	roll	$7, %ebx	#, tmp3405
	xorl	%eax, %r14d	# tmp3402, tmp3404
	movl	%ebx, %eax	# tmp3405, tmp3405
	movl	-68(%rsp), %ebx	# %sfp, w9
	xorl	%r14d, %eax	# tmp3404, tmp3406
	addl	%edx, %eax	# tmp3401, t1
	leal	(%rsi,%rax), %ebp	#, e
	movl	%r12d, %esi	# b, tmp3407
	movl	%ebx, %edi	# w9, tmp3418
	rorl	$2, %esi	#, tmp3407
	movl	%ebx, %r8d	# w9, tmp3420
	movl	%esi, %r14d	# tmp3407, tmp3407
	movl	%r12d, %esi	# b, tmp3408
	rorl	$13, %esi	#, tmp3408
	movl	%esi, %edx	# tmp3408, tmp3408
	movl	%r12d, %esi	# b, tmp3410
	xorl	%r14d, %edx	# tmp3407, tmp3409
	roll	$10, %esi	#, tmp3410
	xorl	%esi, %edx	# tmp3410, tmp3411
	movl	%r9d, %esi	# c, tmp3412
	orl	%r12d, %esi	# b, tmp3412
	movl	%esi, %r14d	# tmp3412, tmp3412
	movl	%r9d, %esi	# c, tmp3414
	andl	%r12d, %esi	# b, tmp3414
	andl	%ecx, %r14d	# d, tmp3413
	orl	%esi, %r14d	# tmp3414, tmp3415
	movl	%ebx, %esi	# w9, tmp3417
	addl	%edx, %r14d	# tmp3411, t2
	addl	%eax, %r14d	# t1, a
	rorl	$7, %esi	#, tmp3417
	roll	$14, %edi	#, tmp3418
	xorl	%esi, %edi	# tmp3417, tmp3419
	shrl	$3, %r8d	#, tmp3420
	xorl	%r8d, %edi	# tmp3420, tmp3421
	movl	-76(%rsp), %r8d	# %sfp, w6
	addl	%r13d, %edi	# w8, tmp3422
	addl	-56(%rsp), %edi	# %sfp, _2477
	movl	%r8d, %esi	# w6, tmp3424
	movl	%r8d, %r13d	# w6, tmp3423
	roll	$13, %esi	#, tmp3424
	roll	$15, %r13d	#, tmp3423
	movl	%esi, %eax	# tmp3424, tmp3424
	xorl	%r13d, %eax	# tmp3423, tmp3425
	movl	%r8d, %r13d	# w6, tmp3426
	shrl	$10, %r13d	#, tmp3426
	xorl	%r13d, %eax	# tmp3426, tmp3427
	movl	%r15d, %r13d	# g, tmp3428
	leal	(%rax,%rdi), %esi	#, w8
	xorl	%r11d, %r13d	# f, tmp3428
	movl	-100(%rsp), %edi	# %sfp, w10
	movl	%r13d, %eax	# tmp3428, tmp3428
	movl	%ebp, %r13d	# e, tmp3434
	leal	-1564481375(%r10,%rsi), %edx	#, tmp3432
	movl	%ebp, %r10d	# e, tmp3435
	rorl	$6, %r13d	#, tmp3434
	rorl	$11, %r10d	#, tmp3435
	andl	%ebp, %eax	# e, tmp3429
	movl	%esi, -68(%rsp)	# w8, %sfp
	xorl	%r13d, %r10d	# tmp3434, tmp3436
	movl	%ebp, %r13d	# e, tmp3437
	xorl	%r15d, %eax	# g, tmp3430
	roll	$7, %r13d	#, tmp3437
	addl	%eax, %edx	# tmp3430, tmp3433
	movl	%edi, %esi	# w10, tmp3450
	movl	%r13d, %eax	# tmp3437, tmp3437
	movl	%r14d, %r13d	# a, tmp3440
	xorl	%r10d, %eax	# tmp3436, tmp3438
	rorl	$13, %r13d	#, tmp3440
	movl	%r14d, %r10d	# a, tmp3439
	addl	%edx, %eax	# tmp3433, t1
	rorl	$2, %r10d	#, tmp3439
	movl	%r13d, %edx	# tmp3440, tmp3440
	xorl	%r10d, %edx	# tmp3439, tmp3441
	movl	%r14d, %r10d	# a, tmp3442
	movl	%r12d, %r13d	# b, tmp3446
	roll	$10, %r10d	#, tmp3442
	andl	%r14d, %r13d	# a, tmp3446
	leal	(%rcx,%rax), %r8d	#, d
	xorl	%r10d, %edx	# tmp3442, tmp3443
	movl	%r12d, %r10d	# b, tmp3444
	movl	%edi, %ecx	# w10, tmp3449
	orl	%r14d, %r10d	# a, tmp3444
	andl	%r9d, %r10d	# c, tmp3445
	orl	%r13d, %r10d	# tmp3446, tmp3447
	addl	%edx, %r10d	# tmp3443, t2
	movl	-72(%rsp), %edx	# %sfp, w7
	addl	%eax, %r10d	# t1, h
	rorl	$7, %ecx	#, tmp3449
	roll	$14, %esi	#, tmp3450
	xorl	%ecx, %esi	# tmp3449, tmp3451
	shrl	$3, %edi	#, tmp3452
	movl	%edx, %ecx	# w7, tmp3456
	movl	%edx, %r13d	# w7, tmp3455
	xorl	%edi, %esi	# tmp3452, tmp3453
	roll	$13, %ecx	#, tmp3456
	roll	$15, %r13d	#, tmp3455
	addl	%ebx, %esi	# w9, tmp3454
	movl	%ecx, %eax	# tmp3456, tmp3456
	addl	-88(%rsp), %esi	# %sfp, _2472
	movl	-68(%rsp), %ebx	# %sfp, w8
	xorl	%r13d, %eax	# tmp3455, tmp3457
	movl	%edx, %r13d	# w7, tmp3458
	shrl	$10, %r13d	#, tmp3458
	xorl	%r13d, %eax	# tmp3458, tmp3459
	movl	%r11d, %r13d	# f, tmp3460
	xorl	%ebp, %r13d	# e, tmp3460
	leal	(%rax,%rsi), %ecx	#, w9
	movl	%r8d, %esi	# d, tmp3467
	movl	%r13d, %eax	# tmp3460, tmp3460
	movl	%r8d, %r13d	# d, tmp3466
	rorl	$11, %esi	#, tmp3467
	rorl	$6, %r13d	#, tmp3466
	andl	%r8d, %eax	# d, tmp3461
	leal	-1474664885(%r15,%rcx), %edx	#, tmp3464
	xorl	%r13d, %esi	# tmp3466, tmp3468
	movl	%r8d, %r13d	# d, tmp3469
	xorl	%r11d, %eax	# f, tmp3462
	roll	$7, %r13d	#, tmp3469
	addl	%eax, %edx	# tmp3462, tmp3465
	movl	-64(%rsp), %r15d	# %sfp, w11
	xorl	%r13d, %esi	# tmp3469, tmp3470
	movl	%r10d, %r13d	# h, tmp3472
	movl	%ecx, -112(%rsp)	# w9, %sfp
	leal	(%rdx,%rsi), %eax	#, t1
	rorl	$13, %r13d	#, tmp3472
	movl	%r10d, %esi	# h, tmp3471
	rorl	$2, %esi	#, tmp3471
	movl	%r13d, %edx	# tmp3472, tmp3472
	movl	%r14d, %r13d	# a, tmp3478
	xorl	%esi, %edx	# tmp3471, tmp3473
	movl	%r10d, %esi	# h, tmp3474
	andl	%r10d, %r13d	# h, tmp3478
	roll	$10, %esi	#, tmp3474
	addl	%eax, %r9d	# t1, c
	movl	%r15d, %ecx	# w11, tmp3482
	xorl	%esi, %edx	# tmp3474, tmp3475
	movl	%r14d, %esi	# a, tmp3476
	orl	%r10d, %esi	# h, tmp3476
	andl	%r12d, %esi	# b, tmp3477
	orl	%r13d, %esi	# tmp3478, tmp3479
	addl	%edx, %esi	# tmp3475, t2
	movl	%r15d, %edx	# w11, tmp3481
	roll	$14, %ecx	#, tmp3482
	rorl	$7, %edx	#, tmp3481
	addl	%eax, %esi	# t1, g
	xorl	%edx, %ecx	# tmp3481, tmp3483
	movl	%r15d, %edx	# w11, tmp3484
	shrl	$3, %edx	#, tmp3484
	xorl	%edx, %ecx	# tmp3484, tmp3485
	movl	%ebx, %edx	# w8, tmp3487
	addl	-100(%rsp), %ecx	# %sfp, tmp3486
	roll	$15, %edx	#, tmp3487
	addl	-52(%rsp), %ecx	# %sfp, _2467
	movl	%edx, %r13d	# tmp3487, tmp3487
	movl	%ebx, %edx	# w8, tmp3488
	roll	$13, %edx	#, tmp3488
	movl	%edx, %eax	# tmp3488, tmp3488
	movl	%ebx, %edx	# w8, tmp3490
	xorl	%r13d, %eax	# tmp3487, tmp3489
	shrl	$10, %edx	#, tmp3490
	movl	%ebp, %r13d	# e, tmp3492
	xorl	%edx, %eax	# tmp3490, tmp3491
	xorl	%r8d, %r13d	# d, tmp3492
	leal	(%rax,%rcx), %edi	#, w10
	movl	%r13d, %eax	# tmp3492, tmp3492
	movl	%r9d, %r13d	# c, tmp3501
	andl	%r9d, %eax	# c, tmp3493
	roll	$7, %r13d	#, tmp3501
	leal	-1035236496(%r11,%rdi), %ecx	#, tmp3496
	movl	%r9d, %r11d	# c, tmp3498
	xorl	%ebp, %eax	# e, tmp3494
	rorl	$6, %r11d	#, tmp3498
	movl	%edi, -108(%rsp)	# w10, %sfp
	addl	%eax, %ecx	# tmp3494, tmp3497
	movl	%r11d, %eax	# tmp3498, tmp3498
	movl	%r9d, %r11d	# c, tmp3499
	rorl	$11, %r11d	#, tmp3499
	xorl	%eax, %r11d	# tmp3498, tmp3500
	movl	%r13d, %eax	# tmp3501, tmp3501
	movl	%r8d, %r13d	# d, tmp3524
	xorl	%r11d, %eax	# tmp3500, tmp3502
	addl	%ecx, %eax	# tmp3497, t1
	leal	(%r12,%rax), %edi	#, b
	movl	%esi, %r12d	# g, tmp3503
	rorl	$2, %r12d	#, tmp3503
	movl	%r12d, %r11d	# tmp3503, tmp3503
	movl	%esi, %r12d	# g, tmp3504
	rorl	$13, %r12d	#, tmp3504
	movl	%r12d, %ecx	# tmp3504, tmp3504
	movl	%esi, %r12d	# g, tmp3506
	xorl	%r11d, %ecx	# tmp3503, tmp3505
	roll	$10, %r12d	#, tmp3506
	xorl	%r12d, %ecx	# tmp3506, tmp3507
	movl	%r10d, %r12d	# h, tmp3508
	orl	%esi, %r12d	# g, tmp3508
	movl	%r12d, %edx	# tmp3508, tmp3508
	movl	%r10d, %r12d	# h, tmp3510
	andl	%esi, %r12d	# g, tmp3510
	andl	%r14d, %edx	# a, tmp3509
	orl	%r12d, %edx	# tmp3510, tmp3511
	xorl	%r9d, %r13d	# c, tmp3524
	addl	%ecx, %edx	# tmp3507, t2
	leal	(%rdx,%rax), %r11d	#, f
	movl	-96(%rsp), %edx	# %sfp, w12
	movl	%edx, %ecx	# w12, tmp3513
	rorl	$7, %ecx	#, tmp3513
	movl	%ecx, %eax	# tmp3513, tmp3513
	movl	%edx, %ecx	# w12, w12
	roll	$14, %edx	#, tmp3514
	movl	%ecx, %r12d	# w12, tmp3516
	movl	-112(%rsp), %ecx	# %sfp, w9
	xorl	%eax, %edx	# tmp3513, tmp3515
	shrl	$3, %r12d	#, tmp3516
	xorl	%r12d, %edx	# tmp3516, tmp3517
	addl	%r15d, %edx	# w11, tmp3518
	movl	%ecx, %r15d	# w9, tmp3519
	addl	-84(%rsp), %edx	# %sfp, _2462
	roll	$15, %r15d	#, tmp3519
	movl	%r15d, %ebx	# tmp3519, tmp3519
	movl	%ecx, %r15d	# w9, tmp3520
	roll	$13, %r15d	#, tmp3520
	movl	%r15d, %eax	# tmp3520, tmp3520
	movl	%ecx, %r15d	# w9, tmp3522
	xorl	%ebx, %eax	# tmp3519, tmp3521
	shrl	$10, %r15d	#, tmp3522
	xorl	%r15d, %eax	# tmp3522, tmp3523
	movl	-92(%rsp), %r15d	# %sfp, w13
	leal	(%rax,%rdx), %r12d	#, w11
	movl	%r13d, %eax	# tmp3524, tmp3524
	andl	%edi, %eax	# b, tmp3525
	leal	-949202525(%rbp,%r12), %edx	#, tmp3528
	movl	%edi, %ebp	# b, tmp3530
	xorl	%r8d, %eax	# d, tmp3526
	rorl	$6, %ebp	#, tmp3530
	movl	%r12d, -104(%rsp)	# w11, %sfp
	addl	%eax, %edx	# tmp3526, tmp3529
	movl	%ebp, %eax	# tmp3530, tmp3530
	movl	%edi, %ebp	# b, tmp3531
	rorl	$11, %ebp	#, tmp3531
	movl	%ebp, %r13d	# tmp3531, tmp3531
	movl	%edi, %ebp	# b, tmp3533
	roll	$7, %ebp	#, tmp3533
	xorl	%eax, %r13d	# tmp3530, tmp3532
	movl	%ebp, %eax	# tmp3533, tmp3533
	xorl	%r13d, %eax	# tmp3532, tmp3534
	movl	%r11d, %r13d	# f, tmp3535
	addl	%edx, %eax	# tmp3529, t1
	rorl	$2, %r13d	#, tmp3535
	leal	(%r14,%rax), %ebp	#, a
	movl	%r11d, %r14d	# f, tmp3536
	rorl	$13, %r14d	#, tmp3536
	movl	%r14d, %edx	# tmp3536, tmp3536
	movl	%esi, %r14d	# g, tmp3540
	xorl	%r13d, %edx	# tmp3535, tmp3537
	movl	%r11d, %r13d	# f, tmp3538
	orl	%r11d, %r14d	# f, tmp3540
	roll	$10, %r13d	#, tmp3538
	movl	%r14d, %ebx	# tmp3540, tmp3540
	movl	-108(%rsp), %r14d	# %sfp, w10
	xorl	%r13d, %edx	# tmp3538, tmp3539
	movl	%esi, %r13d	# g, tmp3542
	andl	%r10d, %ebx	# h, tmp3541
	andl	%r11d, %r13d	# f, tmp3542
	orl	%r13d, %ebx	# tmp3542, tmp3543
	movl	%r14d, %r12d	# w10, tmp3551
	addl	%edx, %ebx	# tmp3539, t2
	movl	%r15d, %edx	# w13, tmp3545
	roll	$15, %r12d	#, tmp3551
	rorl	$7, %edx	#, tmp3545
	leal	(%rbx,%rax), %r13d	#, e
	movl	%r12d, %ebx	# tmp3551, tmp3551
	movl	%edx, %eax	# tmp3545, tmp3545
	movl	%r15d, %edx	# w13, tmp3546
	shrl	$3, %r15d	#, tmp3548
	roll	$14, %edx	#, tmp3546
	movl	%r14d, %r12d	# w10, tmp3552
	xorl	%eax, %edx	# tmp3545, tmp3547
	roll	$13, %r12d	#, tmp3552
	xorl	%r15d, %edx	# tmp3548, tmp3549
	addl	-96(%rsp), %edx	# %sfp, tmp3550
	movl	%r12d, %eax	# tmp3552, tmp3552
	addl	-80(%rsp), %edx	# %sfp, _2457
	movl	%r14d, %r12d	# w10, tmp3554
	xorl	%ebx, %eax	# tmp3551, tmp3553
	shrl	$10, %r12d	#, tmp3554
	xorl	%r12d, %eax	# tmp3554, tmp3555
	movl	-60(%rsp), %r12d	# %sfp, w14
	leal	(%rax,%rdx), %ecx	#, w12
	movl	%r9d, %eax	# c, tmp3556
	xorl	%edi, %eax	# b, tmp3556
	movl	%r12d, %r14d	# w14, tmp3577
	andl	%ebp, %eax	# a, tmp3557
	leal	-778901479(%r8,%rcx), %edx	#, tmp3560
	movl	%ebp, %r8d	# a, tmp3562
	xorl	%r9d, %eax	# c, tmp3558
	rorl	$6, %r8d	#, tmp3562
	movl	%ecx, -96(%rsp)	# w12, %sfp
	addl	%eax, %edx	# tmp3558, tmp3561
	movl	%r8d, %eax	# tmp3562, tmp3562
	movl	%ebp, %r8d	# a, tmp3563
	rorl	$11, %r8d	#, tmp3563
	movl	%r8d, %ecx	# tmp3563, tmp3563
	movl	%ebp, %r8d	# a, tmp3565
	xorl	%eax, %ecx	# tmp3562, tmp3564
	roll	$7, %r8d	#, tmp3565
	xorl	%r8d, %ecx	# tmp3565, tmp3566
	movl	%r13d, %r8d	# e, tmp3567
	rorl	$2, %r8d	#, tmp3567
	leal	(%rdx,%rcx), %eax	#, t1
	movl	%r8d, %ecx	# tmp3567, tmp3567
	movl	%r13d, %r8d	# e, tmp3568
	rorl	$13, %r8d	#, tmp3568
	addl	%eax, %r10d	# t1, h
	movl	%r8d, %edx	# tmp3568, tmp3568
	movl	%r13d, %r8d	# e, tmp3570
	xorl	%ecx, %edx	# tmp3567, tmp3569
	roll	$10, %r8d	#, tmp3570
	xorl	%r8d, %edx	# tmp3570, tmp3571
	movl	%r11d, %r8d	# f, tmp3572
	orl	%r13d, %r8d	# e, tmp3572
	movl	%r8d, %ecx	# tmp3572, tmp3572
	movl	%r11d, %r8d	# f, tmp3574
	andl	%r13d, %r8d	# e, tmp3574
	andl	%esi, %ecx	# g, tmp3573
	orl	%r8d, %ecx	# tmp3574, tmp3575
	rorl	$7, %r14d	#, tmp3577
	movl	-76(%rsp), %r8d	# %sfp, w6
	movl	%r14d, %r15d	# tmp3577, tmp3577
	movl	%r12d, %r14d	# w14, tmp3578
	shrl	$3, %r12d	#, tmp3580
	roll	$14, %r14d	#, tmp3578
	addl	%edx, %ecx	# tmp3571, t2
	movl	-104(%rsp), %edx	# %sfp, w11
	xorl	%r15d, %r14d	# tmp3577, tmp3579
	addl	%eax, %ecx	# t1, d
	xorl	%r12d, %r14d	# tmp3580, tmp3581
	addl	-92(%rsp), %r14d	# %sfp, tmp3582
	movl	-96(%rsp), %r12d	# %sfp, w12
	leal	(%r14,%r8), %r15d	#, _2452
	movl	%edx, %r8d	# w11, tmp3583
	roll	$15, %r8d	#, tmp3583
	movl	%r8d, %eax	# tmp3583, tmp3583
	movl	%edx, %r8d	# w11, tmp3584
	roll	$13, %r8d	#, tmp3584
	movl	%r8d, %r14d	# tmp3584, tmp3584
	movl	%edx, %r8d	# w11, tmp3586
	xorl	%eax, %r14d	# tmp3583, tmp3585
	shrl	$10, %r8d	#, tmp3586
	movl	%edi, %eax	# b, tmp3588
	xorl	%r8d, %r14d	# tmp3586, tmp3587
	xorl	%ebp, %eax	# a, tmp3588
	leal	(%r14,%r15), %r8d	#, w13
	andl	%r10d, %eax	# h, tmp3589
	movl	-48(%rsp), %r15d	# %sfp, w15
	xorl	%edi, %eax	# b, tmp3590
	leal	-694614492(%r9,%r8), %edx	#, tmp3592
	movl	%r10d, %r9d	# h, tmp3594
	movl	%r8d, -100(%rsp)	# w13, %sfp
	rorl	$6, %r9d	#, tmp3594
	addl	%eax, %edx	# tmp3590, tmp3593
	movl	%r9d, %eax	# tmp3594, tmp3594
	movl	%r10d, %r9d	# h, tmp3595
	rorl	$11, %r9d	#, tmp3595
	movl	%r9d, %r14d	# tmp3595, tmp3595
	movl	%r10d, %r9d	# h, tmp3597
	xorl	%eax, %r14d	# tmp3594, tmp3596
	roll	$7, %r9d	#, tmp3597
	xorl	%r9d, %r14d	# tmp3597, tmp3598
	movl	%ecx, %r9d	# d, tmp3599
	rorl	$2, %r9d	#, tmp3599
	leal	(%rdx,%r14), %eax	#, t1
	movl	%r9d, %r14d	# tmp3599, tmp3599
	movl	%ecx, %r9d	# d, tmp3600
	rorl	$13, %r9d	#, tmp3600
	addl	%eax, %esi	# t1, g
	movl	%r9d, %edx	# tmp3600, tmp3600
	movl	%ecx, %r9d	# d, tmp3602
	xorl	%r14d, %edx	# tmp3599, tmp3601
	roll	$10, %r9d	#, tmp3602
	xorl	%r9d, %edx	# tmp3602, tmp3603
	movl	%r13d, %r9d	# e, tmp3604
	orl	%ecx, %r9d	# d, tmp3604
	movl	%r9d, %r14d	# tmp3604, tmp3604
	movl	%r13d, %r9d	# e, tmp3606
	andl	%ecx, %r9d	# d, tmp3606
	andl	%r11d, %r14d	# f, tmp3605
	orl	%r9d, %r14d	# tmp3606, tmp3607
	addl	%edx, %r14d	# tmp3603, t2
	movl	%r15d, %edx	# w15, tmp3609
	rorl	$7, %edx	#, tmp3609
	addl	%eax, %r14d	# t1, c
	movl	%edx, %ebx	# tmp3609, tmp3609
	movl	%r15d, %edx	# w15, w15
	roll	$14, %r15d	#, tmp3610
	movl	%r15d, %eax	# tmp3610, tmp3610
	movl	%edx, %r9d	# w15, tmp3612
	movl	%edx, %r15d	# w15, w15
	xorl	%ebx, %eax	# tmp3609, tmp3611
	shrl	$3, %r9d	#, tmp3612
	xorl	%r9d, %eax	# tmp3612, tmp3613
	movl	%r12d, %r9d	# w12, tmp3615
	addl	-60(%rsp), %eax	# %sfp, tmp3614
	roll	$15, %r9d	#, tmp3615
	addl	-72(%rsp), %eax	# %sfp, _2447
	movl	%r9d, %r8d	# tmp3615, tmp3615
	movl	%r12d, %r9d	# w12, tmp3616
	roll	$13, %r9d	#, tmp3616
	movl	%r9d, %edx	# tmp3616, tmp3616
	movl	%r12d, %r9d	# w12, tmp3618
	xorl	%r8d, %edx	# tmp3615, tmp3617
	shrl	$10, %r9d	#, tmp3618
	xorl	%r9d, %edx	# tmp3618, tmp3619
	movl	%ebp, %r9d	# a, tmp3620
	leal	(%rdx,%rax), %r12d	#, w14
	xorl	%r10d, %r9d	# h, tmp3620
	movl	%r9d, %eax	# tmp3620, tmp3620
	movl	%esi, %r9d	# g, tmp3626
	andl	%esi, %eax	# g, tmp3621
	leal	-200395387(%rdi,%r12), %edx	#, tmp3624
	rorl	$6, %r9d	#, tmp3626
	xorl	%ebp, %eax	# a, tmp3622
	movl	%r12d, -92(%rsp)	# w14, %sfp
	movl	-44(%rsp), %r12d	# %sfp, w0
	addl	%eax, %edx	# tmp3622, tmp3625
	movl	%r9d, %eax	# tmp3626, tmp3626
	movl	%esi, %r9d	# g, tmp3627
	rorl	$11, %r9d	#, tmp3627
	movl	%r9d, %r8d	# tmp3627, tmp3627
	movl	%esi, %r9d	# g, tmp3629
	xorl	%eax, %r8d	# tmp3626, tmp3628
	roll	$7, %r9d	#, tmp3629
	xorl	%r9d, %r8d	# tmp3629, tmp3630
	movl	-100(%rsp), %r9d	# %sfp, w13
	leal	(%rdx,%r8), %eax	#, t1
	leal	(%r11,%rax), %edx	#, f
	movl	%r14d, %r11d	# c, tmp3631
	rorl	$2, %r11d	#, tmp3631
	movl	%r11d, %r8d	# tmp3631, tmp3631
	movl	%r14d, %r11d	# c, tmp3632
	rorl	$13, %r11d	#, tmp3632
	movl	%r11d, %edi	# tmp3632, tmp3632
	movl	%r14d, %r11d	# c, tmp3634
	xorl	%r8d, %edi	# tmp3631, tmp3633
	roll	$10, %r11d	#, tmp3634
	xorl	%r11d, %edi	# tmp3634, tmp3635
	movl	%ecx, %r11d	# d, tmp3636
	orl	%r14d, %r11d	# c, tmp3636
	movl	%r11d, %r8d	# tmp3636, tmp3636
	movl	%ecx, %r11d	# d, tmp3638
	andl	%r14d, %r11d	# c, tmp3638
	andl	%r13d, %r8d	# e, tmp3637
	orl	%r11d, %r8d	# tmp3638, tmp3639
	movl	%r12d, %r11d	# w0, tmp3641
	addl	%edi, %r8d	# tmp3635, t2
	movl	%r12d, %edi	# w0, tmp3642
	rorl	$7, %r11d	#, tmp3641
	roll	$14, %edi	#, tmp3642
	addl	%eax, %r8d	# t1, b
	movl	%edi, %ebx	# tmp3642, tmp3642
	xorl	%r11d, %ebx	# tmp3641, tmp3643
	movl	%r12d, %r11d	# w0, tmp3644
	shrl	$3, %r11d	#, tmp3644
	xorl	%r11d, %ebx	# tmp3644, tmp3645
	movl	%r9d, %r11d	# w13, tmp3647
	roll	$15, %r11d	#, tmp3647
	addl	%r15d, %ebx	# w15, tmp3646
	addl	-68(%rsp), %ebx	# %sfp, _2442
	movl	%r11d, %edi	# tmp3647, tmp3647
	movl	%r9d, %r11d	# w13, tmp3648
	movl	-56(%rsp), %r15d	# %sfp, w1
	roll	$13, %r11d	#, tmp3648
	movl	%r11d, %eax	# tmp3648, tmp3648
	movl	%r9d, %r11d	# w13, tmp3650
	movl	%r10d, %r9d	# h, tmp3652
	xorl	%edi, %eax	# tmp3647, tmp3649
	shrl	$10, %r11d	#, tmp3650
	xorl	%esi, %r9d	# g, tmp3652
	xorl	%r11d, %eax	# tmp3650, tmp3651
	movl	%r9d, %edi	# tmp3652, tmp3652
	leal	(%rax,%rbx), %r11d	#, w15
	andl	%edx, %edi	# f, tmp3653
	xorl	%r10d, %edi	# h, tmp3654
	leal	275423344(%rbp,%r11), %r9d	#, tmp3656
	movl	%edx, %ebp	# f, tmp3658
	movl	%r11d, -64(%rsp)	# w15, %sfp
	rorl	$6, %ebp	#, tmp3658
	movl	%r15d, %r11d	# w1, tmp3674
	addl	%edi, %r9d	# tmp3654, tmp3657
	movl	%ebp, %edi	# tmp3658, tmp3658
	movl	%edx, %ebp	# f, tmp3659
	rorl	$11, %ebp	#, tmp3659
	movl	%ebp, %eax	# tmp3659, tmp3659
	movl	%edx, %ebp	# f, tmp3661
	xorl	%edi, %eax	# tmp3658, tmp3660
	roll	$7, %ebp	#, tmp3661
	xorl	%ebp, %eax	# tmp3661, tmp3662
	movl	%r8d, %ebp	# b, tmp3663
	rorl	$2, %ebp	#, tmp3663
	leal	(%r9,%rax), %edi	#, t1
	movl	%ebp, %eax	# tmp3663, tmp3663
	movl	%r8d, %ebp	# b, tmp3664
	rorl	$13, %ebp	#, tmp3664
	leal	0(%r13,%rdi), %ebx	#, e
	movl	-92(%rsp), %r13d	# %sfp, w14
	movl	%ebp, %r9d	# tmp3664, tmp3664
	movl	%r8d, %ebp	# b, tmp3666
	xorl	%eax, %r9d	# tmp3663, tmp3665
	roll	$10, %ebp	#, tmp3666
	xorl	%ebp, %r9d	# tmp3666, tmp3667
	movl	%r14d, %ebp	# c, tmp3668
	orl	%r8d, %ebp	# b, tmp3668
	movl	%ebp, %eax	# tmp3668, tmp3668
	movl	%r14d, %ebp	# c, tmp3670
	andl	%r8d, %ebp	# b, tmp3670
	andl	%ecx, %eax	# d, tmp3669
	orl	%ebp, %eax	# tmp3670, tmp3671
	movl	%r15d, %ebp	# w1, tmp3673
	roll	$14, %r11d	#, tmp3674
	rorl	$7, %ebp	#, tmp3673
	addl	%r9d, %eax	# tmp3667, t2
	movl	%esi, %r9d	# g, tmp3684
	xorl	%ebp, %r11d	# tmp3673, tmp3675
	movl	%r15d, %ebp	# w1, tmp3676
	addl	%edi, %eax	# t1, a
	shrl	$3, %ebp	#, tmp3676
	movl	%r13d, %edi	# w14, tmp3680
	xorl	%edx, %r9d	# f, tmp3684
	xorl	%ebp, %r11d	# tmp3676, tmp3677
	movl	%r13d, %ebp	# w14, tmp3679
	roll	$13, %edi	#, tmp3680
	addl	%r12d, %r11d	# w0, tmp3678
	roll	$15, %ebp	#, tmp3679
	addl	-112(%rsp), %r11d	# %sfp, _2437
	xorl	%ebp, %edi	# tmp3679, tmp3681
	movl	%r13d, %ebp	# w14, tmp3682
	movl	-64(%rsp), %r12d	# %sfp, w15
	shrl	$10, %ebp	#, tmp3682
	xorl	%ebp, %edi	# tmp3682, tmp3683
	leal	(%rdi,%r11), %r13d	#, w0
	movl	%r9d, %edi	# tmp3684, tmp3684
	andl	%ebx, %edi	# e, tmp3685
	leal	430227734(%r10,%r13), %r9d	#, tmp3688
	movl	%ebx, %r10d	# e, tmp3690
	xorl	%esi, %edi	# g, tmp3686
	rorl	$6, %r10d	#, tmp3690
	movl	%r13d, -60(%rsp)	# w0, %sfp
	movl	-60(%rsp), %ebp	# %sfp, w0
	addl	%edi, %r9d	# tmp3686, tmp3689
	movl	%r10d, %edi	# tmp3690, tmp3690
	movl	%ebx, %r10d	# e, tmp3691
	rorl	$11, %r10d	#, tmp3691
	movl	%r10d, %r11d	# tmp3691, tmp3691
	movl	%ebx, %r10d	# e, tmp3693
	xorl	%edi, %r11d	# tmp3690, tmp3692
	roll	$7, %r10d	#, tmp3693
	xorl	%r10d, %r11d	# tmp3693, tmp3694
	movl	%eax, %r10d	# a, tmp3695
	leal	(%r9,%r11), %edi	#, t1
	movl	%eax, %r9d	# a, tmp3696
	rorl	$2, %r10d	#, tmp3695
	rorl	$13, %r9d	#, tmp3696
	xorl	%r10d, %r9d	# tmp3695, tmp3697
	movl	%eax, %r10d	# a, tmp3698
	addl	%edi, %ecx	# t1, d
	roll	$10, %r10d	#, tmp3698
	xorl	%r10d, %r9d	# tmp3698, tmp3699
	movl	%r8d, %r10d	# b, tmp3700
	orl	%eax, %r10d	# a, tmp3700
	movl	%r10d, %r11d	# tmp3700, tmp3700
	movl	%r8d, %r10d	# b, tmp3702
	andl	%r14d, %r11d	# c, tmp3701
	andl	%eax, %r10d	# a, tmp3702
	orl	%r10d, %r11d	# tmp3702, tmp3703
	movl	%r12d, %r10d	# w15, tmp3711
	addl	%r9d, %r11d	# tmp3699, t2
	roll	$15, %r10d	#, tmp3711
	addl	%edi, %r11d	# t1, h
	movl	-88(%rsp), %edi	# %sfp, w2
	movl	%edi, %r13d	# w2, tmp3705
	movl	%edi, %r9d	# w2, tmp3706
	rorl	$7, %r13d	#, tmp3705
	roll	$14, %r9d	#, tmp3706
	xorl	%r13d, %r9d	# tmp3705, tmp3707
	movl	%edi, %r13d	# w2, tmp3708
	movl	%r10d, %edi	# tmp3711, tmp3711
	shrl	$3, %r13d	#, tmp3708
	movl	%r12d, %r10d	# w15, tmp3712
	xorl	%r13d, %r9d	# tmp3708, tmp3709
	roll	$13, %r10d	#, tmp3712
	addl	%r15d, %r9d	# w1, tmp3710
	addl	-108(%rsp), %r9d	# %sfp, _2432
	movl	%r10d, %r13d	# tmp3712, tmp3712
	movl	%r12d, %r10d	# w15, tmp3714
	xorl	%edi, %r13d	# tmp3711, tmp3713
	movl	%edx, %edi	# f, tmp3716
	shrl	$10, %r10d	#, tmp3714
	xorl	%ebx, %edi	# e, tmp3716
	movl	-52(%rsp), %r15d	# %sfp, w3
	xorl	%r10d, %r13d	# tmp3714, tmp3715
	andl	%ecx, %edi	# d, tmp3717
	movl	%ecx, %r10d	# d, tmp3723
	addl	%r9d, %r13d	# _2432, w1
	xorl	%edx, %edi	# f, tmp3718
	rorl	$11, %r10d	#, tmp3723
	leal	506948616(%rsi,%r13), %esi	#, tmp3720
	movl	%eax, %r12d	# a, tmp3734
	addl	%esi, %edi	# tmp3720, tmp3721
	movl	%ecx, %esi	# d, tmp3722
	rorl	$6, %esi	#, tmp3722
	xorl	%esi, %r10d	# tmp3722, tmp3724
	movl	%ecx, %esi	# d, tmp3725
	roll	$7, %esi	#, tmp3725
	xorl	%esi, %r10d	# tmp3725, tmp3726
	leal	(%rdi,%r10), %esi	#, t1
	movl	%r11d, %r10d	# h, tmp3727
	movl	%r11d, %edi	# h, tmp3728
	rorl	$2, %r10d	#, tmp3727
	rorl	$13, %edi	#, tmp3728
	xorl	%r10d, %edi	# tmp3727, tmp3729
	movl	%r11d, %r10d	# h, tmp3730
	addl	%esi, %r14d	# t1, c
	roll	$10, %r10d	#, tmp3730
	movl	%r14d, %r9d	# c, tmp3755
	xorl	%r10d, %edi	# tmp3730, tmp3731
	movl	%eax, %r10d	# a, tmp3732
	orl	%r11d, %r10d	# h, tmp3732
	andl	%r11d, %r12d	# h, tmp3734
	rorl	$11, %r9d	#, tmp3755
	andl	%r8d, %r10d	# b, tmp3733
	orl	%r12d, %r10d	# tmp3734, tmp3735
	movl	%r15d, %r12d	# w3, tmp3738
	addl	%edi, %r10d	# tmp3731, t2
	movl	%r15d, %edi	# w3, tmp3737
	roll	$14, %r12d	#, tmp3738
	rorl	$7, %edi	#, tmp3737
	addl	%esi, %r10d	# t1, g
	movl	-104(%rsp), %esi	# %sfp, w11
	xorl	%edi, %r12d	# tmp3737, tmp3739
	movl	%r15d, %edi	# w3, tmp3740
	shrl	$3, %edi	#, tmp3740
	xorl	%edi, %r12d	# tmp3740, tmp3741
	addl	-88(%rsp), %r12d	# %sfp, tmp3742
	leal	(%r12,%rsi), %edi	#, _2427
	movl	%ebp, %esi	# w0, tmp3743
	movl	%ebp, %r12d	# w0, tmp3744
	roll	$15, %esi	#, tmp3743
	roll	$13, %r12d	#, tmp3744
	xorl	%esi, %r12d	# tmp3743, tmp3745
	movl	%ebp, %esi	# w0, tmp3746
	shrl	$10, %esi	#, tmp3746
	xorl	%esi, %r12d	# tmp3746, tmp3747
	movl	%ebx, %esi	# e, tmp3748
	addl	%edi, %r12d	# _2427, w2
	xorl	%ecx, %esi	# d, tmp3748
	movl	%r11d, %edi	# h, tmp3766
	andl	%r14d, %esi	# c, tmp3749
	leal	659060556(%rdx,%r12), %edx	#, tmp3752
	xorl	%ebx, %esi	# e, tmp3750
	addl	%edx, %esi	# tmp3752, tmp3753
	movl	%r14d, %edx	# c, tmp3754
	rorl	$6, %edx	#, tmp3754
	xorl	%edx, %r9d	# tmp3754, tmp3756
	movl	%r14d, %edx	# c, tmp3757
	roll	$7, %edx	#, tmp3757
	xorl	%r9d, %edx	# tmp3756, tmp3758
	addl	%esi, %edx	# tmp3753, t1
	movl	%r10d, %esi	# g, tmp3759
	rorl	$2, %esi	#, tmp3759
	addl	%edx, %r8d	# t1, b
	movl	%esi, %r9d	# tmp3759, tmp3759
	movl	%r10d, %esi	# g, tmp3760
	rorl	$13, %esi	#, tmp3760
	xorl	%r9d, %esi	# tmp3759, tmp3761
	movl	%r10d, %r9d	# g, tmp3762
	roll	$10, %r9d	#, tmp3762
	andl	%r10d, %edi	# g, tmp3766
	xorl	%r9d, %esi	# tmp3762, tmp3763
	movl	%r11d, %r9d	# h, tmp3764
	orl	%r10d, %r9d	# g, tmp3764
	andl	%eax, %r9d	# a, tmp3765
	orl	%edi, %r9d	# tmp3766, tmp3767
	movl	-84(%rsp), %edi	# %sfp, w4
	addl	%esi, %r9d	# tmp3763, t2
	addl	%edx, %r9d	# t1, f
	movl	%r13d, %edx	# w1, tmp3775
	movl	%edi, %esi	# w4, tmp3769
	movl	%edi, %ebp	# w4, tmp3770
	roll	$15, %edx	#, tmp3775
	rorl	$7, %esi	#, tmp3769
	roll	$14, %ebp	#, tmp3770
	xorl	%esi, %ebp	# tmp3769, tmp3771
	movl	%edi, %esi	# w4, tmp3772
	movl	-96(%rsp), %edi	# %sfp, w12
	shrl	$3, %esi	#, tmp3772
	xorl	%esi, %ebp	# tmp3772, tmp3773
	addl	%r15d, %ebp	# w3, tmp3774
	leal	0(%rbp,%rdi), %esi	#, _2422
	movl	%r13d, %ebp	# w1, tmp3776
	movl	%r8d, %edi	# b, tmp3787
	roll	$13, %ebp	#, tmp3776
	rorl	$11, %edi	#, tmp3787
	xorl	%edx, %ebp	# tmp3775, tmp3777
	movl	%r13d, %edx	# w1, tmp3778
	shrl	$10, %edx	#, tmp3778
	xorl	%edx, %ebp	# tmp3778, tmp3779
	movl	%ecx, %edx	# d, tmp3780
	addl	%esi, %ebp	# _2422, w3
	xorl	%r14d, %edx	# c, tmp3780
	andl	%r8d, %edx	# b, tmp3781
	leal	883997877(%rbx,%rbp), %esi	#, tmp3784
	movl	%r10d, %ebx	# g, tmp3798
	xorl	%ecx, %edx	# d, tmp3782
	addl	%edx, %esi	# tmp3782, tmp3785
	movl	%r8d, %edx	# b, tmp3786
	rorl	$6, %edx	#, tmp3786
	xorl	%edx, %edi	# tmp3786, tmp3788
	movl	%r8d, %edx	# b, tmp3789
	roll	$7, %edx	#, tmp3789
	xorl	%edi, %edx	# tmp3788, tmp3790
	movl	%r9d, %edi	# f, tmp3791
	addl	%esi, %edx	# tmp3785, t1
	movl	%r9d, %esi	# f, tmp3792
	rorl	$2, %edi	#, tmp3791
	addl	%edx, %eax	# t1, a
	rorl	$13, %esi	#, tmp3792
	andl	%r9d, %ebx	# f, tmp3798
	xorl	%edi, %esi	# tmp3791, tmp3793
	movl	%r9d, %edi	# f, tmp3794
	roll	$10, %edi	#, tmp3794
	xorl	%edi, %esi	# tmp3794, tmp3795
	movl	%r10d, %edi	# g, tmp3796
	orl	%r9d, %edi	# f, tmp3796
	andl	%r11d, %edi	# h, tmp3797
	orl	%ebx, %edi	# tmp3798, tmp3799
	addl	%esi, %edi	# tmp3795, t2
	movl	-80(%rsp), %esi	# %sfp, w5
	addl	%edx, %edi	# t1, e
	movl	%esi, %r15d	# w5, tmp3802
	movl	%esi, %edx	# w5, tmp3801
	roll	$14, %r15d	#, tmp3802
	rorl	$7, %edx	#, tmp3801
	movl	%r15d, %ebx	# tmp3802, tmp3802
	movl	%r9d, %r15d	# f, tmp3830
	xorl	%edx, %ebx	# tmp3801, tmp3803
	movl	%esi, %edx	# w5, tmp3804
	movl	-100(%rsp), %esi	# %sfp, w13
	shrl	$3, %edx	#, tmp3804
	xorl	%edx, %ebx	# tmp3804, tmp3805
	addl	-84(%rsp), %ebx	# %sfp, tmp3806
	leal	(%rbx,%rsi), %edx	#, _2417
	movl	%r12d, %esi	# w2, tmp3807
	movl	%r12d, %ebx	# w2, tmp3808
	roll	$15, %esi	#, tmp3807
	roll	$13, %ebx	#, tmp3808
	xorl	%esi, %ebx	# tmp3807, tmp3809
	movl	%r12d, %esi	# w2, tmp3810
	shrl	$10, %esi	#, tmp3810
	xorl	%esi, %ebx	# tmp3810, tmp3811
	movl	%r14d, %esi	# c, tmp3812
	xorl	%r8d, %esi	# b, tmp3812
	addl	%edx, %ebx	# _2417, w4
	movl	%esi, %edx	# tmp3812, tmp3812
	leal	958139571(%rcx,%rbx), %ecx	#, tmp3816
	movl	%eax, %esi	# a, tmp3818
	andl	%eax, %edx	# a, tmp3813
	rorl	$6, %esi	#, tmp3818
	xorl	%r14d, %edx	# c, tmp3814
	addl	%edx, %ecx	# tmp3814, tmp3817
	movl	%esi, %edx	# tmp3818, tmp3818
	movl	%eax, %esi	# a, tmp3819
	rorl	$11, %esi	#, tmp3819
	xorl	%edx, %esi	# tmp3818, tmp3820
	movl	%eax, %edx	# a, tmp3821
	roll	$7, %edx	#, tmp3821
	xorl	%esi, %edx	# tmp3820, tmp3822
	movl	%edi, %esi	# e, tmp3823
	addl	%ecx, %edx	# tmp3817, t1
	movl	%edi, %ecx	# e, tmp3824
	addl	%edx, %r11d	# t1, h
	rorl	$2, %esi	#, tmp3823
	rorl	$13, %ecx	#, tmp3824
	xorl	%esi, %ecx	# tmp3823, tmp3825
	movl	%edi, %esi	# e, tmp3826
	andl	%edi, %r15d	# e, tmp3830
	roll	$10, %esi	#, tmp3826
	xorl	%esi, %ecx	# tmp3826, tmp3827
	movl	%r9d, %esi	# f, tmp3828
	orl	%edi, %esi	# e, tmp3828
	andl	%r10d, %esi	# g, tmp3829
	orl	%r15d, %esi	# tmp3830, tmp3831
	movl	-76(%rsp), %r15d	# %sfp, w6
	addl	%ecx, %esi	# tmp3827, t2
	addl	%edx, %esi	# t1, d
	movl	%r15d, %ecx	# w6, tmp3833
	movl	%r15d, %edx	# w6, tmp3834
	rorl	$7, %ecx	#, tmp3833
	roll	$14, %edx	#, tmp3834
	xorl	%ecx, %edx	# tmp3833, tmp3835
	movl	%r15d, %ecx	# w6, tmp3836
	movl	%ebp, %r15d	# w3, tmp3839
	shrl	$3, %ecx	#, tmp3836
	roll	$15, %r15d	#, tmp3839
	xorl	%ecx, %edx	# tmp3836, tmp3837
	movl	%ebp, %ecx	# w3, tmp3840
	addl	-80(%rsp), %edx	# %sfp, tmp3838
	addl	-92(%rsp), %edx	# %sfp, _2412
	roll	$13, %ecx	#, tmp3840
	xorl	%r15d, %ecx	# tmp3839, tmp3841
	movl	%ebp, %r15d	# w3, tmp3842
	shrl	$10, %r15d	#, tmp3842
	xorl	%r15d, %ecx	# tmp3842, tmp3843
	movl	%r11d, %r15d	# h, tmp3851
	addl	%edx, %ecx	# _2412, w5
	movl	%r8d, %edx	# b, tmp3844
	rorl	$11, %r15d	#, tmp3851
	xorl	%eax, %edx	# a, tmp3844
	leal	1322822218(%r14,%rcx), %r14d	#, tmp3848
	movl	%ecx, -88(%rsp)	# w5, %sfp
	andl	%r11d, %edx	# h, tmp3845
	movl	%r15d, %ecx	# tmp3851, tmp3851
	movl	%esi, %r15d	# d, tmp3858
	xorl	%r8d, %edx	# b, tmp3846
	addl	%edx, %r14d	# tmp3846, tmp3849
	movl	%r11d, %edx	# h, tmp3850
	rorl	$6, %edx	#, tmp3850
	xorl	%edx, %ecx	# tmp3850, tmp3852
	movl	%r11d, %edx	# h, tmp3853
	roll	$7, %edx	#, tmp3853
	roll	$10, %r15d	#, tmp3858
	xorl	%ecx, %edx	# tmp3852, tmp3854
	addl	%r14d, %edx	# tmp3849, t1
	movl	%esi, %r14d	# d, tmp3855
	rorl	$2, %r14d	#, tmp3855
	addl	%edx, %r10d	# t1, g
	movl	%r14d, %ecx	# tmp3855, tmp3855
	movl	%esi, %r14d	# d, tmp3856
	rorl	$13, %r14d	#, tmp3856
	xorl	%ecx, %r14d	# tmp3855, tmp3857
	xorl	%r15d, %r14d	# tmp3858, tmp3859
	movl	%edi, %r15d	# e, tmp3860
	orl	%esi, %r15d	# d, tmp3860
	movl	%r15d, %ecx	# tmp3860, tmp3860
	movl	%edi, %r15d	# e, tmp3862
	andl	%esi, %r15d	# d, tmp3862
	andl	%r9d, %ecx	# f, tmp3861
	orl	%r15d, %ecx	# tmp3862, tmp3863
	movl	-72(%rsp), %r15d	# %sfp, w7
	addl	%r14d, %ecx	# tmp3859, t2
	addl	%edx, %ecx	# t1, c
	movl	%r15d, %r14d	# w7, tmp3865
	movl	%r15d, %edx	# w7, tmp3866
	rorl	$7, %r14d	#, tmp3865
	roll	$14, %edx	#, tmp3866
	xorl	%r14d, %edx	# tmp3865, tmp3867
	movl	%r15d, %r14d	# w7, tmp3868
	movl	%ebx, %r15d	# w4, tmp3871
	shrl	$3, %r14d	#, tmp3868
	roll	$15, %r15d	#, tmp3871
	xorl	%r14d, %edx	# tmp3868, tmp3869
	movl	%ebx, %r14d	# w4, tmp3872
	addl	-76(%rsp), %edx	# %sfp, tmp3870
	roll	$13, %r14d	#, tmp3872
	addl	-64(%rsp), %edx	# %sfp, _2407
	xorl	%r15d, %r14d	# tmp3871, tmp3873
	movl	%ebx, %r15d	# w4, tmp3874
	shrl	$10, %r15d	#, tmp3874
	xorl	%r15d, %r14d	# tmp3874, tmp3875
	movl	%eax, %r15d	# a, tmp3876
	xorl	%r11d, %r15d	# h, tmp3876
	addl	%r14d, %edx	# tmp3875, w6
	movl	%r15d, %r14d	# tmp3876, tmp3876
	leal	1537002063(%r8,%rdx), %r8d	#, tmp3880
	movl	%edx, -84(%rsp)	# w6, %sfp
	andl	%r10d, %r14d	# g, tmp3877
	movl	%r10d, %edx	# g, tmp3883
	movl	%ecx, %r15d	# c, tmp3888
	xorl	%eax, %r14d	# a, tmp3878
	addl	%r8d, %r14d	# tmp3880, tmp3881
	movl	%r10d, %r8d	# g, tmp3882
	rorl	$6, %r8d	#, tmp3882
	rorl	$11, %edx	#, tmp3883
	rorl	$13, %r15d	#, tmp3888
	xorl	%r8d, %edx	# tmp3882, tmp3884
	movl	%r10d, %r8d	# g, tmp3885
	roll	$7, %r8d	#, tmp3885
	xorl	%edx, %r8d	# tmp3884, tmp3886
	movl	%ecx, %edx	# c, tmp3887
	addl	%r14d, %r8d	# tmp3881, t1
	rorl	$2, %edx	#, tmp3887
	movl	%r15d, %r14d	# tmp3888, tmp3888
	xorl	%edx, %r14d	# tmp3887, tmp3889
	movl	%ecx, %edx	# c, tmp3890
	movl	%esi, %r15d	# d, tmp3894
	roll	$10, %edx	#, tmp3890
	andl	%ecx, %r15d	# c, tmp3894
	addl	%r8d, %r9d	# t1, f
	xorl	%edx, %r14d	# tmp3890, tmp3891
	movl	%esi, %edx	# d, tmp3892
	orl	%ecx, %edx	# c, tmp3892
	andl	%edi, %edx	# e, tmp3893
	orl	%r15d, %edx	# tmp3894, tmp3895
	movl	-68(%rsp), %r15d	# %sfp, w8
	addl	%r14d, %edx	# tmp3891, t2
	addl	%r8d, %edx	# t1, b
	movl	%r15d, %r8d	# w8, tmp3897
	rorl	$7, %r8d	#, tmp3897
	movl	%r8d, %r14d	# tmp3897, tmp3897
	movl	%r15d, %r8d	# w8, tmp3898
	shrl	$3, %r15d	#, tmp3900
	roll	$14, %r8d	#, tmp3898
	xorl	%r14d, %r8d	# tmp3897, tmp3899
	movl	-88(%rsp), %r14d	# %sfp, w5
	xorl	%r15d, %r8d	# tmp3900, tmp3901
	addl	-72(%rsp), %r8d	# %sfp, tmp3902
	addl	-60(%rsp), %r8d	# %sfp, _2402
	movl	%r14d, %r15d	# w5, tmp3903
	roll	$13, %r14d	#, tmp3904
	roll	$15, %r15d	#, tmp3903
	xorl	%r15d, %r14d	# tmp3903, tmp3905
	movl	-88(%rsp), %r15d	# %sfp, tmp3906
	shrl	$10, %r15d	#, tmp3906
	xorl	%r15d, %r14d	# tmp3906, tmp3907
	addl	%r14d, %r8d	# tmp3907, w7
	movl	%r8d, %r15d	# w7, w7
	movl	%r11d, %r8d	# h, tmp3908
	xorl	%r10d, %r8d	# g, tmp3908
	leal	1747873779(%rax,%r15), %r14d	#, tmp3912
	movl	%r15d, -80(%rsp)	# w7, %sfp
	andl	%r9d, %r8d	# f, tmp3909
	movl	%ecx, %r15d	# c, tmp3926
	xorl	%r11d, %r8d	# h, tmp3910
	andl	%edx, %r15d	# b, tmp3926
	addl	%r8d, %r14d	# tmp3910, tmp3913
	movl	%r9d, %r8d	# f, tmp3914
	rorl	$6, %r8d	#, tmp3914
	movl	%r8d, %eax	# tmp3914, tmp3914
	movl	%r9d, %r8d	# f, tmp3915
	rorl	$11, %r8d	#, tmp3915
	xorl	%eax, %r8d	# tmp3914, tmp3916
	movl	%r9d, %eax	# f, tmp3917
	roll	$7, %eax	#, tmp3917
	xorl	%eax, %r8d	# tmp3917, tmp3918
	movl	%edx, %eax	# b, tmp3920
	addl	%r14d, %r8d	# tmp3913, t1
	movl	%edx, %r14d	# b, tmp3919
	rorl	$13, %eax	#, tmp3920
	rorl	$2, %r14d	#, tmp3919
	addl	%r8d, %edi	# t1, e
	xorl	%r14d, %eax	# tmp3919, tmp3921
	movl	%edx, %r14d	# b, tmp3922
	roll	$10, %r14d	#, tmp3922
	xorl	%r14d, %eax	# tmp3922, tmp3923
	movl	%ecx, %r14d	# c, tmp3924
	orl	%edx, %r14d	# b, tmp3924
	andl	%esi, %r14d	# d, tmp3925
	orl	%r15d, %r14d	# tmp3926, tmp3927
	movl	-112(%rsp), %r15d	# %sfp, w9
	addl	%eax, %r14d	# tmp3923, t2
	addl	%r14d, %r8d	# t2, a
	movl	%r15d, %r14d	# w9, tmp3929
	roll	$14, %r15d	#, tmp3930
	rorl	$7, %r14d	#, tmp3929
	movl	%r15d, %eax	# tmp3930, tmp3930
	xorl	%r14d, %eax	# tmp3929, tmp3931
	movl	-112(%rsp), %r14d	# %sfp, tmp3932
	shrl	$3, %r14d	#, tmp3932
	xorl	%r14d, %eax	# tmp3932, tmp3933
	addl	-68(%rsp), %eax	# %sfp, tmp3934
	addl	%eax, %r13d	# tmp3934, _2397
	movl	-84(%rsp), %eax	# %sfp, w6
	movl	%eax, %r15d	# w6, tmp3935
	roll	$15, %r15d	#, tmp3935
	movl	%r15d, %r14d	# tmp3935, tmp3935
	movl	%eax, %r15d	# w6, tmp3936
	roll	$13, %r15d	#, tmp3936
	movl	%r15d, %eax	# tmp3936, tmp3936
	movl	-84(%rsp), %r15d	# %sfp, tmp3938
	xorl	%r14d, %eax	# tmp3935, tmp3937
	movl	%edx, %r14d	# b, tmp3958
	shrl	$10, %r15d	#, tmp3938
	xorl	%r15d, %eax	# tmp3938, tmp3939
	andl	%r8d, %r14d	# a, tmp3958
	leal	(%rax,%r13), %r15d	#, w8
	movl	%r10d, %r13d	# g, tmp3940
	xorl	%r9d, %r13d	# f, tmp3940
	movl	%r13d, %eax	# tmp3940, tmp3940
	leal	1955562222(%r11,%r15), %r13d	#, tmp3944
	movl	%edi, %r11d	# e, tmp3946
	andl	%edi, %eax	# e, tmp3941
	rorl	$6, %r11d	#, tmp3946
	xorl	%r10d, %eax	# g, tmp3942
	addl	%eax, %r13d	# tmp3942, tmp3945
	movl	%r11d, %eax	# tmp3946, tmp3946
	movl	%edi, %r11d	# e, tmp3947
	rorl	$11, %r11d	#, tmp3947
	xorl	%eax, %r11d	# tmp3946, tmp3948
	movl	%edi, %eax	# e, tmp3949
	roll	$7, %eax	#, tmp3949
	xorl	%r11d, %eax	# tmp3948, tmp3950
	movl	%r8d, %r11d	# a, tmp3951
	addl	%r13d, %eax	# tmp3945, t1
	movl	%r8d, %r13d	# a, tmp3952
	rorl	$2, %r11d	#, tmp3951
	rorl	$13, %r13d	#, tmp3952
	addl	%eax, %esi	# t1, d
	xorl	%r11d, %r13d	# tmp3951, tmp3953
	movl	%r8d, %r11d	# a, tmp3954
	roll	$10, %r11d	#, tmp3954
	xorl	%r11d, %r13d	# tmp3954, tmp3955
	movl	%edx, %r11d	# b, tmp3956
	orl	%r8d, %r11d	# a, tmp3956
	andl	%ecx, %r11d	# c, tmp3957
	orl	%r14d, %r11d	# tmp3958, tmp3959
	movl	-108(%rsp), %r14d	# %sfp, w10
	addl	%r13d, %r11d	# tmp3955, t2
	addl	%eax, %r11d	# t1, h
	movl	%r14d, %r13d	# w10, tmp3961
	roll	$14, %r14d	#, tmp3962
	rorl	$7, %r13d	#, tmp3961
	movl	%r14d, %eax	# tmp3962, tmp3962
	movl	-80(%rsp), %r14d	# %sfp, w7
	xorl	%r13d, %eax	# tmp3961, tmp3963
	movl	-108(%rsp), %r13d	# %sfp, tmp3964
	shrl	$3, %r13d	#, tmp3964
	xorl	%r13d, %eax	# tmp3964, tmp3965
	addl	-112(%rsp), %eax	# %sfp, tmp3966
	addl	%r12d, %eax	# w2, _2392
	movl	%r14d, %r12d	# w7, tmp3967
	roll	$15, %r12d	#, tmp3967
	movl	%r12d, %r13d	# tmp3967, tmp3967
	movl	%r14d, %r12d	# w7, tmp3968
	roll	$13, %r12d	#, tmp3968
	xorl	%r13d, %r12d	# tmp3967, tmp3969
	movl	%r14d, %r13d	# w7, tmp3970
	movl	%r8d, %r14d	# a, tmp3990
	shrl	$10, %r13d	#, tmp3970
	andl	%r11d, %r14d	# h, tmp3990
	xorl	%r13d, %r12d	# tmp3970, tmp3971
	movl	%r9d, %r13d	# f, tmp3972
	xorl	%edi, %r13d	# e, tmp3972
	addl	%eax, %r12d	# _2392, w9
	movl	%r13d, %eax	# tmp3972, tmp3972
	leal	2024104815(%r10,%r12), %r13d	#, tmp3976
	movl	%esi, %r10d	# d, tmp3978
	andl	%esi, %eax	# d, tmp3973
	rorl	$6, %r10d	#, tmp3978
	xorl	%r9d, %eax	# f, tmp3974
	addl	%eax, %r13d	# tmp3974, tmp3977
	movl	%r10d, %eax	# tmp3978, tmp3978
	movl	%esi, %r10d	# d, tmp3979
	rorl	$11, %r10d	#, tmp3979
	xorl	%eax, %r10d	# tmp3978, tmp3980
	movl	%esi, %eax	# d, tmp3981
	roll	$7, %eax	#, tmp3981
	xorl	%r10d, %eax	# tmp3980, tmp3982
	movl	%r11d, %r10d	# h, tmp3983
	addl	%r13d, %eax	# tmp3977, t1
	movl	%r11d, %r13d	# h, tmp3984
	rorl	$2, %r10d	#, tmp3983
	rorl	$13, %r13d	#, tmp3984
	addl	%eax, %ecx	# t1, c
	xorl	%r10d, %r13d	# tmp3983, tmp3985
	movl	%r11d, %r10d	# h, tmp3986
	roll	$10, %r10d	#, tmp3986
	xorl	%r10d, %r13d	# tmp3986, tmp3987
	movl	%r8d, %r10d	# a, tmp3988
	orl	%r11d, %r10d	# h, tmp3988
	andl	%edx, %r10d	# b, tmp3989
	orl	%r14d, %r10d	# tmp3990, tmp3991
	addl	%r13d, %r10d	# tmp3987, t2
	addl	%eax, %r10d	# t1, g
	movl	-104(%rsp), %eax	# %sfp, w11
	movl	%eax, %r14d	# w11, tmp3993
	rorl	$7, %r14d	#, tmp3993
	movl	%r14d, %r13d	# tmp3993, tmp3993
	movl	%eax, %r14d	# w11, tmp3994
	roll	$14, %r14d	#, tmp3994
	movl	%r14d, %eax	# tmp3994, tmp3994
	movl	%r11d, %r14d	# h, tmp4022
	xorl	%r13d, %eax	# tmp3993, tmp3995
	movl	-104(%rsp), %r13d	# %sfp, tmp3996
	shrl	$3, %r13d	#, tmp3996
	xorl	%r13d, %eax	# tmp3996, tmp3997
	addl	-108(%rsp), %eax	# %sfp, tmp3998
	addl	%ebp, %eax	# w3, _2387
	movl	%r15d, %ebp	# w8, tmp3999
	andl	%r10d, %r14d	# g, tmp4022
	roll	$15, %ebp	#, tmp3999
	movl	%ebp, %r13d	# tmp3999, tmp3999
	movl	%r15d, %ebp	# w8, tmp4000
	roll	$13, %ebp	#, tmp4000
	xorl	%r13d, %ebp	# tmp3999, tmp4001
	movl	%r15d, %r13d	# w8, tmp4002
	shrl	$10, %r13d	#, tmp4002
	xorl	%r13d, %ebp	# tmp4002, tmp4003
	movl	%edi, %r13d	# e, tmp4004
	addl	%eax, %ebp	# _2387, w10
	xorl	%esi, %r13d	# d, tmp4004
	andl	%ecx, %r13d	# c, tmp4005
	leal	-2067236844(%r9,%rbp), %r9d	#, tmp4008
	xorl	%edi, %r13d	# e, tmp4006
	addl	%r9d, %r13d	# tmp4008, tmp4009
	movl	%ecx, %r9d	# c, tmp4010
	rorl	$6, %r9d	#, tmp4010
	movl	%r9d, %eax	# tmp4010, tmp4010
	movl	%ecx, %r9d	# c, tmp4011
	rorl	$11, %r9d	#, tmp4011
	xorl	%eax, %r9d	# tmp4010, tmp4012
	movl	%ecx, %eax	# c, tmp4013
	roll	$7, %eax	#, tmp4013
	xorl	%eax, %r9d	# tmp4013, tmp4014
	movl	%r10d, %eax	# g, tmp4016
	addl	%r13d, %r9d	# tmp4009, t1
	movl	%r10d, %r13d	# g, tmp4015
	rorl	$13, %eax	#, tmp4016
	rorl	$2, %r13d	#, tmp4015
	addl	%r9d, %edx	# t1, b
	xorl	%r13d, %eax	# tmp4015, tmp4017
	movl	%r10d, %r13d	# g, tmp4018
	roll	$10, %r13d	#, tmp4018
	xorl	%r13d, %eax	# tmp4018, tmp4019
	movl	%r11d, %r13d	# h, tmp4020
	orl	%r10d, %r13d	# g, tmp4020
	andl	%r8d, %r13d	# a, tmp4021
	orl	%r14d, %r13d	# tmp4022, tmp4023
	addl	%eax, %r13d	# tmp4019, t2
	movl	-96(%rsp), %eax	# %sfp, w12
	addl	%r13d, %r9d	# t2, f
	movl	%eax, %r14d	# w12, tmp4025
	rorl	$7, %r14d	#, tmp4025
	movl	%r14d, %r13d	# tmp4025, tmp4025
	movl	%eax, %r14d	# w12, tmp4026
	roll	$14, %r14d	#, tmp4026
	movl	%r14d, %eax	# tmp4026, tmp4026
	movl	-96(%rsp), %r14d	# %sfp, w12
	xorl	%r13d, %eax	# tmp4025, tmp4027
	movl	%r14d, %r13d	# w12, tmp4028
	shrl	$3, %r13d	#, tmp4028
	xorl	%r13d, %eax	# tmp4028, tmp4029
	addl	-104(%rsp), %eax	# %sfp, tmp4030
	movl	%r12d, %r13d	# w9, tmp4031
	roll	$15, %r13d	#, tmp4031
	addl	%eax, %ebx	# tmp4030, _2382
	movl	%r12d, %eax	# w9, tmp4032
	shrl	$10, %r12d	#, tmp4034
	roll	$13, %eax	#, tmp4032
	xorl	%r13d, %eax	# tmp4031, tmp4033
	movl	%edx, %r13d	# b, tmp4045
	xorl	%eax, %r12d	# tmp4033, tmp4035
	roll	$7, %r13d	#, tmp4045
	addl	%ebx, %r12d	# _2382, w11
	movl	%esi, %ebx	# d, tmp4036
	xorl	%ecx, %ebx	# c, tmp4036
	leal	-1933114872(%rdi,%r12), %edi	#, tmp4040
	andl	%edx, %ebx	# b, tmp4037
	xorl	%esi, %ebx	# d, tmp4038
	addl	%edi, %ebx	# tmp4040, tmp4041
	movl	%edx, %edi	# b, tmp4042
	rorl	$6, %edi	#, tmp4042
	movl	%edi, %eax	# tmp4042, tmp4042
	movl	%edx, %edi	# b, tmp4043
	rorl	$11, %edi	#, tmp4043
	xorl	%eax, %edi	# tmp4042, tmp4044
	xorl	%r13d, %edi	# tmp4045, tmp4046
	movl	%r9d, %r13d	# f, tmp4048
	addl	%ebx, %edi	# tmp4041, t1
	rorl	$13, %r13d	#, tmp4048
	movl	%r9d, %ebx	# f, tmp4047
	rorl	$2, %ebx	#, tmp4047
	movl	%r13d, %eax	# tmp4048, tmp4048
	movl	%r10d, %r13d	# g, tmp4054
	xorl	%ebx, %eax	# tmp4047, tmp4049
	movl	%r9d, %ebx	# f, tmp4050
	andl	%r9d, %r13d	# f, tmp4054
	roll	$10, %ebx	#, tmp4050
	addl	%edi, %r8d	# t1, a
	xorl	%ebx, %eax	# tmp4050, tmp4051
	movl	%r10d, %ebx	# g, tmp4052
	orl	%r9d, %ebx	# f, tmp4052
	andl	%r11d, %ebx	# h, tmp4053
	orl	%r13d, %ebx	# tmp4054, tmp4055
	addl	%eax, %ebx	# tmp4051, t2
	movl	-100(%rsp), %eax	# %sfp, w13
	addl	%ebx, %edi	# t2, e
	movl	%eax, %r13d	# w13, tmp4057
	rorl	$7, %r13d	#, tmp4057
	movl	%r13d, %ebx	# tmp4057, tmp4057
	movl	%eax, %r13d	# w13, tmp4058
	roll	$14, %r13d	#, tmp4058
	movl	%r13d, %eax	# tmp4058, tmp4058
	movl	-100(%rsp), %r13d	# %sfp, tmp4060
	xorl	%ebx, %eax	# tmp4057, tmp4059
	movl	%ebp, %ebx	# w10, tmp4063
	roll	$15, %ebx	#, tmp4063
	shrl	$3, %r13d	#, tmp4060
	xorl	%r13d, %eax	# tmp4060, tmp4061
	movl	%ebx, %r13d	# tmp4063, tmp4063
	movl	%ebp, %ebx	# w10, tmp4064
	addl	%r14d, %eax	# w12, tmp4062
	addl	-88(%rsp), %eax	# %sfp, _2377
	roll	$13, %ebx	#, tmp4064
	xorl	%r13d, %ebx	# tmp4063, tmp4065
	shrl	$10, %ebp	#, tmp4066
	movl	-92(%rsp), %r13d	# %sfp, w14
	xorl	%ebx, %ebp	# tmp4065, tmp4067
	movl	%r9d, %r14d	# f, tmp4086
	andl	%edi, %r14d	# e, tmp4086
	addl	%eax, %ebp	# _2377, w12
	movl	%ecx, %eax	# c, tmp4068
	xorl	%edx, %eax	# b, tmp4068
	leal	-1866530822(%rsi,%rbp), %ebx	#, tmp4072
	movl	%r8d, %esi	# a, tmp4074
	andl	%r8d, %eax	# a, tmp4069
	rorl	$6, %esi	#, tmp4074
	xorl	%ecx, %eax	# c, tmp4070
	addl	%eax, %ebx	# tmp4070, tmp4073
	movl	%r8d, %eax	# a, tmp4075
	rorl	$11, %eax	#, tmp4075
	xorl	%esi, %eax	# tmp4074, tmp4076
	movl	%r8d, %esi	# a, tmp4077
	roll	$7, %esi	#, tmp4077
	xorl	%esi, %eax	# tmp4077, tmp4078
	movl	%edi, %esi	# e, tmp4079
	rorl	$2, %esi	#, tmp4079
	addl	%ebx, %eax	# tmp4073, t1
	movl	%esi, %ebx	# tmp4079, tmp4079
	movl	%edi, %esi	# e, tmp4080
	addl	%eax, %r11d	# t1, h
	rorl	$13, %esi	#, tmp4080
	xorl	%ebx, %esi	# tmp4079, tmp4081
	movl	%edi, %ebx	# e, tmp4082
	roll	$10, %ebx	#, tmp4082
	xorl	%ebx, %esi	# tmp4082, tmp4083
	movl	%r9d, %ebx	# f, tmp4084
	orl	%edi, %ebx	# e, tmp4084
	andl	%r10d, %ebx	# g, tmp4085
	orl	%r14d, %ebx	# tmp4086, tmp4087
	movl	%r13d, %r14d	# w14, tmp4089
	addl	%ebx, %esi	# tmp4087, t2
	rorl	$7, %r14d	#, tmp4089
	movl	%r12d, %ebx	# w11, tmp4095
	addl	%eax, %esi	# t1, d
	movl	%r14d, %eax	# tmp4089, tmp4089
	movl	%r13d, %r14d	# w14, tmp4090
	roll	$14, %r14d	#, tmp4090
	shrl	$3, %r13d	#, tmp4092
	roll	$15, %ebx	#, tmp4095
	xorl	%eax, %r14d	# tmp4089, tmp4091
	movl	%ebx, %eax	# tmp4095, tmp4095
	movl	%r12d, %ebx	# w11, tmp4096
	xorl	%r13d, %r14d	# tmp4092, tmp4093
	addl	-100(%rsp), %r14d	# %sfp, tmp4094
	roll	$13, %ebx	#, tmp4096
	addl	-84(%rsp), %r14d	# %sfp, _2372
	xorl	%ebx, %eax	# tmp4096, tmp4097
	shrl	$10, %r12d	#, tmp4098
	movl	%edx, %ebx	# b, tmp4100
	xorl	%eax, %r12d	# tmp4097, tmp4099
	movl	%edi, %r13d	# e, tmp4118
	xorl	%r8d, %ebx	# a, tmp4100
	movl	%ebx, %eax	# tmp4100, tmp4100
	addl	%r14d, %r12d	# _2372, w13
	andl	%r11d, %eax	# h, tmp4101
	leal	-1538233109(%rcx,%r12), %ebx	#, tmp4104
	xorl	%edx, %eax	# b, tmp4102
	movl	%r11d, %ecx	# h, tmp4106
	rorl	$6, %ecx	#, tmp4106
	addl	%eax, %ebx	# tmp4102, tmp4105
	movl	%r11d, %eax	# h, tmp4107
	rorl	$11, %eax	#, tmp4107
	xorl	%ecx, %eax	# tmp4106, tmp4108
	movl	%r11d, %ecx	# h, tmp4109
	roll	$7, %ecx	#, tmp4109
	xorl	%ecx, %eax	# tmp4109, tmp4110
	movl	%esi, %ecx	# d, tmp4112
	addl	%ebx, %eax	# tmp4105, t1
	movl	%esi, %ebx	# d, tmp4111
	rorl	$13, %ecx	#, tmp4112
	rorl	$2, %ebx	#, tmp4111
	addl	%eax, %r10d	# t1, g
	xorl	%ebx, %ecx	# tmp4111, tmp4113
	movl	%esi, %ebx	# d, tmp4114
	roll	$10, %ebx	#, tmp4114
	xorl	%ebx, %ecx	# tmp4114, tmp4115
	movl	%edi, %ebx	# e, tmp4116
	orl	%esi, %ebx	# d, tmp4116
	andl	%esi, %r13d	# d, tmp4118
	andl	%r9d, %ebx	# f, tmp4117
	orl	%r13d, %ebx	# tmp4118, tmp4119
	movl	-64(%rsp), %r13d	# %sfp, w15
	addl	%ebx, %ecx	# tmp4119, t2
	addl	%eax, %ecx	# t1, c
	movl	%r13d, %r14d	# w15, tmp4121
	rorl	$7, %r14d	#, tmp4121
	movl	%r14d, %ebx	# tmp4121, tmp4121
	movl	%r13d, %r14d	# w15, tmp4122
	roll	$14, %r14d	#, tmp4122
	movl	%r14d, %eax	# tmp4122, tmp4122
	movl	%r13d, %r14d	# w15, tmp4124
	movl	-92(%rsp), %r13d	# %sfp, w14
	xorl	%ebx, %eax	# tmp4121, tmp4123
	shrl	$3, %r14d	#, tmp4124
	xorl	%r14d, %eax	# tmp4124, tmp4125
	leal	-1090935817(%r13,%rax), %r14d	#, tmp4127
	movl	%ebp, %r13d	# w12, tmp4129
	addl	-80(%rsp), %r14d	# %sfp, tmp4128
	roll	$15, %r13d	#, tmp4129
	movl	%r13d, %ebx	# tmp4129, tmp4129
	movl	%ebp, %r13d	# w12, tmp4130
	shrl	$10, %ebp	#, tmp4132
	roll	$13, %r13d	#, tmp4130
	movl	%r13d, %eax	# tmp4130, tmp4130
	movl	%ecx, %r13d	# c, tmp4146
	xorl	%ebx, %eax	# tmp4129, tmp4131
	rorl	$13, %r13d	#, tmp4146
	xorl	%ebp, %eax	# tmp4132, tmp4133
	movl	%r10d, %ebp	# g, tmp4143
	addl	%r14d, %eax	# tmp4128, tmp4134
	roll	$7, %ebp	#, tmp4143
	addl	%edx, %eax	# b, tmp4135
	movl	%r8d, %edx	# a, tmp4136
	xorl	%r11d, %edx	# h, tmp4136
	movl	%edx, %r14d	# tmp4136, tmp4136
	andl	%r10d, %r14d	# g, tmp4137
	movl	%r14d, %edx	# tmp4137, tmp4137
	xorl	%r8d, %edx	# a, tmp4137
	leal	(%rax,%rdx), %r14d	#, tmp4139
	movl	%r10d, %edx	# g, tmp4140
	rorl	$6, %edx	#, tmp4140
	movl	%edx, %eax	# tmp4140, tmp4140
	movl	%r10d, %edx	# g, tmp4141
	rorl	$11, %edx	#, tmp4141
	xorl	%eax, %edx	# tmp4140, tmp4142
	movl	%r13d, %eax	# tmp4146, tmp4146
	movl	%esi, %r13d	# d, tmp4152
	xorl	%ebp, %edx	# tmp4143, tmp4144
	addl	%r14d, %edx	# tmp4139, t1
	movl	-64(%rsp), %r14d	# %sfp, w15
	leal	(%r9,%rdx), %ebp	#, f
	movl	%ecx, %r9d	# c, tmp4145
	rorl	$2, %r9d	#, tmp4145
	xorl	%r9d, %eax	# tmp4145, tmp4147
	movl	%ecx, %r9d	# c, tmp4148
	roll	$10, %r9d	#, tmp4148
	xorl	%r9d, %eax	# tmp4148, tmp4149
	movl	%esi, %r9d	# d, tmp4150
	andl	%ecx, %r13d	# c, tmp4152
	orl	%ecx, %r9d	# c, tmp4150
	andl	%edi, %r9d	# e, tmp4151
	orl	%r13d, %r9d	# tmp4152, tmp4153
	movl	-60(%rsp), %r13d	# %sfp, w0
	addl	%eax, %r9d	# tmp4149, t2
	addl	%r9d, %edx	# t2, b
	movl	%r13d, %r9d	# w0, tmp4155
	rorl	$7, %r9d	#, tmp4155
	movl	%r9d, %eax	# tmp4155, tmp4155
	movl	%r13d, %r9d	# w0, tmp4156
	roll	$14, %r9d	#, tmp4156
	xorl	%r9d, %eax	# tmp4156, tmp4157
	movl	%r13d, %r9d	# w0, w0
	shrl	$3, %r9d	#, w0
	xorl	%r9d, %eax	# tmp4158, tmp4159
	movl	%r12d, %r9d	# w13, tmp4164
	leal	-965641998(%r14,%rax), %r13d	#, tmp4161
	roll	$13, %r9d	#, tmp4164
	movl	%r9d, %eax	# tmp4164, tmp4164
	addl	%r15d, %r13d	# w8, tmp4162
	movl	%r12d, %r15d	# w13, tmp4163
	shrl	$10, %r12d	#, tmp4166
	roll	$15, %r15d	#, tmp4163
	xorl	%r15d, %eax	# tmp4163, tmp4165
	xorl	%r12d, %eax	# tmp4166, tmp4167
	movl	%edx, %r12d	# b, tmp4180
	addl	%r13d, %eax	# tmp4162, tmp4168
	movl	%r11d, %r13d	# h, tmp4170
	rorl	$13, %r12d	#, tmp4180
	xorl	%r10d, %r13d	# g, tmp4170
	addl	%r8d, %eax	# a, tmp4169
	andl	%ebp, %r13d	# f, tmp4171
	movl	%r13d, %r9d	# tmp4171, tmp4171
	xorl	%r11d, %r9d	# h, tmp4171
	leal	(%rax,%r9), %r13d	#, tmp4173
	movl	%ebp, %r9d	# f, tmp4174
	rorl	$6, %r9d	#, tmp4174
	movl	%r9d, %eax	# tmp4174, tmp4174
	movl	%ebp, %r9d	# f, tmp4175
	rorl	$11, %r9d	#, tmp4175
	movl	%r9d, %r8d	# tmp4175, tmp4175
	movl	%ebp, %r9d	# f, tmp4177
	xorl	%eax, %r8d	# tmp4174, tmp4176
	roll	$7, %r9d	#, tmp4177
	movl	%r12d, %eax	# tmp4180, tmp4180
	xorl	%r9d, %r8d	# tmp4177, tmp4178
	movl	%edx, %r9d	# b, tmp4179
	movl	%ecx, %r12d	# c, tmp4186
	rorl	$2, %r9d	#, tmp4179
	addl	%r13d, %r8d	# tmp4173, t1
	xorl	%r9d, %eax	# tmp4179, tmp4181
	movl	%edx, %r9d	# b, tmp4182
	roll	$10, %r9d	#, tmp4182
	andl	%edx, %r12d	# b, tmp4186
	xorl	%r9d, %eax	# tmp4182, tmp4183
	movl	%ecx, %r9d	# c, tmp4184
	orl	%edx, %r9d	# b, tmp4184
	addl	-36(%rsp), %edx	# %sfp, tmp4191
	andl	%esi, %r9d	# d, tmp4185
	orl	%r12d, %r9d	# tmp4186, tmp4187
	addl	%eax, %r9d	# tmp4183, t2
	addl	-40(%rsp), %r9d	# %sfp, tmp4189
	movq	-8(%rsp), %rax	# %sfp, s
	addl	%r8d, %r9d	# t1, tmp4190
	movl	%r9d, (%rax)	# tmp4190, *s_2(D)
	movl	%edx, 4(%rax)	# tmp4191, MEM[(uint32_t *)s_2(D) + 4B]
	movl	-20(%rsp), %r14d	# %sfp, f
	addl	-24(%rsp), %edi	# %sfp, tmp4194
	addl	-32(%rsp), %ecx	# %sfp, tmp4192
	addl	-28(%rsp), %esi	# %sfp, tmp4193
	addl	-16(%rsp), %r10d	# %sfp, tmp4197
	addl	-12(%rsp), %r11d	# %sfp, tmp4198
	leal	(%r14,%rbp), %r9d	#, tmp4196
	addl	%edi, %r8d	# tmp4194, tmp4195
	movl	%ecx, 8(%rax)	# tmp4192, MEM[(uint32_t *)s_2(D) + 8B]
	movl	%esi, 12(%rax)	# tmp4193, MEM[(uint32_t *)s_2(D) + 12B]
	movl	%r8d, 16(%rax)	# tmp4195, MEM[(uint32_t *)s_2(D) + 16B]
	movl	%r9d, 20(%rax)	# tmp4196, MEM[(uint32_t *)s_2(D) + 20B]
	movl	%r10d, 24(%rax)	# tmp4197, MEM[(uint32_t *)s_2(D) + 24B]
	movl	%r11d, 28(%rax)	# tmp4198, MEM[(uint32_t *)s_2(D) + 28B]
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE165:
	.size	secp256k1_sha256_transform, .-secp256k1_sha256_transform
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"[libsecp256k1] internal consistency check failed: %s\n"
	.text
	.p2align 4,,15
	.type	default_error_callback_fn, @function
default_error_callback_fn:
.LFB193:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx	# str, str
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC0, %esi	#,
	xorl	%eax, %eax	#
	call	fprintf	#
	call	abort	#
	.cfi_endproc
.LFE193:
	.size	default_error_callback_fn, .-default_error_callback_fn
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"[libsecp256k1] illegal argument: %s\n"
	.text
	.p2align 4,,15
	.type	default_illegal_callback_fn, @function
default_illegal_callback_fn:
.LFB192:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx	# str, str
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC1, %esi	#,
	xorl	%eax, %eax	#
	call	fprintf	#
	call	abort	#
	.cfi_endproc
.LFE192:
	.size	default_illegal_callback_fn, .-default_illegal_callback_fn
	.p2align 4,,15
	.type	secp256k1_sha256_write, @function
secp256k1_sha256_write:
.LFB166:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# data, data
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp	# hash, hash
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
	movq	96(%rdi), %rcx	# hash_7(D)->bytes, _8
	movq	%rcx, %rax	# _8, bufsize
	addq	%rdx, %rcx	# len, tmp101
	andl	$63, %eax	#, bufsize
	movq	%rcx, 96(%rdi)	# tmp101, hash_7(D)->bytes
	leaq	(%rax,%rdx), %r13	#, _29
	cmpq	$63, %r13	#, _29
	jbe	.L110	#,
	leaq	32(%rdi), %rbx	#, pretmp_2
	movq	%r13, %r15	# _29, ivtmp.422
	movl	$64, %r12d	#, tmp102
	.p2align 4,,10
	.p2align 3
.L117:
	movq	%r12, %rdx	# tmp102, _15
	subq	%rax, %rdx	# bufsize, _15
	addq	%rbx, %rax	# pretmp_2, tmp103
	cmpl	$8, %edx	#, _15
	jnb	.L111	#,
	testb	$4, %dl	#, _15
	jne	.L125	#,
	testl	%edx, %edx	# _15
	je	.L112	#,
	movzbl	(%r14), %ecx	#* data, tmp116
	testb	$2, %dl	#, _15
	movb	%cl, (%rax)	# tmp116,
	jne	.L126	#,
.L112:
	movq	%rbx, %rsi	# pretmp_2,
	movq	%rbp, %rdi	# hash,
	subq	$64, %r15	#, ivtmp.422
	addq	%rdx, %r14	# _15, data
	call	secp256k1_sha256_transform	#
	xorl	%eax, %eax	# bufsize
	cmpq	$63, %r15	#, ivtmp.422
	ja	.L117	#,
	movq	%r13, %rdx	# _29, _29
	andl	$63, %edx	#, _29
.L110:
	testq	%rdx, %rdx	# len
	jne	.L127	#,
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	.cfi_restore_state
	movq	(%r14), %rcx	#* data, tmp125
	movq	%r14, %r8	# data, data
	movq	%rcx, (%rax)	# tmp125,
	movl	%edx, %ecx	# _15, _15
	movq	-8(%r14,%rcx), %rsi	#, tmp132
	movq	%rsi, -8(%rax,%rcx)	# tmp132,
	leaq	8(%rax), %rcx	#, tmp133
	andq	$-8, %rcx	#, tmp133
	subq	%rcx, %rax	# tmp133, tmp105
	subq	%rax, %r8	# tmp105, data
	addl	%edx, %eax	# _15, _15
	andl	$-8, %eax	#, _15
	cmpl	$8, %eax	#, _15
	jb	.L112	#,
	andl	$-8, %eax	#, tmp135
	xorl	%esi, %esi	# tmp134
.L115:
	movl	%esi, %edi	# tmp134, tmp136
	addl	$8, %esi	#, tmp134
	movq	(%r8,%rdi), %r9	#, tmp137
	cmpl	%eax, %esi	# tmp135, tmp134
	movq	%r9, (%rcx,%rdi)	# tmp137,
	jb	.L115	#,
	jmp	.L112	#
	.p2align 4,,10
	.p2align 3
.L125:
	movl	(%r14), %ecx	#* data, tmp108
	movl	%ecx, (%rax)	# tmp108,
	movl	%edx, %ecx	# _15, _15
	movl	-4(%r14,%rcx), %esi	#, tmp115
	movl	%esi, -4(%rax,%rcx)	# tmp115,
	jmp	.L112	#
	.p2align 4,,10
	.p2align 3
.L127:
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	32(%rbp,%rax), %rdi	#, tmp140
	movq	%r14, %rsi	# data,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	memcpy	#
	.p2align 4,,10
	.p2align 3
.L126:
	.cfi_restore_state
	movl	%edx, %ecx	# _15, _15
	movzwl	-2(%r14,%rcx), %esi	#, tmp124
	movw	%si, -2(%rax,%rcx)	# tmp124,
	jmp	.L112	#
	.cfi_endproc
.LFE166:
	.size	secp256k1_sha256_write, .-secp256k1_sha256_write
	.p2align 4,,15
	.type	secp256k1_sha256_finalize, @function
secp256k1_sha256_finalize:
.LFB167:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp	# out32, out32
	movq	%rdi, %rbx	# hash, hash
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 80
	movq	96(%rdi), %rcx	# hash_4(D)->bytes, _5
	movq	%rcx, %rdx	# _5, tmp137
	movq	%rcx, %rax	# _5, tmp138
	shrq	$29, %rdx	#, tmp137
	shrq	$37, %rax	#, tmp138
	movl	%edx, %esi	# tmp137, tmp140
	andl	$65280, %eax	#, tmp139
	sall	$8, %edx	#, tmp145
	sall	$24, %esi	#, tmp140
	andl	$16711680, %edx	#, tmp146
	orl	%esi, %eax	# tmp140, tmp141
	movq	%rcx, %rsi	# _5, tmp142
	shrq	$53, %rsi	#, tmp142
	movzbl	%sil, %esi	# tmp142, tmp143
	orl	%esi, %eax	# tmp143, tmp144
	movl	%ecx, %esi	# _5, tmp150
	orl	%edx, %eax	# tmp146, tmp147
	leaq	0(,%rcx,8), %rdx	#, _26
	sall	$27, %esi	#, tmp150
	movl	%eax, (%rsp)	# tmp147, sizedesc
	movl	%ecx, %eax	# _5, tmp148
	sall	$11, %eax	#, tmp148
	andl	$16711680, %eax	#, tmp149
	orl	%esi, %eax	# tmp150, tmp151
	movq	%rdx, %rsi	# _26, tmp152
	shrl	$24, %edx	#, tmp156
	shrq	$8, %rsi	#, tmp152
	andl	$65280, %esi	#, tmp153
	orl	%esi, %eax	# tmp153, tmp154
	movl	$pad.6185, %esi	#,
	orl	%edx, %eax	# tmp156, tmp157
	movl	$119, %edx	#, tmp159
	subq	%rcx, %rdx	# _5, tmp158
	movl	%eax, 4(%rsp)	# tmp157, sizedesc
	andl	$63, %edx	#, tmp160
	addq	$1, %rdx	#, tmp161
	call	secp256k1_sha256_write	#
	movq	%rsp, %rsi	#,
	movq	%rbx, %rdi	# hash,
	movl	$8, %edx	#,
	call	secp256k1_sha256_write	#
	movl	(%rbx), %eax	# MEM[(unsigned int *)hash_4(D)], MEM[(unsigned int *)hash_4(D)]
	movl	$0, (%rbx)	#, hash_4(D)->s
	bswap	%eax	# _86
	movl	%eax, 16(%rsp)	# _86, out
	movl	4(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 4B], MEM[(unsigned int *)hash_4(D) + 4B]
	movl	$0, 4(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 4B]
	bswap	%eax	# _71
	movl	%eax, 20(%rsp)	# _71, out
	movl	8(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 8B], MEM[(unsigned int *)hash_4(D) + 8B]
	movl	$0, 8(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 8B]
	bswap	%eax	# _82
	movl	%eax, 24(%rsp)	# _82, out
	movl	12(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 12B], MEM[(unsigned int *)hash_4(D) + 12B]
	movl	$0, 12(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 12B]
	bswap	%eax	# _98
	movl	%eax, 28(%rsp)	# _98, out
	movl	16(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 16B], MEM[(unsigned int *)hash_4(D) + 16B]
	movl	$0, 16(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 16B]
	bswap	%eax	# _110
	movl	%eax, 32(%rsp)	# _110, out
	movl	20(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 20B], MEM[(unsigned int *)hash_4(D) + 20B]
	movl	$0, 20(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 20B]
	bswap	%eax	# _122
	movl	%eax, 36(%rsp)	# _122, out
	movl	24(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 24B], MEM[(unsigned int *)hash_4(D) + 24B]
	movl	$0, 24(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 24B]
	bswap	%eax	# _134
	movl	%eax, 40(%rsp)	# _134, out
	movl	28(%rbx), %eax	# MEM[(unsigned int *)hash_4(D) + 28B], MEM[(unsigned int *)hash_4(D) + 28B]
	movl	$0, 28(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 28B]
	bswap	%eax	# _50
	movl	%eax, 44(%rsp)	# _50, out
	movq	16(%rsp), %rax	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})&out]
	movq	%rax, 0(%rbp)	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})out32_54(D)]
	movq	24(%rsp), %rax	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})&out]
	movq	%rax, 8(%rbp)	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})out32_54(D)]
	movq	32(%rsp), %rax	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})&out]
	movq	%rax, 16(%rbp)	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})out32_54(D)]
	movq	40(%rsp), %rax	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})&out]
	movq	%rax, 24(%rbp)	# MEM[(char * {ref-all})&out], MEM[(char * {ref-all})out32_54(D)]
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE167:
	.size	secp256k1_sha256_finalize, .-secp256k1_sha256_finalize
	.p2align 4,,15
	.type	secp256k1_der_parse_integer, @function
secp256k1_der_parse_integer:
.LFB181:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 80
	movq	(%rsi), %r8	# *sig_11(D), _12
	movl	$0, 12(%rsp)	#, overflow
	movq	$0, 16(%rsp)	#, ra
	movq	$0, 24(%rsp)	#, ra
	movq	$0, 32(%rsp)	#, ra
	cmpq	%rdx, %r8	# sigend, _12
	movq	$0, 40(%rsp)	#, ra
	je	.L133	#,
	cmpb	$2, (%r8)	#, *_12
	je	.L184	#,
.L133:
	xorl	%eax, %eax	# <retval>
.L130:
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L184:
	.cfi_restore_state
	leaq	1(%r8), %rax	#, _17
	cmpq	%rax, %rdx	# _17, sigend
	jbe	.L185	#,
	leaq	2(%r8), %rax	#, _57
	movq	%rax, (%rsi)	# _57, *sig_11(D)
	movzbl	1(%r8), %ecx	# MEM[(const unsigned char *)_12 + 1B],
	cmpl	$255, %ecx	#, rlen
	movl	%ecx, %r9d	#,
	je	.L133	#,
	testb	%cl, %cl	# _58
	js	.L186	#,
.L135:
	testl	%ecx, %ecx	# rlen
	jle	.L133	#,
	movslq	%ecx, %r8	# rlen, prephitmp_135
	leaq	(%rax,%r8), %r9	#, tmp211
	cmpq	%r9, %rdx	# tmp211, sigend
	jb	.L133	#,
	movzbl	(%rax), %edx	# *prephitmp_70, _24
	movq	%rsi, %rbx	# sig, sig
	movq	%rdi, %r12	# r, r
	testb	%dl, %dl	# _24
	je	.L187	#,
	cmpb	$-1, %dl	#, _24
	jne	.L141	#,
	cmpl	$1, %ecx	#, rlen
	je	.L141	#,
	cmpb	$0, 1(%rax)	#, MEM[(const unsigned char *)prephitmp_70 + 1B]
	js	.L133	#,
.L141:
	xorl	%esi, %esi	# prephitmp_39
	testb	%dl, %dl	# _24
	js	.L188	#,
.L142:
	cmpl	$32, %ecx	#, rlen
	jle	.L189	#,
.L147:
	pxor	%xmm0, %xmm0	# tmp257
	movaps	%xmm0, (%r12)	# tmp257, MEM[(long unsigned int *)r_43(D)]
	movaps	%xmm0, 16(%r12)	# tmp257, MEM[(long unsigned int *)r_43(D) + 16B]
.L154:
	addq	%r8, %rax	# prephitmp_135, tmp259
	movq	%rax, (%rbx)	# tmp259, *sig_11(D)
	movl	$1, %eax	#, <retval>
	jmp	.L130	#
	.p2align 4,,10
	.p2align 3
.L186:
	addl	$-128, %ecx	#, rlen
	je	.L133	#,
	movl	%r9d, %r10d	# _58, _58
	movq	%rdx, %r11	# sigend, _66
	andl	$127, %r10d	#, _58
	subq	%rax, %r11	# _57, _66
	movzbl	%r10b, %r9d	# _61, _61
	cmpq	%r11, %r9	# _66, _61
	jg	.L133	#,
	movzbl	2(%r8), %ecx	# MEM[(const unsigned char *)_12 + 2B],
	testb	%cl, %cl	# _67
	je	.L133	#,
	leal	-1(%r10), %r8d	#, tmp203
	cmpb	$7, %r8b	#, tmp203
	ja	.L133	#,
	leaq	(%r9,%rcx), %r8	#, tmp204
	cmpq	%r11, %r8	# _66, tmp204
	ja	.L133	#,
	leaq	-1(%r9), %r8	#, ivtmp.452
	movzbl	%r10b, %r9d	# _61, _61
	subl	$1, %r9d	#, tmp209
	movq	%r8, %r11	# ivtmp.452, _97
	subq	%r9, %r11	# tmp209, _97
	jmp	.L137	#
	.p2align 4,,10
	.p2align 3
.L138:
	movzbl	(%rax), %r9d	# MEM[base: _80, offset: 0B], MEM[base: _80, offset: 0B]
	salq	$8, %rcx	#, _69
	orq	%r9, %rcx	# MEM[base: _80, offset: 0B], ret
	movq	%rdx, %r9	# sigend, tmp206
	leaq	(%r8,%rcx), %r10	#, _76
	subq	%rax, %r9	# _57, tmp206
	subq	$1, %r8	#, ivtmp.452
	cmpq	%r9, %r10	# tmp206, _76
	ja	.L133	#,
.L137:
	addq	$1, %rax	#, _57
	cmpq	%r11, %r8	# _97, ivtmp.452
	movq	%rax, (%rsi)	# _57, *sig_11(D)
	jne	.L138	#,
	cmpq	$127, %rcx	#, ret
	ja	.L135	#,
	jmp	.L133	#
	.p2align 4,,10
	.p2align 3
.L187:
	cmpl	$1, %ecx	#, rlen
	je	.L155	#,
	cmpb	$0, 1(%rax)	#, MEM[(const unsigned char *)prephitmp_70 + 1B]
	jns	.L133	#,
.L155:
	xorl	%esi, %esi	# prephitmp_39
	jmp	.L144	#
	.p2align 4,,10
	.p2align 3
.L191:
	movzbl	(%rax), %edx	# MEM[base: _34, offset: 0B], _24
.L144:
	testb	%dl, %dl	# _24
	jne	.L190	#,
	addq	$1, %rax	#, _57
	subl	$1, %ecx	#, rlen
	movq	%rax, (%rbx)	# _57, *sig_11(D)
	jne	.L191	#,
	xorl	%ebp, %ebp	# prephitmp_103
.L143:
	testl	%esi, %esi	# prephitmp_39
	jne	.L158	#,
	leaq	16(%rsp), %rsi	#, tmp261
	movq	%rsi, %rdx	# tmp261, tmp217
	subq	%rbp, %rdx	# prephitmp_103, tmp217
	cmpl	$8, %ebp	#, prephitmp_103
	leaq	32(%rdx), %rdi	#, tmp219
	jnb	.L148	#,
	testb	$4, %bpl	#, prephitmp_103
	jne	.L192	#,
	testl	%ebp, %ebp	# prephitmp_103
	je	.L149	#,
	movzbl	(%rax), %ecx	#* _57, tmp232
	testb	$2, %bpl	#, prephitmp_103
	movb	%cl, (%rdi)	# tmp232,
	jne	.L193	#,
.L149:
	leaq	12(%rsp), %rdx	#, tmp270
	movq	%r12, %rdi	# r,
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %edx	# overflow,
	movq	(%rbx), %rax	# *sig_11(D), _57
	movq	%rbp, %r8	# prephitmp_103, prephitmp_135
	testl	%edx, %edx	#
	je	.L154	#,
	jmp	.L147	#
	.p2align 4,,10
	.p2align 3
.L188:
	movl	$1, 12(%rsp)	#, overflow
	movl	$1, %esi	#, prephitmp_39
	movzbl	(%rax), %edx	# *prephitmp_70, _24
	jmp	.L144	#
	.p2align 4,,10
	.p2align 3
.L158:
	movq	%rbp, %r8	# prephitmp_103, prephitmp_135
	jmp	.L147	#
.L148:
	movq	(%rax), %rdx	#* _57, tmp241
	movq	%rdx, (%rdi)	# tmp241,
	movl	%ebp, %edx	# prephitmp_103, prephitmp_103
	movq	-8(%rax,%rdx), %rcx	#, tmp248
	movq	%rcx, -8(%rdi,%rdx)	# tmp248,
	leaq	8(%rdi), %rcx	#, tmp249
	andq	$-8, %rcx	#, tmp249
	subq	%rcx, %rdi	# tmp249, tmp221
	leal	0(%rbp,%rdi), %edx	#, prephitmp_103
	subq	%rdi, %rax	# tmp221, _57
	andl	$-8, %edx	#, prephitmp_103
	cmpl	$8, %edx	#, prephitmp_103
	jb	.L149	#,
	andl	$-8, %edx	#, tmp251
	xorl	%edi, %edi	# tmp250
.L152:
	movl	%edi, %r8d	# tmp250, tmp252
	addl	$8, %edi	#, tmp250
	movq	(%rax,%r8), %r9	#, tmp253
	cmpl	%edx, %edi	# tmp251, tmp250
	movq	%r9, (%rcx,%r8)	# tmp253,
	jb	.L152	#,
	jmp	.L149	#
.L190:
	movslq	%ecx, %r8	# rlen, prephitmp_135
	jmp	.L142	#
.L185:
	movq	%rax, (%rsi)	# _17, *sig_11(D)
	jmp	.L133	#
.L192:
	movl	(%rax), %ecx	#* _57, tmp224
	movl	%ecx, (%rdi)	# tmp224,
	movl	%ebp, %ecx	# prephitmp_103, prephitmp_103
	movl	-4(%rax,%rcx), %eax	#, tmp231
	movl	%eax, -4(%rdi,%rcx)	# tmp231,
	jmp	.L149	#
.L193:
	movl	%ebp, %ecx	# prephitmp_103, prephitmp_103
	movzwl	-2(%rax,%rcx), %eax	#, tmp240
	movw	%ax, -2(%rdi,%rcx)	# tmp240,
	jmp	.L149	#
.L189:
	movq	%r8, %rbp	# prephitmp_135, prephitmp_103
	jmp	.L143	#
	.cfi_endproc
.LFE181:
	.size	secp256k1_der_parse_integer, .-secp256k1_der_parse_integer
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Out of memory"
	.text
	.p2align 4,,15
	.type	checked_malloc.part.8, @function
checked_malloc.part.8:
.LFB229:
	.cfi_startproc
	movq	8(%rdi), %rsi	# cb_1(D)->data, cb_1(D)->data
	movq	(%rdi), %rax	# cb_1(D)->fn, cb_1(D)->fn
	movl	$.LC2, %edi	#,
	jmp	*%rax	# cb_1(D)->fn
	.cfi_endproc
.LFE229:
	.size	checked_malloc.part.8, .-checked_malloc.part.8
	.p2align 4,,15
	.type	secp256k1_hmac_sha256_initialize.constprop.13, @function
secp256k1_hmac_sha256_initialize.constprop.13:
.LFB241:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# hash, hash
	leaq	104(%rdi), %rdi	#, tmp126
	movl	$64, %edx	#,
	subq	$96, %rsp	#,
	.cfi_def_cfa_offset 112
	movq	(%rsi), %rax	# MEM[(void *)key_1(D)], MEM[(void *)key_1(D)]
	movdqa	.LC5(%rip), %xmm0	#, tmp118
	movq	$0, 64(%rsp)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 72(%rsp)	#, MEM[(void *)&rkey + 32B]
	movq	%rax, 32(%rsp)	# MEM[(void *)key_1(D)], MEM[(void *)&rkey]
	movq	8(%rsi), %rax	# MEM[(void *)key_1(D)], MEM[(void *)key_1(D)]
	movq	$0, 80(%rsp)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 88(%rsp)	#, MEM[(void *)&rkey + 32B]
	movdqa	.LC3(%rip), %xmm2	#, tmp115
	movq	%rax, 40(%rsp)	# MEM[(void *)key_1(D)], MEM[(void *)&rkey]
	movq	16(%rsi), %rax	# MEM[(void *)key_1(D)], MEM[(void *)key_1(D)]
	movdqa	32(%rsp), %xmm3	# MEM[(unsigned char[64] *)&rkey], vect__8.468
	movq	%rax, 48(%rsp)	# MEM[(void *)key_1(D)], MEM[(void *)&rkey]
	movq	24(%rsi), %rax	# MEM[(void *)key_1(D)], MEM[(void *)key_1(D)]
	leaq	32(%rsp), %rsi	#,
	pxor	%xmm0, %xmm3	# tmp118, vect__8.468
	movq	$0, 96(%rdi)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D) + 104B].bytes
	movdqa	.LC4(%rip), %xmm1	#, tmp116
	movq	%rax, 56(%rsp)	# MEM[(void *)key_1(D)], MEM[(void *)&rkey]
	movaps	%xmm3, 32(%rsp)	# vect__8.468, MEM[(unsigned char[64] *)&rkey]
	movups	%xmm2, (%rdi)	# tmp115, MEM[(unsigned int *)hash_4(D) + 104B]
	movups	%xmm1, 16(%rdi)	# tmp116, MEM[(unsigned int *)hash_4(D) + 120B]
	movaps	%xmm2, 16(%rsp)	# tmp115, %sfp
	movaps	%xmm1, (%rsp)	# tmp116, %sfp
	movdqa	48(%rsp), %xmm3	# MEM[(unsigned char[64] *)&rkey + 16B], vect__8.468
	pxor	%xmm0, %xmm3	# tmp118, vect__8.468
	movaps	%xmm3, 48(%rsp)	# vect__8.468, MEM[(unsigned char[64] *)&rkey + 16B]
	movdqa	64(%rsp), %xmm3	# MEM[(unsigned char[64] *)&rkey + 32B], vect__8.468
	pxor	%xmm0, %xmm3	# tmp118, vect__8.468
	pxor	80(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 48B], vect__8.468
	movaps	%xmm3, 64(%rsp)	# vect__8.468, MEM[(unsigned char[64] *)&rkey + 32B]
	movaps	%xmm0, 80(%rsp)	# vect__8.468, MEM[(unsigned char[64] *)&rkey + 48B]
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	movq	%rbx, %rdi	# hash,
	movl	$64, %edx	#,
	movdqa	(%rsp), %xmm1	# %sfp, tmp116
	movq	$0, 96(%rbx)	#, MEM[(struct secp256k1_sha256_t *)hash_4(D)].bytes
	movdqa	.LC6(%rip), %xmm0	#, tmp130
	movaps	%xmm1, 16(%rbx)	# tmp116, MEM[(unsigned int *)hash_4(D) + 16B]
	movdqa	32(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey], vect__13.462
	pxor	%xmm0, %xmm1	# tmp130, vect__13.462
	movdqa	16(%rsp), %xmm2	# %sfp, tmp115
	movaps	%xmm1, 32(%rsp)	# vect__13.462, MEM[(unsigned char[64] *)&rkey]
	movaps	%xmm2, (%rbx)	# tmp115, MEM[(unsigned int *)hash_4(D)]
	movdqa	48(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 16B], vect__13.462
	pxor	%xmm0, %xmm1	# tmp130, vect__13.462
	movaps	%xmm1, 48(%rsp)	# vect__13.462, MEM[(unsigned char[64] *)&rkey + 16B]
	movdqa	64(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 32B], vect__13.462
	pxor	%xmm0, %xmm1	# tmp130, vect__13.462
	pxor	80(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 48B], vect__13.462
	movaps	%xmm1, 64(%rsp)	# vect__13.462, MEM[(unsigned char[64] *)&rkey + 32B]
	movaps	%xmm0, 80(%rsp)	# vect__13.462, MEM[(unsigned char[64] *)&rkey + 48B]
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$64, %esi	#,
	call	explicit_bzero	#
	addq	$96, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE241:
	.size	secp256k1_hmac_sha256_initialize.constprop.13, .-secp256k1_hmac_sha256_initialize.constprop.13
	.p2align 4,,15
	.type	secp256k1_gej_double_var.part.3.constprop.22, @function
secp256k1_gej_double_var.part.3.constprop.22:
.LFB232:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	40(%rsi), %r12	#, _12
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbp	# a, a
	movq	%rdi, %rbx	# r, r
	leaq	80(%rsi), %rsi	#, tmp199
	leaq	80(%rdi), %rdi	#, tmp200
	movq	%r12, %rdx	# _12,
	subq	$192, %rsp	#,
	.cfi_def_cfa_offset 240
	call	secp256k1_fe_mul_inner	#
	salq	80(%rbx)	# MEM[(struct secp256k1_fe *)r_14(D) + 80B].n
	salq	88(%rbx)	# MEM[(struct secp256k1_fe *)r_14(D) + 80B].n
	movq	%rbp, %rsi	# a,
	movq	%rsp, %rdi	#,
	salq	96(%rbx)	# MEM[(struct secp256k1_fe *)r_14(D) + 80B].n
	salq	104(%rbx)	# MEM[(struct secp256k1_fe *)r_14(D) + 80B].n
	salq	112(%rbx)	# MEM[(struct secp256k1_fe *)r_14(D) + 80B].n
	call	secp256k1_fe_sqr_inner	#
	movq	(%rsp), %rax	# t1.n, t1.n
	leaq	48(%rsp), %rdi	#, tmp299
	movq	%rsp, %rsi	#,
	leaq	(%rax,%rax,2), %rax	#, tmp205
	movq	%rax, (%rsp)	# tmp205, t1.n
	movq	8(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp209
	movq	%rax, 8(%rsp)	# tmp209, t1.n
	movq	16(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp213
	movq	%rax, 16(%rsp)	# tmp213, t1.n
	movq	24(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp217
	movq	%rax, 24(%rsp)	# tmp217, t1.n
	movq	32(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp221
	movq	%rax, 32(%rsp)	# tmp221, t1.n
	call	secp256k1_fe_sqr_inner	#
	leaq	96(%rsp), %rdi	#, tmp300
	movq	%r12, %rsi	# _12,
	call	secp256k1_fe_sqr_inner	#
	leaq	96(%rsp), %rsi	#, tmp301
	leaq	144(%rsp), %rdi	#, tmp302
	salq	96(%rsp)	# t3.n
	salq	104(%rsp)	# t3.n
	salq	112(%rsp)	# t3.n
	salq	120(%rsp)	# t3.n
	salq	128(%rsp)	# t3.n
	call	secp256k1_fe_sqr_inner	#
	leaq	96(%rsp), %rsi	#, tmp303
	movq	%rbp, %rdx	# a,
	salq	144(%rsp)	# t4.n
	salq	152(%rsp)	# t4.n
	movq	%rsi, %rdi	# tmp303, tmp304
	salq	160(%rsp)	# t4.n
	salq	168(%rsp)	# t4.n
	salq	176(%rsp)	# t4.n
	call	secp256k1_fe_mul_inner	#
	movq	96(%rsp), %rdx	# t3, t3
	movq	48(%rsp), %rbp	# t2.n, _72
	movabsq	$45035953324022230, %rax	#, tmp239
	movq	104(%rsp), %r8	# t3, t3
	movq	112(%rsp), %rdi	# t3, t3
	leaq	0(,%rdx,4), %r11	#, tmp240
	addq	%rbp, %rax	# _72, tmp238
	movq	120(%rsp), %rsi	# t3, t3
	leaq	0(,%r8,4), %r10	#, _60
	movq	128(%rsp), %rcx	# t3, t3
	leaq	(%rdx,%rdx,2), %rdx	#, tmp283
	subq	%r11, %rax	# tmp240, tmp242
	movq	56(%rsp), %r11	# t2.n, _74
	leaq	0(,%rdi,4), %r9	#, _62
	movq	%rax, (%rbx)	# tmp242, MEM[(struct secp256k1_fe *)r_14(D)].n
	movabsq	$45035996273704950, %rax	#, tmp244
	leaq	0(,%rsi,4), %r13	#, _64
	leaq	0(,%rcx,4), %r12	#, _66
	leaq	(%r8,%r8,2), %r8	#, tmp263
	leaq	(%rdi,%rdi,2), %rdi	#, tmp268
	leaq	(%r11,%rax), %r14	#, tmp243
	leaq	(%rsi,%rsi,2), %rsi	#, tmp273
	leaq	(%rcx,%rcx,2), %rcx	#, tmp278
	subq	%r10, %r14	# _60, tmp243
	movq	64(%rsp), %r10	# t2.n, _76
	movq	%r14, 8(%rbx)	# tmp245, MEM[(struct secp256k1_fe *)r_14(D)].n
	leaq	(%r10,%rax), %r14	#, tmp246
	subq	%r9, %r14	# _62, tmp246
	movq	72(%rsp), %r9	# t2.n, _78
	movq	%r14, 16(%rbx)	# tmp248, MEM[(struct secp256k1_fe *)r_14(D)].n
	addq	%r9, %rax	# _78, tmp249
	subq	%r13, %rax	# _64, tmp251
	movq	80(%rsp), %r13	# t2.n, _80
	movq	%rax, 24(%rbx)	# tmp251, MEM[(struct secp256k1_fe *)r_14(D)].n
	movabsq	$2814749767106550, %rax	#, tmp253
	addq	%r13, %rax	# _80, tmp252
	subq	%r12, %rax	# _66, tmp254
	movq	%rax, 32(%rbx)	# tmp254, MEM[(struct secp256k1_fe *)r_14(D)].n
	movabsq	$18014381329608892, %rax	#, tmp255
	subq	%rbp, %rax	# _72, tmp255
	movq	%rax, %rbp	# tmp255, _82
	movq	%rax, 48(%rsp)	# _82, t2.n
	movabsq	$18014398509481980, %rax	#, tmp256
	movq	%rax, %r14	# tmp256, _83
	leaq	0(%rbp,%rdx,2), %rdx	#, tmp285
	subq	%r11, %r14	# _74, _83
	movq	%r14, %r11	# _83, _83
	movq	%r14, 56(%rsp)	# _83, t2.n
	movq	%rdx, 96(%rsp)	# tmp285, t3.n
	movq	%rax, %r14	# tmp256, _84
	leaq	(%r11,%r8,2), %rdx	#, tmp286
	subq	%r10, %r14	# _76, _84
	subq	%r9, %rax	# _78, tmp256
	movq	%rdx, 104(%rsp)	# tmp286, t3.n
	leaq	(%r14,%rdi,2), %rdx	#, tmp287
	movq	%rax, %r9	# tmp256, _85
	movq	%rax, 72(%rsp)	# _85, t2.n
	movabsq	$1125899906842620, %rax	#, tmp259
	leaq	40(%rbx), %rdi	#, tmp292
	movq	%rdx, 112(%rsp)	# tmp287, t3.n
	leaq	(%r9,%rsi,2), %rdx	#, tmp288
	subq	%r13, %rax	# _80, _86
	movq	%rax, 80(%rsp)	# _86, t2.n
	leaq	(%rax,%rcx,2), %rax	#, tmp289
	movq	%rsp, %rsi	#,
	movq	%rdx, 120(%rsp)	# tmp288, t3.n
	leaq	96(%rsp), %rdx	#, tmp311
	movq	%r14, 64(%rsp)	# _84, t2.n
	movq	%rax, 128(%rsp)	# tmp289, t3.n
	call	secp256k1_fe_mul_inner	#
	movabsq	$27021597764222970, %rax	#, tmp293
	movabsq	$1688849860263930, %rdx	#, tmp296
	movabsq	$27021571994413338, %rcx	#, tmp298
	movq	%rax, %rdi	# tmp293, _106
	movq	%rax, %rsi	# tmp293, _108
	subq	152(%rsp), %rdi	# t4.n, _106
	subq	160(%rsp), %rsi	# t4.n, _108
	subq	168(%rsp), %rax	# t4.n, _110
	subq	176(%rsp), %rdx	# t4.n, _112
	subq	144(%rsp), %rcx	# t4.n, tmp297
	addq	%rcx, 40(%rbx)	# tmp297, MEM[(struct secp256k1_fe *)r_14(D) + 40B].n
	addq	%rdi, 48(%rbx)	# _106, MEM[(struct secp256k1_fe *)r_14(D) + 40B].n
	addq	%rsi, 56(%rbx)	# _108, MEM[(struct secp256k1_fe *)r_14(D) + 40B].n
	addq	%rax, 64(%rbx)	# _110, MEM[(struct secp256k1_fe *)r_14(D) + 40B].n
	addq	%rdx, 72(%rbx)	# _112, MEM[(struct secp256k1_fe *)r_14(D) + 40B].n
	addq	$192, %rsp	#,
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE232:
	.size	secp256k1_gej_double_var.part.3.constprop.22, .-secp256k1_gej_double_var.part.3.constprop.22
	.p2align 4,,15
	.type	secp256k1_gej_add_ge_var, @function
secp256k1_gej_add_ge_var:
.LFB144:
	.cfi_startproc
	movl	120(%rsi), %r8d	# a_7(D)->infinity,
	testl	%r8d, %r8d	#
	je	.L200	#,
	movl	80(%rdx), %eax	# b_9(D)->infinity, b_9(D)->infinity
	movl	%eax, 120(%rdi)	# b_9(D)->infinity, r_11(D)->infinity
	movq	(%rdx), %rax	# b_9(D)->x, b_9(D)->x
	movq	%rax, (%rdi)	# b_9(D)->x, r_11(D)->x
	movq	8(%rdx), %rax	# b_9(D)->x, b_9(D)->x
	movq	%rax, 8(%rdi)	# b_9(D)->x, r_11(D)->x
	movq	16(%rdx), %rax	# b_9(D)->x, b_9(D)->x
	movq	%rax, 16(%rdi)	# b_9(D)->x, r_11(D)->x
	movq	24(%rdx), %rax	# b_9(D)->x, b_9(D)->x
	movq	%rax, 24(%rdi)	# b_9(D)->x, r_11(D)->x
	movq	32(%rdx), %rax	# b_9(D)->x, b_9(D)->x
	movq	%rax, 32(%rdi)	# b_9(D)->x, r_11(D)->x
	movq	40(%rdx), %rax	# b_9(D)->y, b_9(D)->y
	movq	%rax, 40(%rdi)	# b_9(D)->y, r_11(D)->y
	movq	48(%rdx), %rax	# b_9(D)->y, b_9(D)->y
	movq	%rax, 48(%rdi)	# b_9(D)->y, r_11(D)->y
	movq	56(%rdx), %rax	# b_9(D)->y, b_9(D)->y
	movq	%rax, 56(%rdi)	# b_9(D)->y, r_11(D)->y
	movq	64(%rdx), %rax	# b_9(D)->y, b_9(D)->y
	movq	%rax, 64(%rdi)	# b_9(D)->y, r_11(D)->y
	movq	72(%rdx), %rax	# b_9(D)->y, b_9(D)->y
	movq	$1, 80(%rdi)	#, MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	movq	$0, 112(%rdi)	#, MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	movq	$0, 104(%rdi)	#, MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	movq	$0, 96(%rdi)	#, MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	movq	%rax, 72(%rdi)	# b_9(D)->y, r_11(D)->y
	movq	$0, 88(%rdi)	#, MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	ret
	.p2align 4,,10
	.p2align 3
.L200:
	movl	80(%rdx), %eax	# b_9(D)->infinity,
	testl	%eax, %eax	#
	je	.L202	#,
	testq	%rcx, %rcx	# rzr
	je	.L203	#,
	movq	$1, (%rcx)	#, rzr_18(D)->n
	movq	$0, 32(%rcx)	#, rzr_18(D)->n
	movq	$0, 24(%rcx)	#, rzr_18(D)->n
	movq	$0, 16(%rcx)	#, rzr_18(D)->n
	movq	$0, 8(%rcx)	#, rzr_18(D)->n
.L203:
	movq	(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, (%rdi)	# *a_7(D), *r_11(D)
	movq	8(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 8(%rdi)	# *a_7(D), *r_11(D)
	movq	16(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 16(%rdi)	# *a_7(D), *r_11(D)
	movq	24(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 24(%rdi)	# *a_7(D), *r_11(D)
	movq	32(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 32(%rdi)	# *a_7(D), *r_11(D)
	movq	40(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 40(%rdi)	# *a_7(D), *r_11(D)
	movq	48(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 48(%rdi)	# *a_7(D), *r_11(D)
	movq	56(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 56(%rdi)	# *a_7(D), *r_11(D)
	movq	64(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 64(%rdi)	# *a_7(D), *r_11(D)
	movq	72(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 72(%rdi)	# *a_7(D), *r_11(D)
	movq	80(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 80(%rdi)	# *a_7(D), *r_11(D)
	movq	88(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 88(%rdi)	# *a_7(D), *r_11(D)
	movq	96(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 96(%rdi)	# *a_7(D), *r_11(D)
	movq	104(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 104(%rdi)	# *a_7(D), *r_11(D)
	movq	112(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 112(%rdi)	# *a_7(D), *r_11(D)
	movq	120(%rsi), %rax	# *a_7(D), *a_7(D)
	movq	%rax, 120(%rdi)	# *a_7(D), *r_11(D)
	ret
	.p2align 4,,10
	.p2align 3
.L202:
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	80(%rsi), %r14	#, _90
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp	# a, a
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%r14, %rsi	# _90,
	movq	%rdi, %rbx	# r, r
	movq	%rcx, %r13	# rzr, rzr
	movq	%rdx, %r12	# b, b
	subq	$528, %rsp	#,
	.cfi_def_cfa_offset 576
	movl	$0, 120(%rdi)	#, r_11(D)->infinity
	movq	%rsp, %rdi	#,
	call	secp256k1_fe_sqr_inner	#
	movq	0(%rbp), %rax	# a_7(D)->x, a_7(D)->x
	leaq	48(%rsp), %rdi	#, tmp614
	movq	%rax, 48(%rsp)	# a_7(D)->x, u1
	movq	8(%rbp), %rax	# a_7(D)->x, a_7(D)->x
	movq	%rax, 56(%rsp)	# a_7(D)->x, u1
	movq	16(%rbp), %rax	# a_7(D)->x, a_7(D)->x
	movq	%rax, 64(%rsp)	# a_7(D)->x, u1
	movq	24(%rbp), %rax	# a_7(D)->x, a_7(D)->x
	movq	%rax, 72(%rsp)	# a_7(D)->x, u1
	movq	32(%rbp), %rax	# a_7(D)->x, a_7(D)->x
	movq	%rax, 80(%rsp)	# a_7(D)->x, u1
	call	secp256k1_fe_normalize_weak	#
	leaq	96(%rsp), %rdi	#, tmp615
	movq	%rsp, %rdx	#,
	movq	%r12, %rsi	# b,
	call	secp256k1_fe_mul_inner	#
	movq	40(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	leaq	144(%rsp), %rdi	#, tmp616
	movq	%rax, 144(%rsp)	# a_7(D)->y, s1
	movq	48(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 152(%rsp)	# a_7(D)->y, s1
	movq	56(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 160(%rsp)	# a_7(D)->y, s1
	movq	64(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 168(%rsp)	# a_7(D)->y, s1
	movq	72(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 176(%rsp)	# a_7(D)->y, s1
	call	secp256k1_fe_normalize_weak	#
	leaq	40(%r12), %rsi	#, tmp374
	leaq	192(%rsp), %rdi	#, tmp617
	movq	%rsp, %rdx	#,
	call	secp256k1_fe_mul_inner	#
	leaq	192(%rsp), %rsi	#, tmp618
	movq	%r14, %rdx	# _90,
	movq	%rsi, %rdi	# tmp618, tmp619
	call	secp256k1_fe_mul_inner	#
	movabsq	$18014381329608892, %rcx	#, tmp379
	leaq	240(%rsp), %rdi	#, tmp627
	movq	%rcx, %rax	# tmp379, tmp378
	addq	96(%rsp), %rax	# u2.n, tmp378
	addq	192(%rsp), %rcx	# s2.n, tmp399
	subq	48(%rsp), %rax	# u1.n, tmp382
	subq	144(%rsp), %rcx	# s1.n, tmp403
	movq	%rax, 240(%rsp)	# tmp382, h.n
	movabsq	$18014398509481980, %rax	#, tmp384
	movq	%rcx, 288(%rsp)	# tmp403, i.n
	movq	%rax, %rdx	# tmp384, tmp383
	addq	104(%rsp), %rdx	# u2.n, tmp383
	movq	%rax, %rcx	# tmp384, tmp404
	subq	56(%rsp), %rdx	# u1.n, tmp386
	addq	200(%rsp), %rcx	# s2.n, tmp404
	subq	152(%rsp), %rcx	# s1.n, tmp407
	movq	%rdx, 248(%rsp)	# tmp386, h.n
	movq	%rax, %rdx	# tmp384, tmp387
	addq	112(%rsp), %rdx	# u2.n, tmp387
	subq	64(%rsp), %rdx	# u1.n, tmp390
	movq	%rcx, 296(%rsp)	# tmp407, i.n
	movq	%rax, %rcx	# tmp384, tmp408
	addq	208(%rsp), %rcx	# s2.n, tmp408
	subq	160(%rsp), %rcx	# s1.n, tmp411
	movq	%rdx, 256(%rsp)	# tmp390, h.n
	movq	%rax, %rdx	# tmp384, tmp391
	addq	120(%rsp), %rdx	# u2.n, tmp391
	subq	72(%rsp), %rdx	# u1.n, tmp394
	addq	216(%rsp), %rax	# s2.n, tmp412
	subq	168(%rsp), %rax	# s1.n, tmp415
	movq	%rcx, 304(%rsp)	# tmp411, i.n
	movq	%rdx, 264(%rsp)	# tmp394, h.n
	movabsq	$1125899906842620, %rdx	#, tmp396
	movq	%rdx, %rsi	# tmp396, tmp395
	addq	224(%rsp), %rdx	# s2.n, tmp416
	addq	128(%rsp), %rsi	# u2.n, tmp395
	subq	80(%rsp), %rsi	# u1.n, tmp398
	subq	176(%rsp), %rdx	# s1.n, tmp419
	movq	%rax, 312(%rsp)	# tmp415, i.n
	movq	%rsi, 272(%rsp)	# tmp398, h.n
	movq	%rdx, 320(%rsp)	# tmp419, i.n
	call	secp256k1_fe_normalizes_to_zero_var	#
	testl	%eax, %eax	# _17
	je	.L204	#,
	leaq	288(%rsp), %rdi	#, tmp628
	call	secp256k1_fe_normalizes_to_zero_var	#
	testl	%eax, %eax	# _33
	jne	.L230	#,
	testq	%r13, %r13	# rzr
	je	.L208	#,
	movq	$0, 0(%r13)	#, rzr_18(D)->n
	movq	$0, 32(%r13)	#, rzr_18(D)->n
	movq	$0, 24(%r13)	#, rzr_18(D)->n
	movq	$0, 16(%r13)	#, rzr_18(D)->n
	movq	$0, 8(%r13)	#, rzr_18(D)->n
.L208:
	movl	$1, 120(%rbx)	#, r_11(D)->infinity
.L199:
	addq	$528, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L204:
	.cfi_restore_state
	leaq	288(%rsp), %rsi	#, tmp647
	leaq	336(%rsp), %rdi	#, tmp648
	call	secp256k1_fe_sqr_inner	#
	leaq	240(%rsp), %rsi	#, tmp649
	leaq	384(%rsp), %rdi	#, tmp650
	call	secp256k1_fe_sqr_inner	#
	leaq	384(%rsp), %rdx	#, tmp651
	leaq	240(%rsp), %rsi	#, tmp652
	leaq	432(%rsp), %rdi	#, tmp653
	call	secp256k1_fe_mul_inner	#
	testq	%r13, %r13	# rzr
	je	.L209	#,
	movq	240(%rsp), %rax	# h, h
	movq	%rax, 0(%r13)	# h, *rzr_18(D)
	movq	248(%rsp), %rax	# h, h
	movq	%rax, 8(%r13)	# h, *rzr_18(D)
	movq	256(%rsp), %rax	# h, h
	movq	%rax, 16(%r13)	# h, *rzr_18(D)
	movq	264(%rsp), %rax	# h, h
	movq	%rax, 24(%r13)	# h, *rzr_18(D)
	movq	272(%rsp), %rax	# h, h
	movq	%rax, 32(%r13)	# h, *rzr_18(D)
.L209:
	leaq	80(%rbx), %rdi	#, tmp539
	leaq	240(%rsp), %rdx	#, tmp654
	movq	%r14, %rsi	# _90,
	call	secp256k1_fe_mul_inner	#
	leaq	384(%rsp), %rdx	#, tmp655
	leaq	48(%rsp), %rsi	#, tmp656
	leaq	480(%rsp), %rdi	#, tmp657
	call	secp256k1_fe_mul_inner	#
	movq	480(%rsp), %r12	# t, t
	movabsq	$36028762659217784, %rax	#, tmp553
	addq	336(%rsp), %rax	# i2.n, tmp552
	subq	432(%rsp), %rax	# h3.n, tmp555
	movq	488(%rsp), %r9	# t, t
	movq	504(%rsp), %r10	# t, t
	movq	512(%rsp), %r8	# t, t
	leaq	(%r12,%r12), %rdx	#, tmp556
	movq	496(%rsp), %rsi	# t, t
	leaq	(%r9,%r9), %rdi	#, _155
	subq	%rdx, %rax	# tmp556, _128
	movabsq	$36028797018963960, %rdx	#, tmp559
	leaq	(%r10,%r10), %rcx	#, _159
	movq	%rdx, %r11	# tmp559, tmp558
	addq	344(%rsp), %r11	# i2.n, tmp558
	leaq	(%r8,%r8), %rbp	#, _161
	subq	440(%rsp), %r11	# h3.n, tmp561
	movq	%rax, (%rbx)	# _128, MEM[(struct secp256k1_fe *)r_11(D)].n
	leaq	(%rsi,%rsi), %r13	#, _157
	subq	%rdi, %r11	# _155, _130
	movq	%rdx, %rdi	# tmp559, tmp562
	addq	360(%rsp), %rdx	# i2.n, tmp566
	subq	456(%rsp), %rdx	# h3.n, tmp569
	addq	352(%rsp), %rdi	# i2.n, tmp562
	subq	448(%rsp), %rdi	# h3.n, tmp565
	movq	%r11, 8(%rbx)	# _130, MEM[(struct secp256k1_fe *)r_11(D)].n
	subq	%rcx, %rdx	# _159, _134
	movabsq	$2251799813685240, %rcx	#, tmp571
	addq	368(%rsp), %rcx	# i2.n, tmp570
	subq	464(%rsp), %rcx	# h3.n, tmp573
	subq	%r13, %rdi	# _157, _132
	movq	%rdx, 24(%rbx)	# _134, MEM[(struct secp256k1_fe *)r_11(D)].n
	movq	%rdi, 16(%rbx)	# _132, MEM[(struct secp256k1_fe *)r_11(D)].n
	subq	%rbp, %rcx	# _161, _136
	movabsq	$54043143988826676, %rbp	#, tmp575
	addq	%r12, %rbp	# t, tmp574
	movq	%rcx, 32(%rbx)	# _136, MEM[(struct secp256k1_fe *)r_11(D)].n
	subq	%rax, %rbp	# _128, tmp574
	movabsq	$54043195528445940, %rax	#, tmp579
	addq	%rax, %r9	# tmp579, tmp578
	addq	%rax, %rsi	# tmp579, tmp582
	addq	%r10, %rax	# t, tmp586
	subq	%rdx, %rax	# _134, tmp589
	subq	%rdi, %rsi	# _132, tmp585
	leaq	40(%rbx), %rdi	#, _111
	movq	%rax, 64(%rbx)	# tmp589, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	movabsq	$3377699720527860, %rax	#, tmp591
	subq	%r11, %r9	# _130, tmp581
	addq	%rax, %r8	# tmp591, tmp590
	leaq	288(%rsp), %rdx	#, tmp661
	movq	%r9, 48(%rbx)	# tmp581, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	subq	%rcx, %r8	# _136, tmp593
	movq	%rsi, 56(%rbx)	# tmp585, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	movq	%rbp, 40(%rbx)	# tmp577, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	movq	%rdi, %rsi	# _111,
	movq	%r8, 72(%rbx)	# tmp593, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	call	secp256k1_fe_mul_inner	#
	leaq	432(%rsp), %rsi	#, tmp663
	leaq	144(%rsp), %rdx	#, tmp662
	movq	%rsi, %rdi	# tmp663, tmp664
	call	secp256k1_fe_mul_inner	#
	movabsq	$18014398509481980, %rax	#, tmp598
	movabsq	$1125899906842620, %rdx	#, tmp601
	movabsq	$18014381329608892, %rcx	#, tmp603
	movq	%rax, %rdi	# tmp598, _104
	movq	%rax, %rsi	# tmp598, _106
	subq	440(%rsp), %rdi	# h3.n, _104
	subq	448(%rsp), %rsi	# h3.n, _106
	subq	456(%rsp), %rax	# h3.n, _108
	subq	464(%rsp), %rdx	# h3.n, _110
	subq	432(%rsp), %rcx	# h3.n, tmp602
.L229:
	addq	%rcx, 40(%rbx)	# tmp602, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	addq	%rdi, 48(%rbx)	# _104, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	addq	%rsi, 56(%rbx)	# _106, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	addq	%rax, 64(%rbx)	# _108, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	addq	%rdx, 72(%rbx)	# _110, MEM[(struct secp256k1_fe *)r_11(D) + 40B].n
	jmp	.L199	#
	.p2align 4,,10
	.p2align 3
.L230:
	movl	120(%rbp), %eax	# a_7(D)->infinity, _217
	testl	%eax, %eax	# _217
	movl	%eax, 120(%rbx)	# _217, r_11(D)->infinity
	je	.L206	#,
	testq	%r13, %r13	# rzr
	je	.L199	#,
	movq	$1, 0(%r13)	#, rzr_18(D)->n
	movq	$0, 32(%r13)	#, rzr_18(D)->n
	movq	$0, 24(%r13)	#, rzr_18(D)->n
	movq	$0, 16(%r13)	#, rzr_18(D)->n
	movq	$0, 8(%r13)	#, rzr_18(D)->n
	jmp	.L199	#
	.p2align 4,,10
	.p2align 3
.L206:
	testq	%r13, %r13	# rzr
	je	.L207	#,
	movq	40(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%r13, %rdi	# rzr,
	movq	%rax, 0(%r13)	# a_7(D)->y, *rzr_18(D)
	movq	48(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 8(%r13)	# a_7(D)->y, *rzr_18(D)
	movq	56(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 16(%r13)	# a_7(D)->y, *rzr_18(D)
	movq	64(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 24(%r13)	# a_7(D)->y, *rzr_18(D)
	movq	72(%rbp), %rax	# a_7(D)->y, a_7(D)->y
	movq	%rax, 32(%r13)	# a_7(D)->y, *rzr_18(D)
	call	secp256k1_fe_normalize_weak	#
	salq	0(%r13)	# rzr_18(D)->n
	salq	8(%r13)	# rzr_18(D)->n
	salq	16(%r13)	# rzr_18(D)->n
	salq	24(%r13)	# rzr_18(D)->n
	salq	32(%r13)	# rzr_18(D)->n
.L207:
	leaq	40(%rbp), %r12	#, _228
	leaq	80(%rbx), %rdi	#, tmp427
	movq	%r14, %rsi	# _90,
	movq	%r12, %rdx	# _228,
	call	secp256k1_fe_mul_inner	#
	salq	80(%rbx)	# MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	salq	88(%rbx)	# MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	leaq	336(%rsp), %rdi	#, tmp629
	movq	%rbp, %rsi	# a,
	salq	96(%rbx)	# MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	salq	104(%rbx)	# MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	salq	112(%rbx)	# MEM[(struct secp256k1_fe *)r_11(D) + 80B].n
	call	secp256k1_fe_sqr_inner	#
	movq	336(%rsp), %rax	# t1.n, t1.n
	leaq	336(%rsp), %rsi	#, tmp630
	leaq	384(%rsp), %rdi	#, tmp631
	leaq	(%rax,%rax,2), %rax	#, tmp432
	movq	%rax, 336(%rsp)	# tmp432, t1.n
	movq	344(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp436
	movq	%rax, 344(%rsp)	# tmp436, t1.n
	movq	352(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp440
	movq	%rax, 352(%rsp)	# tmp440, t1.n
	movq	360(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp444
	movq	%rax, 360(%rsp)	# tmp444, t1.n
	movq	368(%rsp), %rax	# t1.n, t1.n
	leaq	(%rax,%rax,2), %rax	#, tmp448
	movq	%rax, 368(%rsp)	# tmp448, t1.n
	call	secp256k1_fe_sqr_inner	#
	leaq	432(%rsp), %rdi	#, tmp632
	movq	%r12, %rsi	# _228,
	call	secp256k1_fe_sqr_inner	#
	leaq	432(%rsp), %rsi	#, tmp633
	leaq	480(%rsp), %rdi	#, tmp634
	salq	432(%rsp)	# t3.n
	salq	440(%rsp)	# t3.n
	salq	448(%rsp)	# t3.n
	salq	456(%rsp)	# t3.n
	salq	464(%rsp)	# t3.n
	call	secp256k1_fe_sqr_inner	#
	leaq	432(%rsp), %rsi	#, tmp635
	movq	%rbp, %rdx	# a,
	salq	480(%rsp)	# t4.n
	salq	488(%rsp)	# t4.n
	movq	%rsi, %rdi	# tmp635, tmp636
	salq	496(%rsp)	# t4.n
	salq	504(%rsp)	# t4.n
	salq	512(%rsp)	# t4.n
	call	secp256k1_fe_mul_inner	#
	movq	432(%rsp), %rdx	# t3, t3
	movq	384(%rsp), %rbp	# t2.n, _287
	movabsq	$45035953324022230, %rax	#, tmp466
	movq	440(%rsp), %r8	# t3, t3
	movq	448(%rsp), %rdi	# t3, t3
	leaq	0(,%rdx,4), %r11	#, tmp467
	addq	%rbp, %rax	# _287, tmp465
	movq	456(%rsp), %rsi	# t3, t3
	leaq	0(,%r8,4), %r10	#, _275
	movq	464(%rsp), %rcx	# t3, t3
	leaq	(%rdx,%rdx,2), %rdx	#, tmp510
	subq	%r11, %rax	# tmp467, tmp469
	movq	392(%rsp), %r11	# t2.n, _289
	leaq	0(,%rdi,4), %r9	#, _277
	movq	%rax, (%rbx)	# tmp469, MEM[(struct secp256k1_fe *)r_11(D)].n
	movabsq	$45035996273704950, %rax	#, tmp471
	leaq	0(,%rsi,4), %r13	#, _279
	leaq	0(,%rcx,4), %r12	#, _281
	leaq	(%r8,%r8,2), %r8	#, tmp490
	leaq	(%rdi,%rdi,2), %rdi	#, tmp495
	leaq	(%r11,%rax), %r14	#, tmp470
	leaq	(%rsi,%rsi,2), %rsi	#, tmp500
	leaq	(%rcx,%rcx,2), %rcx	#, tmp505
	subq	%r10, %r14	# _275, tmp470
	movq	400(%rsp), %r10	# t2.n, _291
	movq	%r14, 8(%rbx)	# tmp472, MEM[(struct secp256k1_fe *)r_11(D)].n
	leaq	(%r10,%rax), %r14	#, tmp473
	subq	%r9, %r14	# _277, tmp473
	movq	408(%rsp), %r9	# t2.n, _293
	movq	%r14, 16(%rbx)	# tmp475, MEM[(struct secp256k1_fe *)r_11(D)].n
	addq	%r9, %rax	# _293, tmp476
	subq	%r13, %rax	# _279, tmp478
	movq	416(%rsp), %r13	# t2.n, _295
	movq	%rax, 24(%rbx)	# tmp478, MEM[(struct secp256k1_fe *)r_11(D)].n
	movabsq	$2814749767106550, %rax	#, tmp480
	addq	%r13, %rax	# _295, tmp479
	subq	%r12, %rax	# _281, tmp481
	movq	%rax, 32(%rbx)	# tmp481, MEM[(struct secp256k1_fe *)r_11(D)].n
	movabsq	$18014381329608892, %rax	#, tmp482
	subq	%rbp, %rax	# _287, tmp482
	movq	%rax, %rbp	# tmp482, _297
	movq	%rax, 384(%rsp)	# _297, t2.n
	movabsq	$18014398509481980, %rax	#, tmp483
	movq	%rax, %r14	# tmp483, _298
	leaq	0(%rbp,%rdx,2), %rdx	#, tmp512
	subq	%r11, %r14	# _289, _298
	movq	%r14, %r11	# _298, _298
	movq	%r14, 392(%rsp)	# _298, t2.n
	movq	%rdx, 432(%rsp)	# tmp512, t3.n
	movq	%rax, %r14	# tmp483, _299
	leaq	(%r11,%r8,2), %rdx	#, tmp513
	subq	%r10, %r14	# _291, _299
	subq	%r9, %rax	# _293, tmp483
	movq	%rdx, 440(%rsp)	# tmp513, t3.n
	leaq	(%r14,%rdi,2), %rdx	#, tmp514
	movq	%rax, %r9	# tmp483, _300
	movq	%rax, 408(%rsp)	# _300, t2.n
	movabsq	$1125899906842620, %rax	#, tmp486
	leaq	40(%rbx), %rdi	#, tmp519
	movq	%rdx, 448(%rsp)	# tmp514, t3.n
	leaq	(%r9,%rsi,2), %rdx	#, tmp515
	subq	%r13, %rax	# _295, _301
	movq	%rax, 416(%rsp)	# _301, t2.n
	leaq	336(%rsp), %rsi	#, tmp644
	leaq	(%rax,%rcx,2), %rax	#, tmp516
	movq	%rdx, 456(%rsp)	# tmp515, t3.n
	leaq	432(%rsp), %rdx	#, tmp643
	movq	%r14, 400(%rsp)	# _299, t2.n
	movq	%rax, 464(%rsp)	# tmp516, t3.n
	call	secp256k1_fe_mul_inner	#
	movabsq	$27021597764222970, %rax	#, tmp520
	movabsq	$1688849860263930, %rdx	#, tmp523
	movabsq	$27021571994413338, %rcx	#, tmp525
	movq	%rax, %rdi	# tmp520, _321
	movq	%rax, %rsi	# tmp520, _323
	subq	488(%rsp), %rdi	# t4.n, _321
	subq	496(%rsp), %rsi	# t4.n, _323
	subq	504(%rsp), %rax	# t4.n, _325
	subq	512(%rsp), %rdx	# t4.n, _327
	subq	480(%rsp), %rcx	# t4.n, tmp524
	jmp	.L229	#
	.cfi_endproc
.LFE144:
	.size	secp256k1_gej_add_ge_var, .-secp256k1_gej_add_ge_var
	.section	.rodata.str1.1
.LC7:
	.string	"!secp256k1_fe_is_zero(&ge->x)"
	.text
	.p2align 4,,15
	.type	secp256k1_pubkey_load, @function
secp256k1_pubkey_load:
.LFB199:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movabsq	$4503599627370495, %rcx	#, tmp133
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	8(%rdx), %r8	# MEM[(char * {ref-all})pubkey_2(D) + 8B], s$n$1
	movq	(%rdx), %r9	# MEM[(char * {ref-all})pubkey_2(D)], s$n$0
	movq	16(%rdx), %r12	# MEM[(char * {ref-all})pubkey_2(D) + 16B], s$n$2
	movq	24(%rdx), %r14	# MEM[(char * {ref-all})pubkey_2(D) + 24B], s$n$3
	movq	32(%rdx), %r11	# MEM[(char * {ref-all})pubkey_2(D) + 32B], s$32$n$0
	movq	40(%rdx), %r13	# MEM[(char * {ref-all})pubkey_2(D) + 40B], s$32$n$1
	movq	48(%rdx), %rbp	# MEM[(char * {ref-all})pubkey_2(D) + 48B], s$32$n$2
	movq	56(%rdx), %rbx	# MEM[(char * {ref-all})pubkey_2(D) + 56B], s$32$n$3
	movq	%r8, %rdx	# s$n$1, tmp134
	movq	%r9, %rax	# s$n$0, _47
	salq	$12, %rdx	#, tmp134
	shrq	$52, %r9	#, tmp137
	shrq	$40, %r8	#, tmp141
	andq	%rcx, %rdx	# tmp133, tmp135
	andq	%rcx, %rax	# tmp133, _47
	movl	$0, 80(%rsi)	#, ge_5(D)->infinity
	orq	%r9, %rdx	# tmp137, tmp135
	movq	%rax, (%rsi)	# _47, MEM[(struct secp256k1_fe *)ge_5(D)].n
	movq	%rdx, %r10	# tmp135, _52
	movq	%rdx, 8(%rsi)	# _52, MEM[(struct secp256k1_fe *)ge_5(D)].n
	movq	%r12, %rdx	# s$n$2, tmp138
	salq	$24, %rdx	#, tmp138
	shrq	$28, %r12	#, tmp145
	andq	%rcx, %rdx	# tmp133, tmp139
	orq	%r8, %rdx	# tmp141, tmp139
	movq	%r14, %r8	# s$n$3, tmp142
	salq	$36, %r8	#, tmp142
	movq	%rdx, %r9	# tmp139, _57
	movq	%rdx, 16(%rsi)	# _57, MEM[(struct secp256k1_fe *)ge_5(D)].n
	andq	%rcx, %r8	# tmp133, tmp143
	movq	%r14, %rdx	# s$n$3, s$n$3
	orq	%r12, %r8	# tmp145, _62
	movq	%r11, %r12	# s$32$n$0, tmp147
	shrq	$52, %r11	#, tmp151
	andq	%rcx, %r12	# tmp133, tmp147
	shrq	$16, %rdx	#, s$n$3
	movq	%r8, 24(%rsi)	# _62, MEM[(struct secp256k1_fe *)ge_5(D)].n
	movq	%r12, 40(%rsi)	# tmp147, MEM[(struct secp256k1_fe *)ge_5(D) + 40B].n
	movq	%r13, %r12	# s$32$n$1, tmp148
	shrq	$40, %r13	#, tmp156
	salq	$12, %r12	#, tmp148
	movq	%rdx, 32(%rsi)	# _63, MEM[(struct secp256k1_fe *)ge_5(D)].n
	orq	%rax, %rdx	# _47, tmp164
	andq	%rcx, %r12	# tmp133, tmp149
	orq	%r10, %rdx	# _52, tmp165
	movl	$1, %eax	#, <retval>
	orq	%r11, %r12	# tmp151, tmp152
	movq	%rbp, %r11	# s$32$n$2, tmp153
	orq	%r9, %rdx	# _57, tmp166
	salq	$24, %r11	#, tmp153
	shrq	$28, %rbp	#, tmp161
	movq	%r12, 48(%rsi)	# tmp152, MEM[(struct secp256k1_fe *)ge_5(D) + 40B].n
	andq	%rcx, %r11	# tmp133, tmp154
	orq	%r13, %r11	# tmp156, tmp157
	movq	%r11, 56(%rsi)	# tmp157, MEM[(struct secp256k1_fe *)ge_5(D) + 40B].n
	movq	%rbx, %r11	# s$32$n$3, tmp158
	shrq	$16, %rbx	#, tmp163
	salq	$36, %r11	#, tmp158
	movq	%rbx, 72(%rsi)	# tmp163, MEM[(struct secp256k1_fe *)ge_5(D) + 40B].n
	andq	%r11, %rcx	# tmp158, tmp159
	orq	%rbp, %rcx	# tmp161, tmp162
	orq	%r8, %rdx	# _62, tmp166
	movq	%rcx, 64(%rsi)	# tmp162, MEM[(struct secp256k1_fe *)ge_5(D) + 40B].n
	je	.L236	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L236:
	.cfi_restore_state
	movq	%rdi, %rax	# ctx, ctx
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_11(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_11(D) + 176B].data
	movl	$.LC7, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_11(D) + 176B].fn
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax	# <retval>
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE199:
	.size	secp256k1_pubkey_load, .-secp256k1_pubkey_load
	.p2align 4,,15
	.type	secp256k1_ecmult_wnaf.constprop.15, @function
secp256k1_ecmult_wnaf.constprop.15:
.LFB239:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%eax, %eax	# tmp178
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$128, %ecx	#, tmp179
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r8	# wnaf, wnaf
	movq	24(%rsi), %rbp	# *a_1(D), *a_1(D)
	movq	(%rsi), %rbx	# *a_1(D), *a_1(D)
	movq	8(%rsi), %r11	# *a_1(D), *a_1(D)
	movq	16(%rsi), %r13	# *a_1(D), *a_1(D)
	rep stosq
	testq	%rbp, %rbp	# *a_1(D)
	movq	%rbx, -40(%rsp)	# *a_1(D), s
	movq	%rbp, -16(%rsp)	# *a_1(D), s
	movq	%r11, -32(%rsp)	# *a_1(D), s
	movq	%r13, -24(%rsp)	# *a_1(D), s
	js	.L238	#,
	movq	%rbx, %rsi	# *a_1(D), pretmp_133
	movl	$1, %ebp	#, sign
.L239:
	movl	$-1, %eax	#, last_set_bit
	xorl	%r9d, %r9d	# carry
	xorl	%edi, %edi	# bit
	movl	$256, %r11d	#, tmp236
	leal	(%rdx,%rax), %r10d	#, tmp237
	movl	$64, %r12d	#, tmp238
	movl	$1, %ebx	#, tmp239
	jmp	.L245	#
	.p2align 4,,10
	.p2align 3
.L240:
	movl	%r11d, %r13d	# tmp236, tmp209
	movl	%edi, %eax	# bit, _11
	subl	%edi, %r13d	# bit, tmp209
	shrl	$6, %eax	#, _11
	cmpl	%edx, %r13d	# w, tmp209
	cmovg	%edx, %r13d	# tmp209,, w, now
	leal	-1(%rdi,%r13), %r14d	#, tmp212
	shrl	$6, %r14d	#, tmp213
	cmpl	%r14d, %eax	# tmp213, _11
	je	.L247	#,
	addl	$1, %eax	#,
	movl	%r12d, %r15d	# tmp238, tmp219
	movq	-40(%rsp,%rax,8), %rax	# s.d, tmp222
	subl	%ecx, %r15d	# _13, tmp219
	movl	%r15d, %ecx	# tmp219, tmp219
	salq	%cl, %rax	# tmp219, tmp221
	orl	%eax, %esi	# tmp221, tmp223
.L247:
	movl	%r13d, %ecx	# now, tmp266
	movq	%rbx, %rax	# tmp239, tmp224
	salq	%cl, %rax	# tmp266, tmp224
	movl	%r10d, %ecx	# tmp237, tmp268
	subl	$1, %eax	#, tmp226
	andl	%eax, %esi	# tmp226, _118
	movslq	%edi, %rax	# bit, bit
	addl	%r9d, %esi	# carry, word
	movl	%esi, %r9d	# word, tmp228
	sarl	%cl, %r9d	# tmp268, tmp228
	movl	%edx, %ecx	# w, tmp270
	andl	$1, %r9d	#, carry
	movl	%r9d, %r15d	# carry, tmp230
	sall	%cl, %r15d	# tmp270, tmp230
	subl	%r15d, %esi	# tmp230, word
	imull	%ebp, %esi	# sign, tmp232
	movl	%esi, (%r8,%rax,4)	# tmp232, *_34
	movl	%edi, %eax	# bit, last_set_bit
	addl	%r13d, %edi	# now, bit
	cmpl	$255, %edi	#, bit
	jg	.L244	#,
.L248:
	movl	%edi, %ecx	# bit, tmp233
	shrl	$6, %ecx	#,
	movq	-40(%rsp,%rcx,8), %rsi	# s.d, pretmp_133
.L245:
	movl	%edi, %ecx	# bit, _13
	andl	$63, %ecx	#, _13
	shrq	%cl, %rsi	# _13, tmp207
	movl	%esi, %r13d	# tmp207, tmp208
	andl	$1, %r13d	#, tmp208
	cmpl	%r9d, %r13d	# carry, tmp208
	jne	.L240	#,
	addl	$1, %edi	#, bit
	cmpl	$255, %edi	#, bit
	jle	.L248	#,
.L244:
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	addl	$1, %eax	#, tmp235
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L238:
	.cfi_restore_state
	movq	%rbp, %rax	# *a_1(D), tmp181
	movabsq	$-4624529908474429118, %rcx	#, tmp188
	orq	%rbx, %rax	# *a_1(D), tmp181
	notq	%rbx	# *a_1(D)
	orq	%r11, %rax	# *a_1(D), tmp182
	movq	%rbx, %r9	# *a_1(D), tmp187
	notq	%r11	# *a_1(D)
	orq	%r13, %rax	# *a_1(D), tmp182
	notq	%r13	# *a_1(D)
	setne	%al	#, tmp184
	xorl	%r10d, %r10d	#
	xorl	%ebx, %ebx	#
	movzbl	%al, %eax	# tmp184, tmp184
	negq	%rax	# nonzero
	addq	%r9, %rcx	# tmp187, t
	movq	%r11, %r9	# *a_1(D), tmp190
	adcq	%r10, %rbx	#, t
	movq	%rax, %rsi	# nonzero, pretmp_133
	movabsq	$-4994812053365940165, %r11	#, tmp192
	andq	%rcx, %rsi	# t, pretmp_133
	xorl	%r12d, %r12d	#
	movq	%rbx, %rcx	# t, t
	xorl	%r10d, %r10d	#
	xorl	%ebx, %ebx	# t
	addq	%r11, %r9	# tmp192, tmp191
	adcq	%r12, %r10	#,
	movq	$-2, %r11	#, tmp196
	addq	%r9, %rcx	# tmp191, t
	movq	%r13, %r9	# *a_1(D), tmp194
	adcq	%r10, %rbx	#, t
	xorl	%r15d, %r15d	# t
	xorl	%r10d, %r10d	#
	xorl	%r12d, %r12d	#
	addq	%r11, %r9	# tmp196, tmp195
	adcq	%r12, %r10	#,
	addq	%rbx, %r9	# t, t
	movq	%rsi, -48(%rsp)	# pretmp_133, %sfp
	adcq	%r15, %r10	# t, t
	andq	%rax, %rcx	# nonzero, tmp198
	movq	%rax, %rbx	# nonzero, tmp200
	movq	-48(%rsp), %xmm0	# %sfp, tmp197
	movq	%rcx, -48(%rsp)	# tmp198, %sfp
	movq	%rbp, %rcx	# *a_1(D), *a_1(D)
	movhps	-48(%rsp), %xmm0	# %sfp, tmp197
	andq	%r9, %rbx	# t, tmp200
	notq	%rcx	# *a_1(D)
	movq	%rbx, -48(%rsp)	# tmp200, %sfp
	movl	$-1, %ebp	#, sign
	addq	%r10, %rcx	# t, tmp203
	subq	$1, %rcx	#, t
	andq	%rcx, %rax	# t, tmp206
	movaps	%xmm0, -40(%rsp)	# tmp197, MEM[(long unsigned int *)&s]
	movq	-48(%rsp), %xmm0	# %sfp, tmp199
	movq	%rax, -48(%rsp)	# tmp206, %sfp
	movhps	-48(%rsp), %xmm0	# %sfp, tmp199
	movaps	%xmm0, -24(%rsp)	# tmp199, MEM[(long unsigned int *)&s + 16B]
	jmp	.L239	#
	.cfi_endproc
.LFE239:
	.size	secp256k1_ecmult_wnaf.constprop.15, .-secp256k1_ecmult_wnaf.constprop.15
	.p2align 4,,15
	.type	secp256k1_rfc6979_hmac_sha256_generate.constprop.12, @function
secp256k1_rfc6979_hmac_sha256_generate.constprop.12:
.LFB242:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	32(%rdi), %r13	#, pretmp_13
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# rng, rng
	subq	$296, %rsp	#,
	.cfi_def_cfa_offset 352
	movl	64(%rdi), %eax	# rng_1(D)->retry,
	movq	%rsi, 8(%rsp)	# out, %sfp
	leaq	80(%rsp), %r14	#, tmp375
	leaq	16(%rsp), %r12	#, tmp376
	testl	%eax, %eax	#
	jne	.L311	#,
.L251:
	movq	0(%r13), %rax	# MEM[(void *)prephitmp_75], MEM[(void *)prephitmp_75]
	movq	$0, 48(%rsp)	#, MEM[(void *)&rkey + 32B]
	leaq	104(%r14), %rdi	#, tmp178
	movdqa	.LC5(%rip), %xmm0	#, tmp160
	movq	$64, 280(%rsp)	#, MEM[(struct secp256k1_sha256_t *)&hmac + 104B].bytes
	movq	%rax, 16(%rsp)	# MEM[(void *)prephitmp_75], MEM[(void *)&rkey]
	movq	8(%r13), %rax	# MEM[(void *)prephitmp_75], MEM[(void *)prephitmp_75]
	movdqa	.LC3(%rip), %xmm2	#, tmp157
	movq	%rax, 24(%rsp)	# MEM[(void *)prephitmp_75], MEM[(void *)&rkey]
	movq	16(%r13), %rax	# MEM[(void *)prephitmp_75], MEM[(void *)prephitmp_75]
	movdqa	.LC4(%rip), %xmm1	#, tmp158
	movq	%rax, 32(%rsp)	# MEM[(void *)prephitmp_75], MEM[(void *)&rkey]
	movq	24(%r13), %rax	# MEM[(void *)prephitmp_75], MEM[(void *)prephitmp_75]
	leaq	32(%r14), %r13	#, tmp198
	movups	%xmm2, 184(%rsp)	# tmp157, MEM[(unsigned int *)&hmac + 104B]
	movups	%xmm1, 200(%rsp)	# tmp158, MEM[(unsigned int *)&hmac + 120B]
	movq	%rax, 40(%rsp)	# MEM[(void *)prephitmp_75], MEM[(void *)&rkey]
	movq	$0, 40(%r12)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 48(%r12)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 56(%r12)	#, MEM[(void *)&rkey + 32B]
	movdqa	16(%rsp), %xmm3	# MEM[(unsigned char[64] *)&rkey], vect__60.504
	pxor	%xmm0, %xmm3	# tmp160, vect__60.504
	movq	%xmm3, %rsi	#, tmp377
	movaps	%xmm3, 16(%rsp)	# vect__60.504, MEM[(unsigned char[64] *)&rkey]
	movq	%rsi, 216(%rsp)	# tmp377, MEM[(char * {ref-all})&hmac + 136B]
	movq	24(%rsp), %rsi	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movdqa	32(%rsp), %xmm3	# MEM[(unsigned char[64] *)&rkey + 16B], vect__60.504
	movq	%rsi, 224(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 136B]
	leaq	136(%r14), %rsi	#, tmp176
	pxor	%xmm0, %xmm3	# tmp160, vect__60.504
	movq	%xmm3, %rcx	#, tmp379
	movaps	%xmm3, 32(%rsp)	# vect__60.504, MEM[(unsigned char[64] *)&rkey + 16B]
	movq	%rcx, 232(%rsp)	# tmp379, MEM[(char * {ref-all})&hmac + 136B]
	movq	40(%rsp), %rcx	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movdqa	48(%rsp), %xmm3	# MEM[(unsigned char[64] *)&rkey + 32B], vect__60.504
	movq	%rcx, 240(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 136B]
	pxor	%xmm0, %xmm3	# tmp160, vect__60.504
	pxor	64(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 48B], vect__60.504
	movaps	%xmm3, 48(%rsp)	# vect__60.504, MEM[(unsigned char[64] *)&rkey + 32B]
	movaps	%xmm0, 64(%rsp)	# vect__60.504, MEM[(unsigned char[64] *)&rkey + 48B]
	movq	%xmm3, 248(%rsp)	# tmp381, MEM[(char * {ref-all})&hmac + 136B]
	movq	%xmm0, 264(%rsp)	# tmp383, MEM[(char * {ref-all})&hmac + 136B]
	movq	56(%rsp), %rdx	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movq	%rdx, 256(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 136B]
	movq	%rax, 272(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 136B]
	call	secp256k1_sha256_transform	#
	movdqa	.LC6(%rip), %xmm0	#, tmp182
	movq	%r14, %rdi	# tmp375,
	movq	$64, 176(%rsp)	#, MEM[(struct secp256k1_sha256_t *)&hmac].bytes
	movaps	%xmm1, 96(%rsp)	# tmp158, MEM[(unsigned int *)&hmac + 16B]
	movaps	%xmm2, 80(%rsp)	# tmp157, MEM[(unsigned int *)&hmac]
	movdqa	16(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey], vect__65.498
	pxor	%xmm0, %xmm1	# tmp182, vect__65.498
	movq	%xmm1, %rsi	#, tmp385
	movaps	%xmm1, 16(%rsp)	# vect__65.498, MEM[(unsigned char[64] *)&rkey]
	movq	%rsi, 112(%rsp)	# tmp385, MEM[(char * {ref-all})&hmac + 32B]
	movq	24(%rsp), %rsi	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movdqa	32(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 16B], vect__65.498
	movq	%rsi, 120(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 32B]
	movq	%r13, %rsi	# tmp198,
	pxor	%xmm0, %xmm1	# tmp182, vect__65.498
	movq	%xmm1, %rcx	#, tmp387
	movaps	%xmm1, 32(%rsp)	# vect__65.498, MEM[(unsigned char[64] *)&rkey + 16B]
	movq	%rcx, 128(%rsp)	# tmp387, MEM[(char * {ref-all})&hmac + 32B]
	movq	40(%rsp), %rcx	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movdqa	48(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 32B], vect__65.498
	movq	%rcx, 136(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 32B]
	pxor	%xmm0, %xmm1	# tmp182, vect__65.498
	pxor	64(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 48B], vect__65.498
	movaps	%xmm1, 48(%rsp)	# vect__65.498, MEM[(unsigned char[64] *)&rkey + 32B]
	movq	56(%rsp), %rdx	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movq	%xmm1, 144(%rsp)	# tmp389, MEM[(char * {ref-all})&hmac + 32B]
	movaps	%xmm0, 64(%rsp)	# vect__65.498, MEM[(unsigned char[64] *)&rkey + 48B]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&rkey]
	movq	%xmm0, 160(%rsp)	# tmp391, MEM[(char * {ref-all})&hmac + 32B]
	movq	%rdx, 152(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 32B]
	movq	%rax, 168(%rsp)	# MEM[(char * {ref-all})&rkey], MEM[(char * {ref-all})&hmac + 32B]
	call	secp256k1_sha256_transform	#
	movl	$64, %esi	#,
	movq	%r12, %rdi	# tmp376,
	call	explicit_bzero	#
	movq	176(%rsp), %rdx	# MEM[(struct secp256k1_sha256_t *)&hmac].bytes, _40
	movq	%rdx, %rbp	# _40, bufsize
	addq	$32, %rdx	#, tmp201
	andl	$63, %ebp	#, bufsize
	movq	%rdx, 176(%rsp)	# tmp201, MEM[(struct secp256k1_sha256_t *)&hmac].bytes
	leaq	32(%rbp), %rdx	#, tmp202
	cmpq	$63, %rdx	#, tmp202
	jbe	.L312	#,
	movl	$64, %r15d	#, tmp205
	leaq	0(%r13,%rbp), %rsi	#, tmp208
	subq	%rbp, %r15	# bufsize, _44
	cmpl	$8, %r15d	#, _44
	jnb	.L254	#,
	testb	$4, %r15b	#, _44
	jne	.L313	#,
	testl	%r15d, %r15d	# _44
	je	.L255	#,
	movzbl	(%rbx), %edx	#* rng, tmp221
	testb	$2, %r15b	#, _44
	movb	%dl, (%rsi)	# tmp221,
	jne	.L314	#,
.L255:
	leaq	32(%r14), %r13	#, tmp245
	movq	%r14, %rdi	# tmp375,
	addq	%rbx, %r15	# rng, data
	movq	%r13, %rsi	# tmp245,
	call	secp256k1_sha256_transform	#
	movq	%rbp, %rax	# bufsize, bufsize
	subq	$32, %rax	#, bufsize
	jne	.L253	#,
.L260:
	movq	%r12, %rsi	# tmp376,
	movq	%r14, %rdi	# tmp375,
	call	secp256k1_sha256_finalize	#
	movq	280(%rsp), %rax	# MEM[(struct secp256k1_sha256_t *)&hmac + 104B].bytes, _97
	movq	%rax, %r15	# _97, bufsize
	addq	$32, %rax	#, tmp284
	andl	$63, %r15d	#, bufsize
	movq	%rax, 280(%rsp)	# tmp284, MEM[(struct secp256k1_sha256_t *)&hmac + 104B].bytes
	leaq	32(%r15), %rax	#, tmp285
	cmpq	$63, %rax	#, tmp285
	jbe	.L315	#,
	movl	$64, %edx	#, tmp288
	leaq	136(%r14,%r15), %rax	#, tmp291
	subq	%r15, %rdx	# bufsize, _101
	cmpl	$8, %edx	#, _101
	jnb	.L269	#,
	testb	$4, %dl	#, _101
	jne	.L316	#,
	testl	%edx, %edx	# _101
	je	.L270	#,
	movzbl	(%r12), %ecx	#, tmp305
	testb	$2, %dl	#, _101
	movb	%cl, (%rax)	# tmp305,
	jne	.L317	#,
.L270:
	leaq	136(%r14), %rbp	#, tmp330
	leaq	104(%r14), %rdi	#, tmp332
	leaq	(%r12,%rdx), %r13	#, data
	movq	%rbp, %rsi	# tmp330,
	call	secp256k1_sha256_transform	#
	movq	%r15, %rax	# bufsize, bufsize
	subq	$32, %rax	#, bufsize
	jne	.L318	#,
.L275:
	movq	%r12, %rdi	# tmp376,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	104(%r14), %rdi	#, tmp370
	movq	%rbx, %rsi	# rng,
	call	secp256k1_sha256_finalize	#
	movq	(%rbx), %rax	# MEM[(void *)prephitmp_49], MEM[(void *)prephitmp_49]
	movq	8(%rsp), %rdi	# %sfp, out
	movq	%rax, (%rdi)	# MEM[(void *)prephitmp_49], MEM[(void *)out_15(D)]
	movq	8(%rbx), %rax	# MEM[(void *)prephitmp_49], MEM[(void *)prephitmp_49]
	movq	%rax, 8(%rdi)	# MEM[(void *)prephitmp_49], MEM[(void *)out_15(D)]
	movq	16(%rbx), %rax	# MEM[(void *)prephitmp_49], MEM[(void *)prephitmp_49]
	movq	%rax, 16(%rdi)	# MEM[(void *)prephitmp_49], MEM[(void *)out_15(D)]
	movq	24(%rbx), %rax	# MEM[(void *)prephitmp_49], MEM[(void *)prephitmp_49]
	movq	%rax, 24(%rdi)	# MEM[(void *)prephitmp_49], MEM[(void *)out_15(D)]
	movl	$1, 64(%rbx)	#, rng_1(D)->retry
	addq	$296, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L269:
	.cfi_restore_state
	movq	(%r12), %rcx	#, tmp314
	movq	%r12, %r8	# tmp376, tmp295
	movq	%rcx, (%rax)	# tmp314,
	movl	%edx, %ecx	# _101, _101
	movq	-8(%r12,%rcx), %rsi	#, tmp321
	movq	%rsi, -8(%rax,%rcx)	# tmp321,
	leaq	8(%rax), %rcx	#, tmp322
	andq	$-8, %rcx	#, tmp322
	subq	%rcx, %rax	# tmp322, tmp294
	subq	%rax, %r8	# tmp294, tmp295
	addl	%edx, %eax	# _101, _101
	andl	$-8, %eax	#, _101
	cmpl	$8, %eax	#, _101
	jb	.L270	#,
	andl	$-8, %eax	#, tmp324
	xorl	%esi, %esi	# tmp323
.L273:
	movl	%esi, %edi	# tmp323, tmp325
	addl	$8, %esi	#, tmp323
	movq	(%r8,%rdi), %r9	#, tmp326
	cmpl	%eax, %esi	# tmp324, tmp323
	movq	%r9, (%rcx,%rdi)	# tmp326,
	jb	.L273	#,
	jmp	.L270	#
	.p2align 4,,10
	.p2align 3
.L254:
	movq	(%rbx), %rdx	#* rng, tmp230
	movq	%rbx, %r8	# rng, prephitmp_49
	movq	%rdx, (%rsi)	# tmp230,
	movl	%r15d, %edx	# _44, _44
	movq	-8(%rbx,%rdx), %rcx	#, tmp237
	movq	%rcx, -8(%rsi,%rdx)	# tmp237,
	leaq	8(%rsi), %rdx	#, tmp238
	andq	$-8, %rdx	#, tmp238
	subq	%rdx, %rsi	# tmp238, tmp210
	subq	%rsi, %r8	# tmp210, prephitmp_49
	addl	%r15d, %esi	# _44, _44
	andl	$-8, %esi	#, _44
	cmpl	$8, %esi	#, _44
	jb	.L255	#,
	andl	$-8, %esi	#, tmp240
	xorl	%ecx, %ecx	# tmp239
.L258:
	movl	%ecx, %edi	# tmp239, tmp241
	addl	$8, %ecx	#, tmp239
	movq	(%r8,%rdi), %r9	#, tmp242
	cmpl	%esi, %ecx	# tmp240, tmp239
	movq	%r9, (%rdx,%rdi)	# tmp242,
	jb	.L258	#,
	jmp	.L255	#
	.p2align 4,,10
	.p2align 3
.L318:
	movq	%rbp, %rdx	# tmp330, _81
.L268:
	cmpl	$8, %eax	#, len
	movl	%eax, %ecx	# len,
	jnb	.L276	#,
	testb	$4, %al	#, len
	jne	.L319	#,
	testl	%ecx, %ecx	# len
	je	.L275	#,
	movzbl	0(%r13), %eax	#* data, tmp345
	testb	$2, %cl	#, len
	movb	%al, (%rdx)	# tmp345,* _81
	je	.L275	#,
	movzwl	-2(%r13,%rcx), %eax	#, tmp353
	movw	%ax, -2(%rdx,%rcx)	# tmp353,
	jmp	.L275	#
	.p2align 4,,10
	.p2align 3
.L312:
	addq	%rbp, %r13	# bufsize, prephitmp_58
	movq	%rbx, %r15	# rng, data
	movl	$32, %eax	#, len
.L253:
	cmpl	$8, %eax	#, len
	movl	%eax, %edx	# len,
	jnb	.L261	#,
	testb	$4, %al	#, len
	jne	.L320	#,
	testl	%edx, %edx	# len
	je	.L260	#,
	movzbl	(%r15), %eax	#* data, tmp259
	testb	$2, %dl	#, len
	movb	%al, 0(%r13)	# tmp259,* prephitmp_58
	je	.L260	#,
	movzwl	-2(%r15,%rdx), %eax	#, tmp267
	movw	%ax, -2(%r13,%rdx)	# tmp267,
	jmp	.L260	#
	.p2align 4,,10
	.p2align 3
.L316:
	movl	(%r12), %ecx	#, tmp297
	movl	%ecx, (%rax)	# tmp297,
	movl	%edx, %ecx	# _101, _101
	movl	-4(%r12,%rcx), %esi	#, tmp304
	movl	%esi, -4(%rax,%rcx)	# tmp304,
	jmp	.L270	#
	.p2align 4,,10
	.p2align 3
.L313:
	movl	(%rbx), %edx	#* rng, tmp213
	movl	%edx, (%rsi)	# tmp213,
	movl	%r15d, %edx	# _44, _44
	movl	-4(%rbx,%rdx), %ecx	#, tmp220
	movl	%ecx, -4(%rsi,%rdx)	# tmp220,
	jmp	.L255	#
	.p2align 4,,10
	.p2align 3
.L317:
	movl	%edx, %ecx	# _101, _101
	movzwl	-2(%r12,%rcx), %esi	#, tmp313
	movw	%si, -2(%rax,%rcx)	# tmp313,
	jmp	.L270	#
	.p2align 4,,10
	.p2align 3
.L314:
	movl	%r15d, %edx	# _44, _44
	movzwl	-2(%rbx,%rdx), %ecx	#, tmp229
	movw	%cx, -2(%rsi,%rdx)	# tmp229,
	jmp	.L255	#
	.p2align 4,,10
	.p2align 3
.L276:
	movq	0(%r13), %rcx	#* data, tmp354
	movq	%rcx, (%rdx)	# tmp354,* _81
	movl	%eax, %ecx	# len, len
	movq	-8(%r13,%rcx), %rsi	#, tmp361
	movq	%rsi, -8(%rdx,%rcx)	# tmp361,
	leaq	8(%rdx), %rsi	#, tmp362
	andq	$-8, %rsi	#, tmp362
	subq	%rsi, %rdx	# tmp362, _81
	leal	(%rax,%rdx), %ecx	#, len
	subq	%rdx, %r13	# _81, data
	andl	$-8, %ecx	#, len
	cmpl	$8, %ecx	#, len
	jb	.L275	#,
	andl	$-8, %ecx	#, len
	xorl	%eax, %eax	# tmp363
	movl	%ecx, %edx	# len, tmp364
.L280:
	movl	%eax, %ecx	# tmp363, tmp365
	addl	$8, %eax	#, tmp363
	movq	0(%r13,%rcx), %rdi	#, tmp366
	cmpl	%edx, %eax	# tmp364, tmp363
	movq	%rdi, (%rsi,%rcx)	# tmp366,
	jb	.L280	#,
	jmp	.L275	#
	.p2align 4,,10
	.p2align 3
.L261:
	movq	(%r15), %rdx	#* data, tmp268
	movq	%rdx, 0(%r13)	# tmp268,* prephitmp_58
	movl	%eax, %edx	# len, len
	movq	-8(%r15,%rdx), %rcx	#, tmp275
	movq	%rcx, -8(%r13,%rdx)	# tmp275,
	leaq	8(%r13), %rcx	#, tmp276
	andq	$-8, %rcx	#, tmp276
	subq	%rcx, %r13	# tmp276, prephitmp_58
	leal	(%rax,%r13), %edx	#, len
	subq	%r13, %r15	# prephitmp_58, data
	andl	$-8, %edx	#, len
	cmpl	$8, %edx	#, len
	jb	.L260	#,
	andl	$-8, %edx	#, len
	xorl	%eax, %eax	# tmp277
	movl	%edx, %r13d	# len, tmp278
.L265:
	movl	%eax, %edx	# tmp277, tmp279
	addl	$8, %eax	#, tmp277
	movq	(%r15,%rdx), %rsi	#, tmp280
	cmpl	%r13d, %eax	# tmp278, tmp277
	movq	%rsi, (%rcx,%rdx)	# tmp280,
	jb	.L265	#,
	jmp	.L260	#
.L315:
	leaq	136(%r14,%r15), %rdx	#, _81
	movl	$32, %eax	#, len
	movq	%r12, %r13	# tmp376, data
	jmp	.L268	#
.L311:
	movq	%r13, %rsi	# pretmp_13,
	movq	%r14, %rdi	# tmp375,
	leaq	16(%rsp), %r12	#, tmp376
	call	secp256k1_hmac_sha256_initialize.constprop.13	#
	movq	%rbx, %rsi	# rng,
	movq	%r14, %rdi	# tmp375,
	movl	$32, %edx	#,
	call	secp256k1_sha256_write	#
	leaq	104(%r14), %r15	#, tmp135
	movl	$1, %edx	#,
	movq	%r14, %rdi	# tmp375,
	movl	$zero.6229, %esi	#,
	call	secp256k1_sha256_write	#
	movq	%r12, %rsi	# tmp376,
	movq	%r14, %rdi	# tmp375,
	call	secp256k1_sha256_finalize	#
	movl	$32, %edx	#,
	movq	%r12, %rsi	# tmp376,
	movq	%r15, %rdi	# tmp135,
	call	secp256k1_sha256_write	#
	movq	%r12, %rdi	# tmp376,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	%r13, %rsi	# pretmp_13,
	movq	%r15, %rdi	# tmp135,
	call	secp256k1_sha256_finalize	#
	movq	%r13, %rsi	# pretmp_13,
	movq	%r14, %rdi	# tmp375,
	call	secp256k1_hmac_sha256_initialize.constprop.13	#
	movl	$32, %edx	#,
	movq	%rbx, %rsi	# rng,
	movq	%r14, %rdi	# tmp375,
	call	secp256k1_sha256_write	#
	movq	%r12, %rsi	# tmp376,
	movq	%r14, %rdi	# tmp375,
	call	secp256k1_sha256_finalize	#
	movl	$32, %edx	#,
	movq	%r12, %rsi	# tmp376,
	movq	%r15, %rdi	# tmp135,
	call	secp256k1_sha256_write	#
	movq	%r12, %rdi	# tmp376,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	%rbx, %rsi	# rng,
	movq	%r15, %rdi	# tmp135,
	call	secp256k1_sha256_finalize	#
	jmp	.L251	#
.L320:
	movl	(%r15), %eax	#* data, tmp251
	movl	%eax, 0(%r13)	# tmp251,* prephitmp_58
	movl	-4(%r15,%rdx), %eax	#, tmp258
	movl	%eax, -4(%r13,%rdx)	# tmp258,
	jmp	.L260	#
.L319:
	movl	0(%r13), %eax	#* data, tmp337
	movl	%eax, (%rdx)	# tmp337,* _81
	movl	-4(%r13,%rcx), %eax	#, tmp344
	movl	%eax, -4(%rdx,%rcx)	# tmp344,
	jmp	.L275	#
	.cfi_endproc
.LFE242:
	.size	secp256k1_rfc6979_hmac_sha256_generate.constprop.12, .-secp256k1_rfc6979_hmac_sha256_generate.constprop.12
	.p2align 4,,15
	.type	secp256k1_gej_eq_x_var, @function
secp256k1_gej_eq_x_var:
.LFB136:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# x, x
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx	# a, a
	addq	$80, %rsi	#, tmp158
	movabsq	$4294968273, %r12	#, tmp164
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 80
	movq	%rsp, %rdi	#,
	call	secp256k1_fe_sqr_inner	#
	movq	%rbp, %rdx	# x,
	movq	%rsp, %rsi	#,
	movq	%rsp, %rdi	#,
	call	secp256k1_fe_mul_inner	#
	movq	32(%rbx), %rdi	# MEM[(const struct secp256k1_gej *)a_2(D) + 32B], r2$n$4
	movabsq	$1125899906842620, %rcx	#, tmp173
	subq	32(%rsp), %rcx	# r.n, tmp173
	movq	8(%rsp), %r10	# r.n, _15
	movq	16(%rsp), %rbp	# r.n, _17
	movq	%rdi, %rax	# r2$n$4, x
	shrq	$48, %rax	#, x
	movq	%rcx, %rsi	# tmp173, tmp172
	movabsq	$281474976710655, %rcx	#, tmp175
	imulq	%r12, %rax	# tmp164, tmp163
	andq	%rdi, %rcx	# r2$n$4, t4
	movabsq	$18014381329608892, %rdi	#, tmp179
	addq	(%rbx), %rax	# MEM[(const struct secp256k1_gej *)a_2(D)], t0
	addq	%rsi, %rcx	# tmp172, tmp176
	subq	(%rsp), %rdi	# r.n, tmp178
	movabsq	$4503599627370495, %rsi	#, tmp181
	movq	%rax, %r11	# t0, tmp166
	andq	%rsi, %rax	# tmp181, t0
	shrq	$52, %r11	#, tmp166
	addq	8(%rbx), %r11	# MEM[(const struct secp256k1_gej *)a_2(D) + 8B], t1
	addq	%rax, %rdi	# t0, tmp182
	movq	%r11, %r9	# t1, tmp168
	shrq	$52, %r9	#, tmp168
	addq	16(%rbx), %r9	# MEM[(const struct secp256k1_gej *)a_2(D) + 16B], t2
	movq	%r9, %r8	# t2, tmp170
	shrq	$52, %r8	#, tmp170
	addq	24(%rbx), %r8	# MEM[(const struct secp256k1_gej *)a_2(D) + 24B], t3
	movq	24(%rsp), %rbx	# r.n, _19
	movq	%r8, %rdx	# t3, tmp177
	shrq	$52, %rdx	#, tmp177
	addq	%rdx, %rcx	# tmp177, _32
	movq	%rcx, %rdx	# _32, x
	shrq	$48, %rdx	#, x
	imulq	%rdx, %r12	# x, tmp184
	leaq	(%rdi,%r12), %rdx	#, t0
	movq	%rsi, %rdi	# tmp181, tmp181
	andq	%rdx, %rdi	# t0, tmp181
	je	.L325	#,
	movabsq	$4503595332402223, %rsi	#, tmp190
	xorl	%eax, %eax	# _92
	cmpq	%rsi, %rdi	# tmp190, z0
	je	.L325	#,
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movzbl	%al, %eax	# _92, _92
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L325:
	.cfi_restore_state
	movabsq	$18014398509481980, %rsi	#, tmp194
	movabsq	$281474976710655, %rax	#, tmp192
	andq	%rax, %rcx	# tmp192, t4
	movq	%rsi, %rax	# tmp194, tmp193
	subq	%r10, %rax	# _15, tmp193
	movabsq	$4503599627370495, %r10	#, tmp196
	andq	%r10, %r11	# tmp196, t1
	andq	%r10, %r9	# tmp196, t2
	andq	%r10, %r8	# tmp196, t3
	addq	%rax, %r11	# tmp193, tmp197
	movq	%rdx, %rax	# t0, tmp198
	shrq	$52, %rax	#, tmp198
	addq	%rax, %r11	# tmp198, t1
	movq	%rsi, %rax	# tmp194, tmp199
	subq	%rbx, %rsi	# _19, tmp205
	subq	%rbp, %rax	# _17, tmp199
	orq	%r11, %rdx	# t1, tmp212
	addq	%rax, %r9	# tmp199, tmp203
	movq	%r11, %rax	# t1, tmp204
	shrq	$52, %rax	#, tmp204
	addq	%rax, %r9	# tmp204, t2
	leaq	(%rsi,%r8), %rax	#, tmp209
	movq	%r9, %rsi	# t2, tmp210
	orq	%r9, %rdx	# t2, tmp213
	shrq	$52, %rsi	#, tmp210
	addq	%rsi, %rax	# tmp210, t3
	movq	%rax, %rsi	# t3, tmp211
	orq	%rax, %rdx	# t3, tmp214
	shrq	$52, %rsi	#, tmp211
	andq	%r10, %rdx	# tmp196, z0
	addq	%rsi, %rcx	# tmp211, t4
	movabsq	$4294968272, %rsi	#, tmp217
	xorq	%rdi, %rsi	# z0, z1
	andq	%r11, %rsi	# t1, tmp218
	andq	%r9, %rsi	# t2, _29
	andq	%rsi, %rax	# _29, z1
	movabsq	$4222124650659840, %rsi	#, tmp220
	xorq	%rcx, %rsi	# t4, tmp219
	andq	%rsi, %rax	# tmp219, z1
	cmpq	%r10, %rax	# tmp196, z1
	sete	%al	#, tmp224
	orq	%rdx, %rcx	# z0, t4
	sete	%dl	#, tmp227
	addq	$48, %rsp	#,
	.cfi_def_cfa_offset 32
	orl	%edx, %eax	# tmp227, _92
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	movzbl	%al, %eax	# _92, _92
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE136:
	.size	secp256k1_gej_eq_x_var, .-secp256k1_gej_eq_x_var
	.p2align 4,,15
	.type	secp256k1_ge_to_storage, @function
secp256k1_ge_to_storage:
.LFB148:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movabsq	$4503599627370495, %rax	#, tmp208
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movabsq	$4294968273, %r12	#, tmp204
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$281474976710655, %r13	#, tmp201
	movq	32(%rsi), %rdx	# MEM[(const struct secp256k1_ge *)a_2(D) + 32B], x$n$4
	movabsq	$4503595332402222, %r14	#, tmp223
	movq	%rdx, %r10	# x$n$4, t4
	shrq	$48, %rdx	#, x
	imulq	%r12, %rdx	# tmp204, tmp203
	andq	%r13, %r10	# tmp201, t4
	addq	(%rsi), %rdx	# MEM[(const struct secp256k1_ge *)a_2(D)], t0
	movq	%rdx, %r9	# t0, tmp206
	movq	%rdx, %rcx	# t0, t0
	shrq	$52, %r9	#, tmp206
	addq	8(%rsi), %r9	# MEM[(const struct secp256k1_ge *)a_2(D) + 8B], t1
	andq	%rax, %rcx	# tmp208, t0
	movq	%r9, %rdx	# t1, tmp209
	andq	%rax, %r9	# tmp208, t1
	shrq	$52, %rdx	#, tmp209
	addq	16(%rsi), %rdx	# MEM[(const struct secp256k1_ge *)a_2(D) + 16B], t2
	movq	%rdx, %r11	# t2, tmp212
	movq	%rdx, %r8	# t2, t2
	andq	%r9, %rdx	# t1, tmp217
	shrq	$52, %r11	#, tmp212
	addq	24(%rsi), %r11	# MEM[(const struct secp256k1_ge *)a_2(D) + 24B], t3
	andq	%rax, %r8	# tmp208, t2
	movq	%r11, %rbx	# t3, tmp215
	andq	%r11, %rdx	# t3, m
	shrq	$52, %rbx	#, tmp215
	addq	%r10, %rbx	# t4, t4
	movq	%r11, %r10	# t3, t3
	andq	%rax, %r10	# tmp208, t3
	cmpq	%rax, %rdx	# tmp208, m
	sete	%dl	#, tmp221
	cmpq	%r14, %rcx	# tmp223, t0
	seta	%r11b	#, tmp224
	andl	%edx, %r11d	# tmp221, tmp225
	xorl	%edx, %edx	# tmp229
	cmpq	%r13, %rbx	# tmp201, t4
	sete	%dl	#, tmp229
	andq	%r11, %rdx	# tmp225, tmp230
	movq	%rbx, %r11	# t4, tmp231
	shrq	$48, %r11	#, tmp231
	orq	%r11, %rdx	# tmp231, x
	imulq	%r12, %rdx	# tmp204, _129
	addq	%rcx, %rdx	# t0, t0
	movq	%rdx, %rcx	# t0, tmp234
	shrq	$52, %rcx	#, tmp234
	addq	%rcx, %r9	# tmp234, t1
	movq	%r9, %rcx	# t1, tmp235
	andq	%rax, %r9	# tmp208, t1
	shrq	$52, %rcx	#, tmp235
	addq	%rcx, %r8	# tmp235, t2
	movq	%r8, %rcx	# t2, tmp237
	andq	%rax, %r8	# tmp208, t2
	shrq	$52, %rcx	#, tmp237
	addq	%r10, %rcx	# t3, t3
	movq	%rcx, -16(%rsp)	# t3, %sfp
	movq	%rcx, %r15	# t3, t3
	movq	72(%rsi), %rcx	# MEM[(const struct secp256k1_ge *)a_2(D) + 72B], y$n$4
	andq	%rax, %r15	# tmp208, t3
	movq	%r15, -8(%rsp)	# t3, %sfp
	movq	%rcx, %r10	# y$n$4, t4
	shrq	$48, %rcx	#, x
	imulq	%r12, %rcx	# tmp204, tmp242
	andq	%r13, %r10	# tmp201, t4
	addq	40(%rsi), %rcx	# MEM[(const struct secp256k1_ge *)a_2(D) + 40B], t0
	movq	%r10, %r15	# t4, t4
	movq	%rcx, %r11	# t0, tmp245
	andq	%rax, %rcx	# tmp208, t0
	shrq	$52, %r11	#, tmp245
	addq	48(%rsi), %r11	# MEM[(const struct secp256k1_ge *)a_2(D) + 48B], t1
	movq	%r11, %r10	# t1, tmp248
	andq	%rax, %r11	# tmp208, t1
	shrq	$52, %r10	#, tmp248
	addq	56(%rsi), %r10	# MEM[(const struct secp256k1_ge *)a_2(D) + 56B], t2
	movq	%r10, %rbp	# t2, tmp251
	shrq	$52, %rbp	#, tmp251
	addq	64(%rsi), %rbp	# MEM[(const struct secp256k1_ge *)a_2(D) + 64B], t3
	movq	%r10, %rsi	# t2, t2
	andq	%rax, %rsi	# tmp208, t2
	andq	%r11, %r10	# t1, tmp256
	movq	%rsi, -24(%rsp)	# t2, %sfp
	movq	%rbp, %rsi	# t3, tmp254
	andq	%rbp, %r10	# t3, m
	shrq	$52, %rsi	#, tmp254
	addq	%r15, %rsi	# t4, t4
	movq	%rbp, %r15	# t3, t3
	andq	%rax, %r15	# tmp208, t3
	cmpq	%rax, %r10	# tmp208, m
	sete	%r10b	#, tmp260
	cmpq	%r14, %rcx	# tmp223, t0
	seta	%bpl	#, tmp263
	andl	%ebp, %r10d	# tmp263, tmp264
	xorl	%ebp, %ebp	# tmp268
	cmpq	%r13, %rsi	# tmp201, t4
	sete	%bpl	#, tmp268
	andq	%rax, %rdx	# tmp208, t0
	andq	%rbp, %r10	# tmp268, tmp269
	movq	%rsi, %rbp	# t4, tmp270
	shrq	$48, %rbp	#, tmp270
	orq	%rbp, %r10	# tmp270, x
	imulq	%r10, %r12	# x, _82
	addq	%r12, %rcx	# _82, t0
	movq	%rcx, %r14	# t0, tmp273
	andq	%rax, %rcx	# tmp208, t0
	shrq	$52, %r14	#, tmp273
	addq	%r14, %r11	# tmp273, t1
	movq	%r11, %r14	# t1, tmp274
	andq	%rax, %r11	# tmp208, t1
	shrq	$52, %r14	#, tmp274
	addq	-24(%rsp), %r14	# %sfp, t2
	movq	%r11, %r12	# t1, tmp294
	salq	$52, %r12	#, tmp294
	shrq	$12, %r11	#, tmp298
	orq	%r12, %rcx	# tmp294, tmp297
	movq	%rcx, 32(%rdi)	# tmp297, MEM[(struct secp256k1_fe_storage *)r_7(D) + 32B].n
	movq	%r14, %r10	# t2, tmp276
	andq	%rax, %r14	# tmp208, t2
	shrq	$52, %r10	#, tmp276
	addq	%r10, %r15	# tmp276, t3
	movq	%r9, %r10	# t1, tmp279
	shrq	$12, %r9	#, tmp283
	salq	$52, %r10	#, tmp279
	movq	%r15, %r13	# t3, t3
	orq	%r10, %rdx	# tmp279, tmp282
	movq	%r8, %r10	# t2, tmp284
	shrq	$24, %r8	#, tmp286
	salq	$40, %r10	#, tmp284
	movq	%rdx, (%rdi)	# tmp282, MEM[(struct secp256k1_fe_storage *)r_7(D)].n
	andq	%rax, %r13	# tmp208, t3
	orq	%r10, %r9	# tmp284, tmp285
	movq	%r14, %rax	# t2, tmp299
	movq	%r9, 8(%rdi)	# tmp285, MEM[(struct secp256k1_fe_storage *)r_7(D)].n
	movq	-8(%rsp), %r9	# %sfp, t3
	movq	%r9, %rdx	# t3, tmp287
	salq	$28, %rdx	#, tmp287
	orq	%rdx, %r8	# tmp287, tmp288
	movq	-16(%rsp), %rdx	# %sfp, t3
	movq	%r8, 16(%rdi)	# tmp288, MEM[(struct secp256k1_fe_storage *)r_7(D)].n
	shrq	$52, %rdx	#, t3
	addq	%rdx, %rbx	# tmp289, t4
	movq	%r9, %rdx	# t3, t3
	salq	$16, %rbx	#, tmp291
	shrq	$36, %rdx	#, t3
	orq	%rdx, %rbx	# tmp292, tmp293
	salq	$40, %rax	#, tmp299
	shrq	$52, %r15	#, tmp304
	orq	%rax, %r11	# tmp299, tmp300
	addq	%r15, %rsi	# tmp304, t4
	movq	%r13, %rax	# t3, tmp302
	shrq	$24, %r14	#, tmp301
	shrq	$36, %r13	#, tmp307
	salq	$28, %rax	#, tmp302
	salq	$16, %rsi	#, tmp306
	orq	%rax, %r14	# tmp302, tmp303
	movq	%rbx, 24(%rdi)	# tmp293, MEM[(struct secp256k1_fe_storage *)r_7(D)].n
	orq	%r13, %rsi	# tmp307, tmp308
	movq	%r14, 48(%rdi)	# tmp303, MEM[(struct secp256k1_fe_storage *)r_7(D) + 32B].n
	movq	%r11, 40(%rdi)	# tmp300, MEM[(struct secp256k1_fe_storage *)r_7(D) + 32B].n
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	movq	%rsi, 56(%rdi)	# tmp308, MEM[(struct secp256k1_fe_storage *)r_7(D) + 32B].n
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE148:
	.size	secp256k1_ge_to_storage, .-secp256k1_ge_to_storage
	.p2align 4,,15
	.type	secp256k1_fe_inv, @function
secp256k1_fe_inv:
.LFB92:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# a, _65
	movl	$3, %ebp	#, ivtmp_1
	subq	$632, %rsp	#,
	.cfi_def_cfa_offset 688
	movq	%rdi, 8(%rsp)	# r, %sfp
	leaq	48(%rsp), %rdi	#, tmp282
	movq	%rsi, (%rsp)	# _65, %sfp
	call	secp256k1_fe_sqr_inner	#
	leaq	48(%rsp), %rsi	#, tmp283
	movq	%rbx, %rdx	# _65,
	movq	%rsi, %rdi	# tmp283, tmp284
	call	secp256k1_fe_mul_inner	#
	leaq	48(%rsp), %rsi	#, tmp285
	leaq	96(%rsp), %rdi	#, tmp286
	call	secp256k1_fe_sqr_inner	#
	leaq	96(%rsp), %rsi	#, tmp287
	movq	%rbx, %rdx	# _65,
	movq	%rsi, %rdi	# tmp287, tmp288
	call	secp256k1_fe_mul_inner	#
	movq	96(%rsp), %rax	# x3, x3
	movq	%rax, 144(%rsp)	# x3, x6
	movq	104(%rsp), %rax	# x3, x3
	movq	%rax, 152(%rsp)	# x3, x6
	movq	112(%rsp), %rax	# x3, x3
	movq	%rax, 160(%rsp)	# x3, x6
	movq	120(%rsp), %rax	# x3, x3
	movq	%rax, 168(%rsp)	# x3, x6
	movq	128(%rsp), %rax	# x3, x3
	movq	%rax, 176(%rsp)	# x3, x6
.L333:
	leaq	144(%rsp), %rsi	#, tmp289
	movq	%rsi, %rdi	# tmp289, tmp290
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_1
	jne	.L333	#,
	leaq	144(%rsp), %rsi	#, tmp292
	leaq	96(%rsp), %rdx	#, tmp291
	movl	$3, %ebp	#, ivtmp_2
	movq	%rsi, %rdi	# tmp292, tmp293
	call	secp256k1_fe_mul_inner	#
	movq	144(%rsp), %rax	# x6, x6
	movq	%rax, 192(%rsp)	# x6, x9
	movq	152(%rsp), %rax	# x6, x6
	movq	%rax, 200(%rsp)	# x6, x9
	movq	160(%rsp), %rax	# x6, x6
	movq	%rax, 208(%rsp)	# x6, x9
	movq	168(%rsp), %rax	# x6, x6
	movq	%rax, 216(%rsp)	# x6, x9
	movq	176(%rsp), %rax	# x6, x6
	movq	%rax, 224(%rsp)	# x6, x9
.L334:
	leaq	192(%rsp), %rsi	#, tmp294
	movq	%rsi, %rdi	# tmp294, tmp295
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_2
	jne	.L334	#,
	leaq	192(%rsp), %rsi	#, tmp297
	leaq	96(%rsp), %rdx	#, tmp296
	movl	$11, %ebp	#, ivtmp_4
	movq	%rsi, %rdi	# tmp297, tmp298
	call	secp256k1_fe_mul_inner	#
	movq	192(%rsp), %rax	# x9, x9
	leaq	240(%rsp), %rsi	#, tmp299
	movq	%rsi, %rdi	# tmp299, tmp300
	movq	%rax, 240(%rsp)	# x9, x11
	movq	200(%rsp), %rax	# x9, x9
	movq	%rax, 248(%rsp)	# x9, x11
	movq	208(%rsp), %rax	# x9, x9
	movq	%rax, 256(%rsp)	# x9, x11
	movq	216(%rsp), %rax	# x9, x9
	movq	%rax, 264(%rsp)	# x9, x11
	movq	224(%rsp), %rax	# x9, x9
	movq	%rax, 272(%rsp)	# x9, x11
	call	secp256k1_fe_sqr_inner	#
	leaq	240(%rsp), %rsi	#, tmp301
	movq	%rsi, %rdi	# tmp301, tmp302
	call	secp256k1_fe_sqr_inner	#
	leaq	240(%rsp), %rsi	#, tmp304
	leaq	48(%rsp), %rdx	#, tmp303
	movq	%rsi, %rdi	# tmp304, tmp305
	call	secp256k1_fe_mul_inner	#
	movq	240(%rsp), %rax	# x11, x11
	movq	%rax, 288(%rsp)	# x11, x22
	movq	248(%rsp), %rax	# x11, x11
	movq	%rax, 296(%rsp)	# x11, x22
	movq	256(%rsp), %rax	# x11, x11
	movq	%rax, 304(%rsp)	# x11, x22
	movq	264(%rsp), %rax	# x11, x11
	movq	%rax, 312(%rsp)	# x11, x22
	movq	272(%rsp), %rax	# x11, x11
	movq	%rax, 320(%rsp)	# x11, x22
	.p2align 4,,10
	.p2align 3
.L335:
	leaq	288(%rsp), %rsi	#, tmp306
	movq	%rsi, %rdi	# a, a
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,480(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,576(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,528(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 576(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 528(%rsp),%rsi	# tmp2
movq 480(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	subl	$1, %ebp	#, ivtmp_4
	jne	.L335	#,
	leaq	240(%rsp), %rdx	#, tmp308
	movq	%rdi, %rsi	# a, tmp309
	movl	$22, %ebp	#, ivtmp_5
	call	secp256k1_fe_mul_inner	#
	movq	288(%rsp), %rax	# x22, x22
	movq	%rax, 336(%rsp)	# x22, x44
	movq	296(%rsp), %rax	# x22, x22
	movq	%rax, 344(%rsp)	# x22, x44
	movq	304(%rsp), %rax	# x22, x22
	movq	%rax, 352(%rsp)	# x22, x44
	movq	312(%rsp), %rax	# x22, x22
	movq	%rax, 360(%rsp)	# x22, x44
	movq	320(%rsp), %rax	# x22, x22
	movq	%rax, 368(%rsp)	# x22, x44
	.p2align 4,,10
	.p2align 3
.L336:
	leaq	336(%rsp), %rsi	#, tmp311
	movq	%rsi, %rdi	# a, a
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,480(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,576(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,528(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 576(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 528(%rsp),%rsi	# tmp2
movq 480(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	subl	$1, %ebp	#, ivtmp_5
	jne	.L336	#,
	leaq	288(%rsp), %rdx	#, tmp313
	movq	%rdi, %rsi	# a, tmp314
	movl	$44, %ebp	#, ivtmp_6
	call	secp256k1_fe_mul_inner	#
	movq	336(%rsp), %rax	# x44, x44
	movq	%rax, 384(%rsp)	# x44, x88
	movq	344(%rsp), %rax	# x44, x44
	movq	%rax, 392(%rsp)	# x44, x88
	movq	352(%rsp), %rax	# x44, x44
	movq	%rax, 400(%rsp)	# x44, x88
	movq	360(%rsp), %rax	# x44, x44
	movq	%rax, 408(%rsp)	# x44, x88
	movq	368(%rsp), %rax	# x44, x44
	movq	%rax, 416(%rsp)	# x44, x88
	.p2align 4,,10
	.p2align 3
.L337:
	leaq	384(%rsp), %rsi	#, tmp316
	movq	%rsi, %rdi	# a, a
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,480(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,576(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,528(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 576(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 528(%rsp),%rsi	# tmp2
movq 480(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	subl	$1, %ebp	#, ivtmp_6
	jne	.L337	#,
	leaq	336(%rsp), %rdx	#, tmp318
	movq	%rdi, %rsi	# a, tmp319
	movl	$88, %ebp	#, ivtmp_7
	call	secp256k1_fe_mul_inner	#
	movq	384(%rsp), %rax	# x88, x88
	movq	%rax, 432(%rsp)	# x88, x176
	movq	392(%rsp), %rax	# x88, x88
	movq	%rax, 440(%rsp)	# x88, x176
	movq	400(%rsp), %rax	# x88, x88
	movq	%rax, 448(%rsp)	# x88, x176
	movq	408(%rsp), %rax	# x88, x88
	movq	%rax, 456(%rsp)	# x88, x176
	movq	416(%rsp), %rax	# x88, x88
	movq	%rax, 464(%rsp)	# x88, x176
	.p2align 4,,10
	.p2align 3
.L338:
	leaq	432(%rsp), %rsi	#, tmp321
	movq	%rsi, %rdi	# a, a
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,480(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,576(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,528(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 576(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 528(%rsp),%rsi	# tmp2
movq 480(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	subl	$1, %ebp	#, ivtmp_7
	jne	.L338	#,
	leaq	384(%rsp), %rdx	#, tmp323
	movq	%rdi, %rsi	# a, tmp324
	movl	$44, %ebp	#, ivtmp_8
	call	secp256k1_fe_mul_inner	#
	movq	432(%rsp), %rax	# x176, x176
	movq	%rax, 480(%rsp)	# x176, x220
	movq	440(%rsp), %rax	# x176, x176
	movq	%rax, 488(%rsp)	# x176, x220
	movq	448(%rsp), %rax	# x176, x176
	movq	%rax, 496(%rsp)	# x176, x220
	movq	456(%rsp), %rax	# x176, x176
	movq	%rax, 504(%rsp)	# x176, x220
	movq	464(%rsp), %rax	# x176, x176
	movq	%rax, 512(%rsp)	# x176, x220
	.p2align 4,,10
	.p2align 3
.L339:
	leaq	480(%rsp), %rsi	#, tmp326
	movq	%rsi, %rdi	# a, a
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,40(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,576(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,528(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 576(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 528(%rsp),%rsi	# tmp2
movq 40(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	subl	$1, %ebp	#, ivtmp_8
	jne	.L339	#,
	leaq	336(%rsp), %rdx	#, tmp328
	movq	%rdi, %rsi	# a, tmp329
	movl	$3, %ebp	#, ivtmp_10
	call	secp256k1_fe_mul_inner	#
	movq	480(%rsp), %rax	# x220, x220
	movq	%rax, 528(%rsp)	# x220, x223
	movq	488(%rsp), %rax	# x220, x220
	movq	%rax, 536(%rsp)	# x220, x223
	movq	496(%rsp), %rax	# x220, x220
	movq	%rax, 544(%rsp)	# x220, x223
	movq	504(%rsp), %rax	# x220, x220
	movq	%rax, 552(%rsp)	# x220, x223
	movq	512(%rsp), %rax	# x220, x220
	movq	%rax, 560(%rsp)	# x220, x223
.L340:
	leaq	528(%rsp), %rsi	#, tmp331
	movq	%rsi, %rdi	# tmp331, tmp332
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_10
	jne	.L340	#,
	leaq	528(%rsp), %rsi	#, tmp334
	leaq	96(%rsp), %rdx	#, tmp333
	movl	$23, %ebp	#, ivtmp_12
	movq	%rsi, %rdi	# tmp334, tmp335
	call	secp256k1_fe_mul_inner	#
	movq	528(%rsp), %rax	# x223, x223
	movq	%rax, 576(%rsp)	# x223, t1
	movq	536(%rsp), %rax	# x223, x223
	movq	%rax, 584(%rsp)	# x223, t1
	movq	544(%rsp), %rax	# x223, x223
	movq	%rax, 592(%rsp)	# x223, t1
	movq	552(%rsp), %rax	# x223, x223
	movq	%rax, 600(%rsp)	# x223, t1
	movq	560(%rsp), %rax	# x223, x223
	movq	%rax, 608(%rsp)	# x223, t1
	.p2align 4,,10
	.p2align 3
.L341:
	leaq	576(%rsp), %rsi	#, tmp336
	movq	%rsi, %rdi	# a, a
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,24(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,40(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,32(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 40(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 32(%rsp),%rsi	# tmp2
movq 24(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	subl	$1, %ebp	#, ivtmp_12
	jne	.L341	#,
	leaq	288(%rsp), %rdx	#, tmp338
	movq	%rdi, %rsi	# a, tmp339
	movl	$5, %ebp	#, ivtmp_51
	call	secp256k1_fe_mul_inner	#
.L342:
	leaq	576(%rsp), %rsi	#, tmp341
	movq	%rsi, %rdi	# tmp341, tmp342
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_51
	jne	.L342	#,
	leaq	576(%rsp), %rsi	#, tmp343
	movq	(%rsp), %rdx	# %sfp,
	movl	$3, %ebp	#, ivtmp_129
	movq	%rsi, %rdi	# tmp343, tmp344
	call	secp256k1_fe_mul_inner	#
.L343:
	leaq	576(%rsp), %rsi	#, tmp345
	movq	%rsi, %rdi	# tmp345, tmp346
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_129
	jne	.L343	#,
	leaq	576(%rsp), %rsi	#, tmp348
	leaq	48(%rsp), %rdx	#, tmp347
	movq	%rsi, %rdi	# tmp348, tmp349
	call	secp256k1_fe_mul_inner	#
	leaq	576(%rsp), %rsi	#, tmp350
	movq	%rsi, %rdi	# tmp350, tmp351
	call	secp256k1_fe_sqr_inner	#
	leaq	576(%rsp), %rsi	#, tmp352
	movq	%rsi, %rdi	# tmp352, tmp353
	call	secp256k1_fe_sqr_inner	#
	movq	(%rsp), %rsi	# %sfp,
	movq	8(%rsp), %rdi	# %sfp,
	leaq	576(%rsp), %rdx	#, tmp354
	call	secp256k1_fe_mul_inner	#
	addq	$632, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE92:
	.size	secp256k1_fe_inv, .-secp256k1_fe_inv
	.p2align 4,,15
	.type	secp256k1_gej_add_ge, @function
secp256k1_gej_add_ge:
.LFB146:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	80(%rsi), %rax	#, _225
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r14	# b, b
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# r, r
	movq	%rsi, %rbp	# a, a
	movq	%rax, %rsi	# _225,
	movq	%rax, %r15	# _225, _225
	subq	$696, %rsp	#,
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi	#,
	call	secp256k1_fe_sqr_inner	#
	movq	0(%rbp), %rax	# a_3(D)->x, a_3(D)->x
	leaq	160(%rsp), %rdi	#, tmp823
	movq	%rax, 160(%rsp)	# a_3(D)->x, u1
	movq	8(%rbp), %rax	# a_3(D)->x, a_3(D)->x
	movq	%rax, 168(%rsp)	# a_3(D)->x, u1
	movq	16(%rbp), %rax	# a_3(D)->x, a_3(D)->x
	movq	%rax, 176(%rsp)	# a_3(D)->x, u1
	movq	24(%rbp), %rax	# a_3(D)->x, a_3(D)->x
	movq	%rax, 184(%rsp)	# a_3(D)->x, u1
	movq	32(%rbp), %rax	# a_3(D)->x, a_3(D)->x
	movq	%rax, 192(%rsp)	# a_3(D)->x, u1
	call	secp256k1_fe_normalize_weak	#
	leaq	112(%rsp), %rdx	#,
	leaq	208(%rsp), %rdi	#, tmp824
	movq	%r14, %rsi	# b,
	call	secp256k1_fe_mul_inner	#
	movq	40(%rbp), %rax	# a_3(D)->y, a_3(D)->y
	leaq	256(%rsp), %rdi	#, tmp825
	movq	%rax, 256(%rsp)	# a_3(D)->y, s1
	movq	48(%rbp), %rax	# a_3(D)->y, a_3(D)->y
	movq	%rax, 264(%rsp)	# a_3(D)->y, s1
	movq	56(%rbp), %rax	# a_3(D)->y, a_3(D)->y
	movq	%rax, 272(%rsp)	# a_3(D)->y, s1
	movq	64(%rbp), %rax	# a_3(D)->y, a_3(D)->y
	movq	%rax, 280(%rsp)	# a_3(D)->y, s1
	movq	72(%rbp), %rax	# a_3(D)->y, a_3(D)->y
	movq	%rax, 288(%rsp)	# a_3(D)->y, s1
	call	secp256k1_fe_normalize_weak	#
	leaq	40(%r14), %rsi	#, tmp477
	leaq	112(%rsp), %rdx	#,
	leaq	304(%rsp), %rdi	#, tmp827
	movq	%r14, 56(%rsp)	# b, %sfp
	call	secp256k1_fe_mul_inner	#
	leaq	304(%rsp), %rsi	#, tmp828
	movq	%r15, %rdx	# _225,
	movq	%r15, 96(%rsp)	# _225, %sfp
	movq	%rsi, %rdi	# tmp828, tmp829
	call	secp256k1_fe_mul_inner	#
	movq	160(%rsp), %rax	# u1, u1
	leaq	352(%rsp), %rsi	#, tmp835
	movq	%rax, 352(%rsp)	# u1, t
	movq	168(%rsp), %rax	# u1, u1
	movq	%rax, 360(%rsp)	# u1, t
	movq	176(%rsp), %rax	# u1, u1
	movq	%rax, 368(%rsp)	# u1, t
	movq	184(%rsp), %rax	# u1, u1
	movq	%rax, 376(%rsp)	# u1, t
	movq	192(%rsp), %rax	# u1, u1
	movq	%rax, 384(%rsp)	# u1, t
	movq	208(%rsp), %rax	# u2.n, u2.n
	addq	%rax, 352(%rsp)	# u2.n, t.n
	movq	216(%rsp), %rax	# u2.n, u2.n
	addq	%rax, 360(%rsp)	# u2.n, t.n
	movq	224(%rsp), %rax	# u2.n, u2.n
	addq	%rax, 368(%rsp)	# u2.n, t.n
	movq	232(%rsp), %rax	# u2.n, u2.n
	addq	%rax, 376(%rsp)	# u2.n, t.n
	movq	240(%rsp), %rax	# u2.n, u2.n
	addq	%rax, 384(%rsp)	# u2.n, t.n
	movq	256(%rsp), %rax	# MEM[(struct  *)&s1], MEM[(struct  *)&s1]
	addq	304(%rsp), %rax	# s2.n, MEM[(struct  *)&s1]
	movq	%rax, %r12	# MEM[(struct  *)&s1], _195
	movq	264(%rsp), %rax	# MEM[(struct  *)&s1 + 8B], MEM[(struct  *)&s1 + 8B]
	addq	312(%rsp), %rax	# s2.n, MEM[(struct  *)&s1 + 8B]
	movq	%rax, 48(%rsp)	# MEM[(struct  *)&s1 + 8B], %sfp
	movq	272(%rsp), %rax	# MEM[(struct  *)&s1 + 16B], MEM[(struct  *)&s1 + 16B]
	movq	%rax, %rdi	# MEM[(struct  *)&s1 + 16B], MEM[(struct  *)&s1 + 16B]
	addq	320(%rsp), %rdi	# s2.n, MEM[(struct  *)&s1 + 16B]
	movq	%rdi, 8(%rsp)	# MEM[(struct  *)&s1 + 16B], %sfp
	movq	280(%rsp), %rax	# MEM[(struct  *)&s1 + 24B], MEM[(struct  *)&s1 + 24B]
	leaq	544(%rsp), %rdi	#, tmp836
	movq	%rax, %rdx	# MEM[(struct  *)&s1 + 24B], MEM[(struct  *)&s1 + 24B]
	movq	288(%rsp), %rax	# MEM[(struct  *)&s1 + 32B], MEM[(struct  *)&s1 + 32B]
	addq	328(%rsp), %rdx	# s2.n, MEM[(struct  *)&s1 + 24B]
	movq	%rax, %r11	# MEM[(struct  *)&s1 + 32B], MEM[(struct  *)&s1 + 32B]
	addq	336(%rsp), %r11	# s2.n, MEM[(struct  *)&s1 + 32B]
	movq	%rdx, 16(%rsp)	# MEM[(struct  *)&s1 + 24B], %sfp
	movq	%r11, 24(%rsp)	# MEM[(struct  *)&s1 + 32B], %sfp
	call	secp256k1_fe_sqr_inner	#
	movabsq	$18014381329608892, %r8	#, tmp505
	subq	208(%rsp), %r8	# u2.n, tmp505
	leaq	160(%rsp), %rsi	#, tmp843
	leaq	400(%rsp), %rdi	#, tmp844
	movq	%r8, 592(%rsp)	# tmp505, m_alt.n
	movabsq	$18014398509481980, %r8	#, tmp509
	subq	216(%rsp), %r8	# u2.n, tmp509
	movq	%r8, 600(%rsp)	# tmp509, m_alt.n
	movabsq	$18014398509481980, %r8	#, tmp513
	subq	224(%rsp), %r8	# u2.n, tmp513
	movq	%r8, 608(%rsp)	# tmp513, m_alt.n
	movabsq	$18014398509481980, %r8	#, tmp517
	subq	232(%rsp), %r8	# u2.n, tmp517
	movq	%r8, 616(%rsp)	# tmp517, m_alt.n
	movabsq	$1125899906842620, %r8	#, tmp521
	subq	240(%rsp), %r8	# u2.n, tmp521
	movq	%r8, 624(%rsp)	# tmp521, m_alt.n
	leaq	592(%rsp), %r8	#, tmp842
	movq	%r8, %rdx	# tmp842,
	call	secp256k1_fe_mul_inner	#
	movq	416(%rsp), %r11	# tt.n, tt.n
	movq	400(%rsp), %r14	# tt.n, tt.n
	movq	408(%rsp), %r13	# tt.n, tt.n
	addq	544(%rsp), %r14	# rr.n, _170
	addq	552(%rsp), %r13	# rr.n, tt.n
	movq	424(%rsp), %r10	# tt.n, tt.n
	movq	%r11, %r8	# tt.n, tt.n
	addq	560(%rsp), %r8	# rr.n, tt.n
	movq	24(%rsp), %r11	# %sfp, _207
	addq	568(%rsp), %r10	# rr.n, tt.n
	movq	%r12, 88(%rsp)	# _195, %sfp
	movq	%r14, 544(%rsp)	# _170, rr.n
	movq	%r11, %rdx	# _207, x
	movq	%r13, 552(%rsp)	# _173, rr.n
	movq	%r13, 80(%rsp)	# _173, %sfp
	movq	%r8, 32(%rsp)	# _176, %sfp
	movq	%r8, 560(%rsp)	# _176, rr.n
	shrq	$48, %rdx	#, x
	movq	432(%rsp), %r8	# tt.n, tt.n
	movq	%r10, 40(%rsp)	# _179, %sfp
	movq	%r10, 568(%rsp)	# _179, rr.n
	movq	16(%rsp), %r10	# %sfp, _204
	movq	%r8, %rcx	# tt.n, tt.n
	addq	576(%rsp), %rcx	# rr.n, tt.n
	movq	%rcx, %r15	# tt.n, _182
	movq	%rcx, 576(%rsp)	# _182, rr.n
	movabsq	$281474976710655, %rcx	#, t4
	andq	%r11, %rcx	# _207, t4
	movq	%rcx, %r8	# t4, t4
	movabsq	$4294968273, %rcx	#, tmp855
	imulq	%rcx, %rdx	# tmp855, tmp538
	addq	%r12, %rdx	# _195, t0
	movq	%rdx, %r12	# t0, tmp540
	shrq	$52, %r12	#, tmp540
	movq	%r12, %rdi	# tmp540, tmp540
	addq	48(%rsp), %rdi	# %sfp, t1
	movq	%rdi, %r12	# t1, tmp541
	shrq	$52, %r12	#, tmp541
	movq	%r12, %rsi	# tmp541, tmp541
	addq	8(%rsp), %rsi	# %sfp, t2
	movq	%rdx, %r12	# t0, tmp544
	orq	%rdi, %r12	# t1, tmp544
	movq	%r12, %r11	# tmp544, tmp544
	movabsq	$4503599627370495, %r12	#, tmp547
	andq	%r12, %rdx	# tmp547, t0
	movq	%rsi, %rax	# t2, tmp542
	orq	%rsi, %r11	# t2, tmp545
	shrq	$52, %rax	#, tmp542
	leaq	(%rax,%r10), %rcx	#, t3
	movabsq	$4294968272, %rax	#, tmp865
	xorq	%rax, %rdx	# tmp865, z1
	andq	%rdi, %rdx	# t1, tmp552
	movq	%rcx, %r9	# t3, tmp543
	orq	%rcx, %r11	# t3, tmp546
	andq	%rsi, %rdx	# t2, _260
	movabsq	$4294968273, %rsi	#, tmp869
	shrq	$52, %r9	#, tmp543
	movq	%rdx, %rax	# _260, _260
	movq	%r15, %rdx	# _182, x
	addq	%r8, %r9	# t4, t4
	shrq	$48, %rdx	#, x
	andq	%rcx, %rax	# t3, _260
	movabsq	$281474976710655, %rcx	#, t4
	imulq	%rsi, %rdx	# tmp869, tmp555
	andq	%r15, %rcx	# _182, t4
	andq	%r12, %r11	# tmp547, z0
	addq	%r14, %rdx	# _170, t0
	movq	%rdx, %rdi	# t0, tmp557
	shrq	$52, %rdi	#, tmp557
	movq	%rdi, %r8	# tmp557, tmp557
	addq	%r13, %r8	# _173, t1
	movabsq	$4294968272, %r13	#, tmp878
	movq	%r8, %rdi	# t1, tmp558
	shrq	$52, %rdi	#, tmp558
	addq	32(%rsp), %rdi	# %sfp, t2
	movq	%rdi, %rsi	# t2, tmp559
	shrq	$52, %rsi	#, tmp559
	addq	40(%rsp), %rsi	# %sfp, t3
	movq	%rsi, %r10	# t3, tmp560
	shrq	$52, %r10	#, tmp560
	addq	%rcx, %r10	# t4, t4
	movq	%rdx, %rcx	# t0, tmp561
	orq	%r8, %rcx	# t1, tmp561
	orq	%rdi, %rcx	# t2, tmp562
	orq	%rsi, %rcx	# t3, tmp563
	andq	%r12, %rcx	# tmp547, z0
	andq	%r12, %rdx	# tmp547, t0
	xorq	%r13, %rdx	# tmp878, z1
	andq	%r8, %rdx	# t1, tmp569
	movabsq	$4222124650659840, %r8	#, tmp570
	andq	%rdi, %rdx	# t2, _256
	xorq	%r10, %r8	# t4, tmp570
	movq	160(%rsp), %rdi	# u1.n, u1.n
	andq	%rdx, %rsi	# _256, z1
	andq	%r8, %rsi	# tmp570, z1
	movq	%r10, %r8	# t4, t4
	cmpq	%r12, %rsi	# tmp547, z1
	movq	168(%rsp), %rsi	# u1.n, u1.n
	sete	%dl	#, tmp575
	orq	%rcx, %r8	# z0, t4
	sete	%cl	#, tmp578
	orl	%ecx, %edx	# tmp578, tmp579
	movabsq	$4222124650659840, %rcx	#, tmp580
	xorq	%r9, %rcx	# t4, tmp580
	movl	%edx, %r8d	# tmp579, tmp579
	andq	%rcx, %rax	# tmp580, z1
	cmpq	%r12, %rax	# tmp547, z1
	sete	%al	#, tmp585
	orq	%r11, %r9	# z0, t4
	sete	%cl	#, tmp588
	addq	592(%rsp), %rdi	# m_alt.n, _145
	orl	%ecx, %eax	# tmp588, tmp589
	andl	%eax, %r8d	# tmp589, tmp579
	movl	%r8d, %r13d	# tmp579, _313
	movq	264(%rsp), %r8	# s1, tmp884
	leaq	(%r8,%r8), %r11	#, _161
	movq	272(%rsp), %r8	# s1, tmp885
	leaq	(%r8,%r8), %r10	#, _163
	movq	280(%rsp), %r8	# s1, tmp886
	leaq	(%r8,%r8), %r9	#, _165
	movq	288(%rsp), %r8	# s1, tmp887
	addq	600(%rsp), %rsi	# m_alt.n, _148
	movq	184(%rsp), %rax	# u1.n, u1.n
	addq	616(%rsp), %rax	# m_alt.n, u1.n
	movq	192(%rsp), %rdx	# u1.n, u1.n
	addq	624(%rsp), %rdx	# m_alt.n, u1.n
	movb	%r13b, 111(%rsp)	# _313, %sfp
	addq	%r8, %r8	# _167
	movq	176(%rsp), %rcx	# u1.n, u1.n
	addq	608(%rsp), %rcx	# m_alt.n, _151
	movq	%rax, 64(%rsp)	# u1.n, %sfp
	movl	%r13d, %eax	# _313, tmp609
	movq	256(%rsp), %r13	# s1, tmp891
	xorl	$1, %eax	#, tmp609
	movq	%rdx, 72(%rsp)	# u1.n, %sfp
	movzbl	%al, %eax	# tmp609, _484
	leaq	-1(%rax), %rdx	#, mask0
	addq	%r13, %r13	# tmp610
	negq	%rax	# _486
	andq	%rax, %r14	# _486, tmp613
	andq	%rdx, %r13	# mask0, tmp612
	andq	%rdx, %r11	# mask0, tmp615
	andq	%rdx, %r10	# mask0, tmp618
	orq	%r14, %r13	# tmp613, tmp614
	andq	%rdx, %r9	# mask0, tmp621
	andq	%rdx, %r8	# mask0, tmp624
	movq	%r13, 640(%rsp)	# tmp614, rr_alt.n
	movq	80(%rsp), %r13	# %sfp, _173
	andq	%rdx, %rdi	# mask0, tmp627
	movq	48(%rsp), %r14	# %sfp, _198
	andq	%rdx, %rsi	# mask0, tmp630
	andq	%rax, %r13	# _486, _173
	orq	%r13, %r11	# tmp616, tmp617
	movq	32(%rsp), %r13	# %sfp, _176
	movq	%r11, 648(%rsp)	# tmp617, rr_alt.n
	andq	%rax, %r13	# _486, _176
	orq	%r13, %r10	# tmp619, tmp620
	movq	88(%rsp), %r13	# %sfp, _195
	movq	%r10, 656(%rsp)	# tmp620, rr_alt.n
	movq	40(%rsp), %r10	# %sfp, _179
	andq	%rax, %r10	# _486, _179
	orq	%r10, %r9	# tmp622, tmp623
	movq	%r9, 664(%rsp)	# tmp623, rr_alt.n
	movq	%r15, %r9	# _182, _182
	andq	%rax, %r9	# _486, _182
	orq	%r9, %r8	# tmp625, tmp626
	movq	%r8, 672(%rsp)	# tmp626, rr_alt.n
	movq	%r13, %r8	# _195, tmp628
	andq	%rax, %r8	# _486, tmp628
	orq	%r8, %rdi	# tmp628, tmp629
	movq	%rdi, 592(%rsp)	# tmp629, m_alt.n
	movq	%r14, %rdi	# _198, tmp631
	andq	%rax, %rdi	# _486, tmp631
	orq	%rdi, %rsi	# tmp631, tmp632
	andq	%rdx, %rcx	# mask0, tmp633
	leaq	448(%rsp), %rdi	#, tmp904
	movq	%rsi, 600(%rsp)	# tmp632, m_alt.n
	movq	8(%rsp), %rsi	# %sfp, tmp634
	andq	%rax, %rsi	# _486, tmp634
	orq	%rsi, %rcx	# tmp634, tmp635
	movq	%rcx, 608(%rsp)	# tmp635, m_alt.n
	movq	64(%rsp), %rcx	# %sfp, _154
	andq	%rdx, %rcx	# mask0, _154
	andq	72(%rsp), %rdx	# %sfp, tmp639
	movq	%rcx, %r15	# _154, tmp636
	movq	16(%rsp), %rcx	# %sfp, tmp637
	andq	%rax, %rcx	# _486, tmp637
	orq	%rcx, %r15	# tmp637, tmp638
	movq	%r15, 616(%rsp)	# tmp638, m_alt.n
	movq	24(%rsp), %r15	# %sfp, _207
	andq	%r15, %rax	# _207, tmp640
	orq	%rdx, %rax	# tmp639, tmp641
	leaq	592(%rsp), %rdx	#, tmp903
	movq	%rax, 624(%rsp)	# tmp641, m_alt.n
	movq	%rdx, %rsi	# tmp903,
	call	secp256k1_fe_sqr_inner	#
	leaq	448(%rsp), %r11	#, tmp906
	leaq	352(%rsp), %rdx	#, tmp905
	leaq	496(%rsp), %rdi	#, tmp907
	movq	%r11, %rsi	# tmp906,
	call	secp256k1_fe_mul_inner	#
	leaq	448(%rsp), %rdx	#, tmp908
	movq	%rdx, %rsi	# tmp908,
	movq	%rdx, %rdi	# tmp4, tmp909
	call	secp256k1_fe_sqr_inner	#
	movzbl	111(%rsp), %edx	# %sfp, _428
	movq	%r13, %r8	# _195, _195
	movq	%r14, %rdi	# _198, _198
	movq	8(%rsp), %rsi	# %sfp, _201
	leaq	-1(%rdx), %rax	#, mask0
	negq	%rdx	# _430
	andq	%rdx, %r8	# _430, _195
	andq	%rdx, %rdi	# _430, _198
	andq	%rdx, %rsi	# _430, _201
	movq	%rax, %rcx	# mask0, tmp649
	andq	448(%rsp), %rcx	# n.n, tmp649
	orq	%r8, %rcx	# tmp650, tmp651
	movq	%rcx, 448(%rsp)	# tmp651, n.n
	movq	%rax, %rcx	# mask0, tmp652
	andq	456(%rsp), %rcx	# n.n, tmp652
	orq	%rdi, %rcx	# tmp653, tmp654
	movq	16(%rsp), %rdi	# %sfp, _204
	movq	%rcx, 456(%rsp)	# tmp654, n.n
	movq	%rax, %rcx	# mask0, tmp655
	andq	464(%rsp), %rcx	# n.n, tmp655
	andq	%rdx, %rdi	# _430, _204
	andq	%r15, %rdx	# _207, tmp662
	movabsq	$4294968272, %r15	#, tmp931
	orq	%rsi, %rcx	# tmp656, tmp657
	leaq	640(%rsp), %rsi	#, tmp920
	movq	%rcx, 464(%rsp)	# tmp657, n.n
	movq	%rax, %rcx	# mask0, tmp658
	andq	472(%rsp), %rcx	# n.n, tmp658
	andq	480(%rsp), %rax	# n.n, tmp661
	orq	%rdi, %rcx	# tmp659, tmp660
	leaq	352(%rsp), %rdi	#, tmp921
	orq	%rdx, %rax	# tmp662, tmp663
	movq	%rcx, 472(%rsp)	# tmp660, n.n
	movq	%rax, 480(%rsp)	# tmp663, n.n
	call	secp256k1_fe_sqr_inner	#
	movq	96(%rsp), %rsi	# %sfp,
	leaq	80(%rbx), %rdi	#, tmp667
	leaq	592(%rsp), %rdx	#, tmp922
	call	secp256k1_fe_mul_inner	#
	movq	112(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D) + 80B].n, t4
	movabsq	$4294968273, %rsi	#, tmp925
	movabsq	$281474976710655, %rdx	#, t4
	movq	80(%rbx), %r9	# MEM[(struct secp256k1_fe *)r_20(D) + 80B].n, t0
	movq	88(%rbx), %r11	# MEM[(struct secp256k1_fe *)r_20(D) + 80B].n, t1
	movq	96(%rbx), %r13	# MEM[(struct secp256k1_fe *)r_20(D) + 80B].n, t2
	movq	104(%rbx), %r14	# MEM[(struct secp256k1_fe *)r_20(D) + 80B].n, t3
	movq	%rcx, %rax	# t4, x
	andq	%rcx, %rdx	# t4, t4
	shrq	$48, %rax	#, x
	imulq	%rsi, %rax	# tmp925, tmp670
	addq	%r9, %rax	# t0, t0
	movq	%rax, %r8	# t0, tmp672
	shrq	$52, %r8	#, tmp672
	addq	%r11, %r8	# t1, t1
	movq	%r8, %rdi	# t1, tmp673
	shrq	$52, %rdi	#, tmp673
	addq	%r13, %rdi	# t2, t2
	movq	%rdi, %rsi	# t2, tmp674
	shrq	$52, %rsi	#, tmp674
	addq	%r14, %rsi	# t3, t3
	movq	%rsi, %r10	# t3, tmp675
	shrq	$52, %r10	#, tmp675
	addq	%rdx, %r10	# t4, t4
	movq	%rax, %rdx	# t0, tmp676
	andq	%r12, %rax	# tmp547, t0
	xorq	%r15, %rax	# tmp931, z1
	orq	%r8, %rdx	# t1, tmp676
	andq	%r8, %rax	# t1, tmp684
	orq	%rdi, %rdx	# t2, tmp677
	andq	%rdi, %rax	# t2, _252
	orq	%rsi, %rdx	# t3, tmp678
	movabsq	$18014398509481980, %rdi	#, _125
	andq	%rsi, %rax	# t3, z1
	movabsq	$4222124650659840, %rsi	#, tmp685
	andq	%r12, %rdx	# tmp547, z0
	xorq	%r10, %rsi	# t4, tmp685
	andq	%rsi, %rax	# tmp685, z1
	movabsq	$18014398509481980, %rsi	#, _127
	cmpq	%r12, %rax	# tmp547, z1
	sete	%r12b	#, tmp690
	orq	%rdx, %r10	# z0, t4
	movabsq	$1125899906842620, %rdx	#, _131
	sete	%al	#, tmp693
	subq	504(%rsp), %rdi	# q.n, _125
	addq	%rcx, %rcx	# tmp702
	orl	%eax, %r12d	# tmp693, tmp694
	movl	$1, %eax	#, tmp697
	subl	120(%rbp), %eax	# a_3(D)->infinity, tmp696
	movzbl	%r12b, %r12d	# tmp694, tmp695
	subq	512(%rsp), %rsi	# q.n, _127
	subq	528(%rsp), %rdx	# q.n, _131
	movq	%rcx, 112(%rbx)	# tmp702, MEM[(struct secp256k1_fe *)r_20(D) + 80B].n
	movabsq	$18014381329608892, %rcx	#, _123
	subq	496(%rsp), %rcx	# q.n, _123
	addq	%r11, %r11	# tmp699
	addq	%r9, %r9	# tmp698
	addq	%rdi, 360(%rsp)	# _125, t.n
	imull	%eax, %r12d	# tmp696, tmp695
	movabsq	$18014398509481980, %rax	#, _129
	subq	520(%rsp), %rax	# q.n, _129
	addq	%r13, %r13	# tmp700
	addq	%r14, %r14	# tmp701
	movq	%rdi, 504(%rsp)	# _125, q.n
	leaq	352(%rsp), %rdi	#, tmp939
	movq	%r11, 88(%rbx)	# tmp699, MEM[(struct secp256k1_fe *)r_20(D) + 80B].n
	movq	%r9, 80(%rbx)	# tmp698, MEM[(struct secp256k1_fe *)r_20(D) + 80B].n
	movq	%r13, 96(%rbx)	# tmp700, MEM[(struct secp256k1_fe *)r_20(D) + 80B].n
	movq	%r14, 104(%rbx)	# tmp701, MEM[(struct secp256k1_fe *)r_20(D) + 80B].n
	addq	%rcx, 352(%rsp)	# _123, t.n
	addq	%rsi, 368(%rsp)	# _127, t.n
	movl	%r12d, 8(%rsp)	# tmp695, %sfp
	movq	%rcx, 496(%rsp)	# _123, q.n
	addq	%rax, 376(%rsp)	# _129, t.n
	addq	%rdx, 384(%rsp)	# _131, t.n
	movq	%rsi, 512(%rsp)	# _127, q.n
	movq	%rax, 520(%rsp)	# _129, q.n
	movq	%rdx, 528(%rsp)	# _131, q.n
	call	secp256k1_fe_normalize_weak	#
	movq	352(%rsp), %rdi	# t, t
	movq	496(%rsp), %r8	# q.n, q.n
	movq	360(%rsp), %rsi	# t, t
	movq	368(%rsp), %rcx	# t, t
	movq	376(%rsp), %rdx	# t, t
	movq	384(%rsp), %rax	# t, t
	movq	%rdi, (%rbx)	# t, r_20(D)->x
	leaq	(%r8,%rdi,2), %rdi	#, tmp722
	movq	%rsi, 8(%rbx)	# t, r_20(D)->x
	movq	%rcx, 16(%rbx)	# t, r_20(D)->x
	movq	%rdi, 352(%rsp)	# tmp722, t.n
	movq	504(%rsp), %rdi	# q.n, q.n
	movq	%rdx, 24(%rbx)	# t, r_20(D)->x
	movq	%rax, 32(%rbx)	# t, r_20(D)->x
	leaq	(%rdi,%rsi,2), %rsi	#, tmp726
	movq	%rsi, 360(%rsp)	# tmp726, t.n
	movq	512(%rsp), %rsi	# q.n, q.n
	leaq	(%rsi,%rcx,2), %rcx	#, tmp730
	leaq	352(%rsp), %rsi	#, tmp941
	movq	%rcx, 368(%rsp)	# tmp730, t.n
	movq	520(%rsp), %rcx	# q.n, q.n
	movq	%rsi, %rdi	# tmp941, tmp942
	leaq	(%rcx,%rdx,2), %rdx	#, tmp734
	movq	%rdx, 376(%rsp)	# tmp734, t.n
	movq	528(%rsp), %rdx	# q.n, q.n
	leaq	(%rdx,%rax,2), %rax	#, tmp738
	leaq	640(%rsp), %rdx	#, tmp940
	movq	%rax, 384(%rsp)	# tmp738, t.n
	call	secp256k1_fe_mul_inner	#
	movq	448(%rsp), %rax	# n.n, n.n
	addq	352(%rsp), %rax	# t.n, _79
	movabsq	$36028762659217784, %r8	#, tmp753
	movq	456(%rsp), %rdi	# n.n, n.n
	movq	472(%rsp), %rcx	# n.n, n.n
	addq	360(%rsp), %rdi	# t.n, _82
	addq	376(%rsp), %rcx	# t.n, _88
	movq	464(%rsp), %rsi	# n.n, n.n
	addq	368(%rsp), %rsi	# t.n, _85
	subq	%rax, %r8	# _79, tmp753
	movq	%rax, 352(%rsp)	# _79, t.n
	movq	480(%rsp), %rdx	# n.n, n.n
	movabsq	$36028797018963960, %rax	#, tmp755
	addq	384(%rsp), %rdx	# t.n, _91
	movq	%r8, 40(%rbx)	# tmp754, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rax, %r9	# tmp755, tmp756
	movq	%rdi, 360(%rsp)	# _82, t.n
	movq	%rcx, 376(%rsp)	# _88, t.n
	subq	%rdi, %r9	# _82, tmp756
	movq	%rax, %rdi	# tmp755, tmp758
	subq	%rcx, %rax	# _88, tmp760
	subq	%rsi, %rdi	# _85, tmp758
	movq	%rax, 64(%rbx)	# tmp760, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movabsq	$2251799813685240, %rax	#, tmp761
	subq	%rdx, %rax	# _91, tmp762
	movq	%rdi, 56(%rbx)	# tmp758, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	leaq	40(%rbx), %rdi	#, tmp763
	movq	%r9, 48(%rbx)	# tmp756, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rax, 72(%rbx)	# tmp762, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rsi, 368(%rsp)	# _85, t.n
	movq	%rdx, 384(%rsp)	# _91, t.n
	call	secp256k1_fe_normalize_weak	#
	movq	(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D)].n, tmp946
	movq	8(%rbx), %rsi	# MEM[(struct secp256k1_fe *)r_20(D)].n, tmp947
	movslq	120(%rbp), %rdx	# a_3(D)->infinity, _364
	movq	56(%rsp), %rbp	# %sfp, b
	leaq	0(,%rcx,4), %r15	#, _63
	movq	16(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D)].n, tmp948
	leaq	0(,%rsi,4), %r14	#, _65
	movq	24(%rbx), %rsi	# MEM[(struct secp256k1_fe *)r_20(D)].n, tmp949
	leaq	-1(%rdx), %rax	#, mask0
	movq	%r15, (%rbx)	# _63, MEM[(struct secp256k1_fe *)r_20(D)].n
	movq	%r14, 8(%rbx)	# _65, MEM[(struct secp256k1_fe *)r_20(D)].n
	leaq	0(,%rcx,4), %r13	#, _67
	movq	32(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D)].n, tmp950
	leaq	0(,%rsi,4), %r11	#, _69
	movq	40(%rbx), %rsi	# MEM[(struct secp256k1_fe *)r_20(D) + 40B].n, tmp951
	movq	%r13, 16(%rbx)	# _67, MEM[(struct secp256k1_fe *)r_20(D)].n
	leaq	0(,%rcx,4), %r10	#, _71
	movq	48(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D) + 40B].n, tmp952
	movq	%r11, 24(%rbx)	# _69, MEM[(struct secp256k1_fe *)r_20(D)].n
	leaq	0(,%rsi,4), %r9	#, _10
	movq	56(%rbx), %rsi	# MEM[(struct secp256k1_fe *)r_20(D) + 40B].n, tmp953
	movq	%r10, 32(%rbx)	# _71, MEM[(struct secp256k1_fe *)r_20(D)].n
	leaq	0(,%rcx,4), %r8	#, _55
	movq	64(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D) + 40B].n, tmp954
	movq	%r9, 40(%rbx)	# _10, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	leaq	0(,%rsi,4), %rdi	#, _57
	movq	%r8, 48(%rbx)	# _55, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	leaq	0(,%rcx,4), %rsi	#, _59
	movq	72(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D) + 40B].n, tmp955
	movq	%rdi, 56(%rbx)	# _57, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rsi, 64(%rbx)	# _59, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	salq	$2, %rcx	#, _61
	negq	%rdx	# _366
	andq	%rax, %r15	# mask0, tmp776
	movq	%rcx, 72(%rbx)	# _61, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rdx, %r12	# _366, tmp775
	andq	0(%rbp), %r12	# MEM[(const struct secp256k1_fe *)b_2(D)].n, tmp775
	movq	%rdx, %rbp	# _366, tmp778
	andq	%rax, %r14	# mask0, tmp779
	andq	%rax, %r13	# mask0, tmp782
	andq	%rax, %r11	# mask0, tmp785
	andq	%rax, %r10	# mask0, tmp788
	andq	%rax, %r9	# mask0, tmp791
	andq	%rax, %r8	# mask0, tmp794
	andq	%rax, %rdi	# mask0, tmp797
	andq	%rax, %rsi	# mask0, tmp800
	orq	%r12, %r15	# tmp775, tmp777
	andq	%rax, %rcx	# mask0, tmp803
	movq	%r15, (%rbx)	# tmp777, MEM[(struct secp256k1_fe *)r_20(D)].n
	movq	56(%rsp), %r15	# %sfp, b
	andq	8(%r15), %rbp	# MEM[(const struct secp256k1_fe *)b_2(D)].n, tmp778
	orq	%rbp, %r14	# tmp778, tmp780
	movq	%rdx, %rbp	# _366, tmp781
	movq	%r14, 8(%rbx)	# tmp780, MEM[(struct secp256k1_fe *)r_20(D)].n
	andq	16(%r15), %rbp	# MEM[(const struct secp256k1_fe *)b_2(D)].n, tmp781
	orq	%rbp, %r13	# tmp781, tmp783
	movq	%rdx, %rbp	# _366, tmp784
	movq	%r13, 16(%rbx)	# tmp783, MEM[(struct secp256k1_fe *)r_20(D)].n
	andq	24(%r15), %rbp	# MEM[(const struct secp256k1_fe *)b_2(D)].n, tmp784
	orq	%rbp, %r11	# tmp784, tmp786
	movq	%r11, 24(%rbx)	# tmp786, MEM[(struct secp256k1_fe *)r_20(D)].n
	movq	%rdx, %r11	# _366, tmp787
	andq	32(%r15), %r11	# MEM[(const struct secp256k1_fe *)b_2(D)].n, tmp787
	orq	%r11, %r10	# tmp787, tmp789
	movq	%r10, 32(%rbx)	# tmp789, MEM[(struct secp256k1_fe *)r_20(D)].n
	movq	%rdx, %r10	# _366, tmp790
	andq	40(%r15), %r10	# MEM[(const struct secp256k1_fe *)b_2(D) + 40B].n, tmp790
	movq	%rax, 16(%rsp)	# mask0, %sfp
	movq	16(%rsp), %xmm0	# %sfp, tmp808
	punpcklqdq	%xmm0, %xmm0	# tmp808
	movdqu	104(%rbx), %xmm1	# MEM[(long unsigned int *)r_20(D) + 104B], tmp810
	orq	%r10, %r9	# tmp790, tmp792
	movq	%r9, 40(%rbx)	# tmp792, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rdx, %r9	# _366, tmp793
	andq	48(%r15), %r9	# MEM[(const struct secp256k1_fe *)b_2(D) + 40B].n, tmp793
	movdqu	88(%rbx), %xmm2	# MEM[(long unsigned int *)r_20(D) + 88B], tmp812
	pand	%xmm0, %xmm1	# tmp808, vect__317.598
	pand	%xmm2, %xmm0	# tmp812, vect__317.598
	orq	%r9, %r8	# tmp793, tmp795
	movq	%r8, 48(%rbx)	# tmp795, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rdx, %r8	# _366, tmp796
	andq	56(%r15), %r8	# MEM[(const struct secp256k1_fe *)b_2(D) + 40B].n, tmp796
	orq	%r8, %rdi	# tmp796, tmp798
	movq	%rdi, 56(%rbx)	# tmp798, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rdx, %rdi	# _366, tmp799
	andq	64(%r15), %rdi	# MEM[(const struct secp256k1_fe *)b_2(D) + 40B].n, tmp799
	orq	%rdi, %rsi	# tmp799, tmp801
	movq	%rsi, 64(%rbx)	# tmp801, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rdx, %rsi	# _366, tmp802
	andq	72(%r15), %rsi	# MEM[(const struct secp256k1_fe *)b_2(D) + 40B].n, tmp802
	movups	%xmm0, 88(%rbx)	# vect__317.598, MEM[(long unsigned int *)r_20(D) + 88B]
	movups	%xmm1, 104(%rbx)	# vect__317.598, MEM[(long unsigned int *)r_20(D) + 104B]
	orq	%rsi, %rcx	# tmp802, tmp804
	movq	%rcx, 72(%rbx)	# tmp804, MEM[(struct secp256k1_fe *)r_20(D) + 40B].n
	movq	%rax, %rcx	# mask0, tmp805
	andq	80(%rbx), %rcx	# MEM[(struct secp256k1_fe *)r_20(D) + 80B].n, tmp805
	movl	8(%rsp), %eax	# %sfp, infinity
	andl	$1, %edx	#, tmp806
	orq	%rcx, %rdx	# tmp805, tmp807
	movl	%eax, 120(%rbx)	# infinity, r_20(D)->infinity
	movq	%rdx, 80(%rbx)	# tmp807, MEM[(struct secp256k1_fe *)r_20(D) + 80B].n
	addq	$696, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE146:
	.size	secp256k1_gej_add_ge, .-secp256k1_gej_add_ge
	.p2align 4,,15
	.type	secp256k1_ecmult_gen, @function
secp256k1_ecmult_gen:
.LFB178:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %rcx	# r, r
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r15d, %r15d	# _80
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%r14d, %r14d	# _75
	xorl	%ebx, %ebx	# _67
	xorl	%r13d, %r13d	# _62
	xorl	%r12d, %r12d	# _57
	subq	$264, %rsp	#,
	.cfi_def_cfa_offset 320
	movq	40(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	xorl	%ebp, %ebp	# _52
	movq	%rdi, 32(%rsp)	# ctx, %sfp
	movq	%rsi, 40(%rsp)	# r, %sfp
	movq	%rdx, %rsi	# gn, gn
	leaq	8(%rdi), %rdx	#, tmp211
	movq	%rax, (%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	48(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 8(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	56(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 16(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	64(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 24(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	72(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 32(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	80(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 40(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	88(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 48(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	96(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 56(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	104(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 64(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	112(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 72(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	120(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 80(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	128(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 88(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	136(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 96(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	144(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 104(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	152(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	movq	%rax, 112(%rcx)	# ctx_8(D)->initial, *r_7(D)
	movq	160(%rdi), %rax	# ctx_8(D)->initial, ctx_8(D)->initial
	leaq	64(%rsp), %rdi	#, tmp336
	movq	%rax, 120(%rcx)	# ctx_8(D)->initial, *r_7(D)
	call	secp256k1_scalar_add	#
	movq	$0, (%rsp)	#, %sfp
	xorl	%r9d, %r9d	# _90
	xorl	%r8d, %r8d	# _85
	movabsq	$4503599627370495, %r10	#, tmp242
	.p2align 4,,10
	.p2align 3
.L360:
	movq	(%rsp), %rdx	# %sfp, ivtmp.629
	xorl	%esi, %esi	# i
	leal	0(,%rdx,4), %ecx	#, _352
	movl	%ecx, %eax	# _352, tmp213
	andl	$63, %ecx	#, tmp215
	shrl	$6, %eax	#,
	movq	64(%rsp,%rax,8), %r11	# gnb.d, tmp217
	movq	32(%rsp), %rax	# %sfp, ctx
	shrq	%cl, %r11	# tmp215, tmp216
	movq	%rdx, %rcx	# ivtmp.629, tmp218
	movq	%rbx, %rdx	# _67, _67
	salq	$10, %rcx	#, tmp218
	addq	(%rax), %rcx	# ctx_8(D)->prec, ivtmp.627
	andl	$15, %r11d	#, bits.7_17
	movl	%r11d, 60(%rsp)	# bits.7_17, bits
	.p2align 4,,10
	.p2align 3
.L359:
	xorl	%eax, %eax	# tmp220
	cmpl	%esi, %r11d	# i, bits.7_17
	sete	%al	#, tmp220
	addl	$1, %esi	#, i
	addq	$64, %rcx	#, ivtmp.627
	leaq	-1(%rax), %rbx	#, mask0
	negq	%rax	# _70
	movq	%rax, %rdi	# _70, tmp222
	andq	-64(%rcx), %rdi	# MEM[base: _335, offset: 0B], tmp222
	andq	%rbx, %r14	# mask0, tmp223
	andq	%rbx, %r15	# mask0, tmp225
	andq	%rbx, %r8	# mask0, tmp227
	andq	%rbx, %r9	# mask0, tmp229
	andq	%rbx, %rbp	# mask0, tmp231
	andq	%rbx, %r12	# mask0, tmp233
	andq	%rbx, %r13	# mask0, tmp235
	andq	%rdx, %rbx	# _67, tmp237
	orq	%rdi, %r14	# tmp222, _75
	movq	%rax, %rdi	# _70, tmp224
	andq	-56(%rcx), %rdi	# MEM[base: _335, offset: 8B], tmp224
	orq	%rdi, %r15	# tmp224, _80
	movq	%rax, %rdi	# _70, tmp226
	andq	-48(%rcx), %rdi	# MEM[base: _335, offset: 16B], tmp226
	orq	%rdi, %r8	# tmp226, _85
	movq	%rax, %rdi	# _70, tmp228
	andq	-40(%rcx), %rdi	# MEM[base: _335, offset: 24B], tmp228
	orq	%rdi, %r9	# tmp228, _90
	movq	%rax, %rdi	# _70, tmp230
	andq	-32(%rcx), %rdi	# MEM[base: _335, offset: 32B], tmp230
	orq	%rdi, %rbp	# tmp230, _52
	movq	%rax, %rdi	# _70, tmp232
	andq	-24(%rcx), %rdi	# MEM[base: _335, offset: 40B], tmp232
	orq	%rdi, %r12	# tmp232, _57
	movq	%rax, %rdi	# _70, tmp234
	andq	-8(%rcx), %rax	# MEM[base: _335, offset: 56B], tmp236
	andq	-16(%rcx), %rdi	# MEM[base: _335, offset: 48B], tmp234
	orq	%rbx, %rax	# tmp237, tmp236
	orq	%rdi, %r13	# tmp234, _62
	cmpl	$16, %esi	#, i
	movq	%rax, %rdx	# tmp236, _67
	jne	.L359	#,
	movq	%r14, 8(%rsp)	# _75, %sfp
	movq	%rax, %rbx	# _67, _67
	movq	%r14, %rdx	# _75, tmp247
	movq	8(%rsp), %xmm0	# %sfp, tmp238
	movq	%r15, 8(%rsp)	# _80, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp238
	movq	%r8, 8(%rsp)	# _85, %sfp
	shrq	$52, %rdx	#, tmp247
	movq	%r8, 24(%rsp)	# _85, %sfp
	movq	%r9, 16(%rsp)	# _90, %sfp
	movaps	%xmm0, 96(%rsp)	# tmp238, MEM[(long unsigned int *)&adds]
	movq	8(%rsp), %xmm0	# %sfp, tmp239
	movq	%r9, 8(%rsp)	# _90, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp239
	movq	%rbp, 8(%rsp)	# _52, %sfp
	movaps	%xmm0, 112(%rsp)	# tmp239, MEM[(long unsigned int *)&adds + 16B]
	movq	8(%rsp), %xmm0	# %sfp, tmp240
	movq	%r12, 8(%rsp)	# _57, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp240
	movq	%r13, 8(%rsp)	# _62, %sfp
	movaps	%xmm0, 128(%rsp)	# tmp240, MEM[(long unsigned int *)&adds + 32B]
	movq	8(%rsp), %xmm0	# %sfp, tmp241
	movq	%rax, 8(%rsp)	# _67, %sfp
	movq	%r14, %rax	# _75, tmp243
	movhps	8(%rsp), %xmm0	# %sfp, tmp241
	movq	%r10, 8(%rsp)	# tmp242, %sfp
	andq	%r10, %rax	# tmp242, tmp243
	movq	%rax, 160(%rsp)	# tmp243, MEM[(struct secp256k1_fe *)&add].n
	movq	%r15, %rax	# _80, tmp244
	salq	$12, %rax	#, tmp244
	andq	%r10, %rax	# tmp242, tmp245
	orq	%rdx, %rax	# tmp247, tmp248
	movq	%r15, %rdx	# _80, tmp252
	movq	%rax, 168(%rsp)	# tmp248, MEM[(struct secp256k1_fe *)&add].n
	movq	%r8, %rax	# _85, tmp249
	shrq	$40, %rdx	#, tmp252
	salq	$24, %rax	#, tmp249
	andq	%r10, %rax	# tmp242, tmp250
	orq	%rdx, %rax	# tmp252, tmp253
	movq	%r8, %rdx	# _85, tmp257
	movq	%rax, 176(%rsp)	# tmp253, MEM[(struct secp256k1_fe *)&add].n
	movq	%r9, %rax	# _90, tmp254
	shrq	$28, %rdx	#, tmp257
	salq	$36, %rax	#, tmp254
	andq	%r10, %rax	# tmp242, tmp255
	orq	%rdx, %rax	# tmp257, tmp258
	movq	%rbp, %rdx	# _52, tmp265
	movq	%rax, 184(%rsp)	# tmp258, MEM[(struct secp256k1_fe *)&add].n
	movq	%r9, %rax	# _90, tmp259
	shrq	$52, %rdx	#, tmp265
	shrq	$16, %rax	#, tmp259
	movq	%rax, 192(%rsp)	# tmp259, MEM[(struct secp256k1_fe *)&add].n
	movq	%rbp, %rax	# _52, tmp261
	andq	%r10, %rax	# tmp242, tmp261
	movq	%rax, 200(%rsp)	# tmp261, MEM[(struct secp256k1_fe *)&add + 40B].n
	movq	%r12, %rax	# _57, tmp262
	salq	$12, %rax	#, tmp262
	andq	%r10, %rax	# tmp242, tmp263
	orq	%rdx, %rax	# tmp265, tmp266
	movq	%r12, %rdx	# _57, tmp270
	movq	%rax, 208(%rsp)	# tmp266, MEM[(struct secp256k1_fe *)&add + 40B].n
	movq	%r13, %rax	# _62, tmp267
	shrq	$40, %rdx	#, tmp270
	salq	$24, %rax	#, tmp267
	andq	%r10, %rax	# tmp242, tmp268
	orq	%rdx, %rax	# tmp270, tmp271
	movq	%r13, %rdx	# _62, tmp275
	movq	%rax, 216(%rsp)	# tmp271, MEM[(struct secp256k1_fe *)&add + 40B].n
	movq	%rbx, %rax	# _67, tmp272
	shrq	$28, %rdx	#, tmp275
	salq	$36, %rax	#, tmp272
	andq	%r10, %rax	# tmp242, tmp273
	orq	%rdx, %rax	# tmp275, tmp276
	leaq	160(%rsp), %rdx	#, tmp377
	movq	%rax, 224(%rsp)	# tmp276, MEM[(struct secp256k1_fe *)&add + 40B].n
	movq	%rbx, %rax	# _67, tmp277
	shrq	$16, %rax	#, tmp277
	movaps	%xmm0, 144(%rsp)	# tmp241, MEM[(long unsigned int *)&adds + 48B]
	movq	%rax, 232(%rsp)	# tmp277, MEM[(struct secp256k1_fe *)&add + 40B].n
	movq	40(%rsp), %rdi	# %sfp, r
	movq	%rdi, %rsi	# r,
	movl	$0, 240(%rsp)	#, add.infinity
	call	secp256k1_gej_add_ge	#
	addq	$1, (%rsp)	#, %sfp
	movq	8(%rsp), %r10	# %sfp, tmp242
	movq	(%rsp), %rax	# %sfp, ivtmp.629
	movq	16(%rsp), %r9	# %sfp, _90
	movq	24(%rsp), %r8	# %sfp, _85
	cmpq	$64, %rax	#, ivtmp.629
	jne	.L360	#,
	leaq	60(%rsp), %rdi	#, tmp380
	movl	$4, %esi	#,
	call	explicit_bzero	#
	leaq	160(%rsp), %rdi	#, tmp381
	movl	$88, %esi	#,
	call	explicit_bzero	#
	leaq	64(%rsp), %rdi	#, tmp382
	movl	$32, %esi	#,
	call	explicit_bzero	#
	addq	$264, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE178:
	.size	secp256k1_ecmult_gen, .-secp256k1_ecmult_gen
	.p2align 4,,15
	.type	secp256k1_ecmult.constprop.14, @function
secp256k1_ecmult.constprop.14:
.LFB240:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx	# a, a
	movl	$5, %edx	#,
	subq	$3864, %rsp	#,
	.cfi_def_cfa_offset 3920
	movq	%rdi, 32(%rsp)	# ctx, %sfp
	leaq	1808(%rsp), %rdi	#, tmp1050
	movq	%rsi, 40(%rsp)	# r, %sfp
	movq	%rcx, %rsi	# na,
	movq	%r8, 56(%rsp)	# ng, %sfp
	call	secp256k1_ecmult_wnaf.constprop.15	#
	movl	%eax, 48(%rsp)	#, %sfp
	movl	120(%rbx), %eax	# a_3(D)->infinity, _92
	testl	%eax, %eax	# _92
	movl	%eax, 1224(%rsp)	# _92, d.infinity
	je	.L417	#,
.L365:
	movq	1104(%rsp), %rax	# d.x, d.x
	leaq	1184(%rsp), %rbp	#, tmp486
	leaq	784(%rsp), %rdi	#, tmp1053
	movl	$0, 768(%rsp)	#, d_ge.infinity
	leaq	3856(%rsp), %r12	#, _292
	movq	%rbp, %rsi	# tmp486,
	movq	%rax, 688(%rsp)	# d.x, d_ge.x
	movq	1112(%rsp), %rax	# d.x, d.x
	movq	%rax, 696(%rsp)	# d.x, d_ge.x
	movq	1120(%rsp), %rax	# d.x, d.x
	movq	%rax, 704(%rsp)	# d.x, d_ge.x
	movq	1128(%rsp), %rax	# d.x, d.x
	movq	%rax, 712(%rsp)	# d.x, d_ge.x
	movq	1136(%rsp), %rax	# d.x, d.x
	movq	%rax, 720(%rsp)	# d.x, d_ge.x
	movq	1144(%rsp), %rax	# d.y, d.y
	movq	%rax, 728(%rsp)	# d.y, d_ge.y
	movq	1152(%rsp), %rax	# d.y, d.y
	movq	%rax, 736(%rsp)	# d.y, d_ge.y
	movq	1160(%rsp), %rax	# d.y, d.y
	movq	%rax, 744(%rsp)	# d.y, d_ge.y
	movq	1168(%rsp), %rax	# d.y, d.y
	movq	%rax, 752(%rsp)	# d.y, d_ge.y
	movq	1176(%rsp), %rax	# d.y, d.y
	movq	%rax, 760(%rsp)	# d.y, d_ge.y
	call	secp256k1_fe_sqr_inner	#
	leaq	784(%rsp), %rsi	#, tmp1054
	leaq	2832(%rsp), %rdi	#, tmp1055
	movq	%rbp, %rdx	# tmp486,
	leaq	824(%rsp), %rbp	#, ivtmp.677
	call	secp256k1_fe_mul_inner	#
	leaq	784(%rsp), %rdx	#, tmp1056
	leaq	592(%rsp), %rdi	#, tmp1057
	movq	%rbx, %rsi	# a,
	call	secp256k1_fe_mul_inner	#
	leaq	40(%rbx), %rsi	#, tmp495
	leaq	632(%rsp), %rdi	#, tmp497
	leaq	2832(%rsp), %rdx	#, tmp1059
	call	secp256k1_fe_mul_inner	#
	movl	120(%rbx), %eax	# a_3(D)->infinity, a_3(D)->infinity
	movl	%eax, 672(%rsp)	# a_3(D)->infinity, a_ge.infinity
	movq	592(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 2832(%rsp)	# a_ge.x, MEM[(struct secp256k1_gej *)&prej].x
	movq	600(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 2840(%rsp)	# a_ge.x, MEM[(struct secp256k1_gej *)&prej].x
	movq	608(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 2848(%rsp)	# a_ge.x, MEM[(struct secp256k1_gej *)&prej].x
	movq	616(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 2856(%rsp)	# a_ge.x, MEM[(struct secp256k1_gej *)&prej].x
	movq	624(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 2864(%rsp)	# a_ge.x, MEM[(struct secp256k1_gej *)&prej].x
	movq	632(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 2872(%rsp)	# a_ge.y, MEM[(struct secp256k1_gej *)&prej].y
	movq	640(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 2880(%rsp)	# a_ge.y, MEM[(struct secp256k1_gej *)&prej].y
	movq	648(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 2888(%rsp)	# a_ge.y, MEM[(struct secp256k1_gej *)&prej].y
	movq	656(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 2896(%rsp)	# a_ge.y, MEM[(struct secp256k1_gej *)&prej].y
	movq	664(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 2904(%rsp)	# a_ge.y, MEM[(struct secp256k1_gej *)&prej].y
	movq	80(%rbx), %rax	# a_3(D)->z, a_3(D)->z
	movq	%rax, 2912(%rsp)	# a_3(D)->z, MEM[(struct secp256k1_gej *)&prej].z
	movq	88(%rbx), %rax	# a_3(D)->z, a_3(D)->z
	movq	%rax, 2920(%rsp)	# a_3(D)->z, MEM[(struct secp256k1_gej *)&prej].z
	movq	96(%rbx), %rax	# a_3(D)->z, a_3(D)->z
	movq	%rax, 2928(%rsp)	# a_3(D)->z, MEM[(struct secp256k1_gej *)&prej].z
	movq	104(%rbx), %rax	# a_3(D)->z, a_3(D)->z
	movq	%rax, 2936(%rsp)	# a_3(D)->z, MEM[(struct secp256k1_gej *)&prej].z
	movq	112(%rbx), %rax	# a_3(D)->z, a_3(D)->z
	leaq	2960(%rsp), %rbx	#, ivtmp.675
	movq	%rax, 2944(%rsp)	# a_3(D)->z, MEM[(struct secp256k1_gej *)&prej].z
	movl	$0, 2952(%rsp)	#, MEM[(struct secp256k1_gej *)&prej].infinity
	movq	1184(%rsp), %rax	# d.z, d.z
	movq	%rax, 784(%rsp)	# d.z, MEM[(struct secp256k1_fe *)&zr]
	movq	1192(%rsp), %rax	# d.z, d.z
	movq	%rax, 792(%rsp)	# d.z, MEM[(struct secp256k1_fe *)&zr]
	movq	1200(%rsp), %rax	# d.z, d.z
	movq	%rax, 800(%rsp)	# d.z, MEM[(struct secp256k1_fe *)&zr]
	movq	1208(%rsp), %rax	# d.z, d.z
	movq	%rax, 808(%rsp)	# d.z, MEM[(struct secp256k1_fe *)&zr]
	movq	1216(%rsp), %rax	# d.z, d.z
	movq	%rax, 816(%rsp)	# d.z, MEM[(struct secp256k1_fe *)&zr]
	.p2align 4,,10
	.p2align 3
.L366:
	leaq	-128(%rbx), %rsi	#, tmp523
	leaq	688(%rsp), %rdx	#, tmp1062
	movq	%rbp, %rcx	# ivtmp.677,
	movq	%rbx, %rdi	# ivtmp.675,
	subq	$-128, %rbx	#, ivtmp.675
	addq	$40, %rbp	#, ivtmp.677
	call	secp256k1_gej_add_ge_var	#
	cmpq	%rbx, %r12	# ivtmp.675, _292
	jne	.L366	#,
	leaq	3808(%rsp), %rdi	#, tmp527
	leaq	1184(%rsp), %rdx	#, tmp525
	leaq	3600(%rsp), %rbp	#, ivtmp.657
	movq	%rdi, %rsi	# tmp527,
	call	secp256k1_fe_mul_inner	#
	movq	3728(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(const struct secp256k1_gej *)&prej + 896B].x
	movl	$0, 1800(%rsp)	#, MEM[(struct secp256k1_ge *)&pre_a + 616B].infinity
	movq	%rax, 1720(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(struct secp256k1_ge *)&pre_a + 616B].x
	movq	3736(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(const struct secp256k1_gej *)&prej + 896B].x
	movq	%rax, 1728(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(struct secp256k1_ge *)&pre_a + 616B].x
	movq	3744(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(const struct secp256k1_gej *)&prej + 896B].x
	movq	%rax, 1736(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(struct secp256k1_ge *)&pre_a + 616B].x
	movq	3752(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(const struct secp256k1_gej *)&prej + 896B].x
	movq	%rax, 1744(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(struct secp256k1_ge *)&pre_a + 616B].x
	movq	3760(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(const struct secp256k1_gej *)&prej + 896B].x
	movq	%rax, 1752(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].x, MEM[(struct secp256k1_ge *)&pre_a + 616B].x
	movq	3768(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(const struct secp256k1_gej *)&prej + 896B].y
	movq	%rax, 1760(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(struct secp256k1_ge *)&pre_a + 616B].y
	movq	3776(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(const struct secp256k1_gej *)&prej + 896B].y
	movq	%rax, 1768(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(struct secp256k1_ge *)&pre_a + 616B].y
	movq	3784(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(const struct secp256k1_gej *)&prej + 896B].y
	movq	%rax, 1776(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(struct secp256k1_ge *)&pre_a + 616B].y
	movq	3792(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(const struct secp256k1_gej *)&prej + 896B].y
	movq	%rax, 1784(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(struct secp256k1_ge *)&pre_a + 616B].y
	movq	3800(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(const struct secp256k1_gej *)&prej + 896B].y
	movq	%rax, 1792(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].y, MEM[(struct secp256k1_ge *)&pre_a + 616B].y
	movq	3808(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, MEM[(const struct secp256k1_gej *)&prej + 896B].z
	movq	%rax, 64(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, Z
	movq	3816(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, MEM[(const struct secp256k1_gej *)&prej + 896B].z
	movq	%rax, 72(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, Z
	movq	3824(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, MEM[(const struct secp256k1_gej *)&prej + 896B].z
	movq	%rax, 80(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, Z
	movq	3832(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, MEM[(const struct secp256k1_gej *)&prej + 896B].z
	movq	%rax, 88(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, Z
	movq	3840(%rsp), %rax	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, MEM[(const struct secp256k1_gej *)&prej + 896B].z
	movq	%rax, 96(%rsp)	# MEM[(const struct secp256k1_gej *)&prej + 896B].z, Z
	movq	1064(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&zr + 280B], MEM[(const struct secp256k1_fe *)&zr + 280B]
	movq	%rax, 544(%rsp)	# MEM[(const struct secp256k1_fe *)&zr + 280B], zs
	movq	1072(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&zr + 280B], MEM[(const struct secp256k1_fe *)&zr + 280B]
	movq	$7, 8(%rsp)	#, %sfp
	movq	%rax, 552(%rsp)	# MEM[(const struct secp256k1_fe *)&zr + 280B], zs
	movq	1080(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&zr + 280B], MEM[(const struct secp256k1_fe *)&zr + 280B]
	movq	%rax, 560(%rsp)	# MEM[(const struct secp256k1_fe *)&zr + 280B], zs
	movq	1088(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&zr + 280B], MEM[(const struct secp256k1_fe *)&zr + 280B]
	movq	%rax, 568(%rsp)	# MEM[(const struct secp256k1_fe *)&zr + 280B], zs
	movq	1096(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&zr + 280B], MEM[(const struct secp256k1_fe *)&zr + 280B]
	movq	%rax, 576(%rsp)	# MEM[(const struct secp256k1_fe *)&zr + 280B], zs
	leaq	1632(%rsp), %rax	#, ivtmp.655
	movq	%rax, 16(%rsp)	# ivtmp.655, %sfp
	leaq	1024(%rsp), %rax	#, ivtmp.663
	movq	%rax, 24(%rsp)	# ivtmp.663, %sfp
	jmp	.L367	#
	.p2align 4,,10
	.p2align 3
.L368:
	movq	24(%rsp), %rbx	# %sfp, ivtmp.663
	leaq	544(%rsp), %rsi	#, tmp1070
	addq	$-128, %rbp	#, ivtmp.657
	movq	%rsi, %rdi	# tmp1070, tmp1071
	movq	%rbx, %rdx	# ivtmp.663,
	call	secp256k1_fe_mul_inner	#
	subq	$88, 16(%rsp)	#, %sfp
	movq	%rbx, %rax	# ivtmp.663, ivtmp.663
	subq	$40, %rax	#, ivtmp.663
	movq	%rax, 24(%rsp)	# ivtmp.663, %sfp
.L367:
	subq	$1, 8(%rsp)	#, %sfp
	leaq	544(%rsp), %rsi	#, tmp1075
	leaq	592(%rsp), %rdi	#, tmp1076
#APP
# 298 "field_5x52_asm_impl.h" 1
	movq 0(%rsi),%r10
movq 8(%rsi),%r11
movq 16(%rsi),%r12
movq 24(%rsi),%r13
movq 32(%rsi),%r14
movq $0xfffffffffffff,%r15
leaq (%r10,%r10,1),%rax
mulq %r13
movq %rax,%rbx
movq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r14,%rax
mulq %r14
movq %rax,%r8
movq %rdx,%r9
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
shrdq $52,%r9,%r8
movq %rbx,%rsi
andq %r15,%rsi
movq %rsi,448(%rsp)	# tmp1
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
addq %r14,%r14
movq %r10,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r11,%r11,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %r12,%rax
mulq %r12
addq %rax,%rbx
adcq %rdx,%rcx
movq %r8,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %rsi,%rax
shrq $48,%rax
movq %rax,688(%rsp)	# tmp3
movq $0xffffffffffff,%rax
andq %rax,%rsi
movq %rsi,496(%rsp)	# tmp2
movq %r10,%rax
mulq %r10
movq %rax,%r8
movq %rdx,%r9
movq %r11,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
leaq (%r12,%r12,1),%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rsi
andq %r15,%rsi
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
shlq $4,%rsi
movq 688(%rsp),%rax	# tmp3
orq %rax,%rsi
movq $0x1000003d1,%rax
mulq %rsi
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,0(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r10
movq %r10,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r12,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %r13,%rax
mulq %r13
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
xorq %rcx,%rcx
movq %r8,%rax
andq %r15,%rax
movq %rax,8(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
movq %r10,%rax
mulq %r12
addq %rax,%r8
adcq %rdx,%r9
movq 496(%rsp),%rsi	# tmp2
movq 448(%rsp),%r10	# tmp1
movq %r11,%rax
mulq %r11
addq %rax,%r8
adcq %rdx,%r9
movq %r13,%rax
mulq %r14
addq %rax,%rbx
adcq %rdx,%rcx
movq %rbx,%rax
andq %r15,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
shrdq $52,%rcx,%rbx
movq %r8,%rax
andq %r15,%rax
movq %rax,16(%rdi)
shrdq $52,%r9,%r8
xorq %r9,%r9
addq %r10,%r8
movq %rbx,%rax
movq $0x1000003d10,%rdx
mulq %rdx
addq %rax,%r8
adcq %rdx,%r9
movq %r8,%rax
andq %r15,%rax
movq %rax,24(%rdi)
shrdq $52,%r9,%r8
addq %rsi,%r8
movq %r8,32(%rdi)

# 0 "" 2
#NO_APP
	movq	%rdi, %rsi	# tmp1076, tmp1078
	leaq	544(%rsp), %rdx	#, tmp1077
	leaq	688(%rsp), %rdi	#, tmp1079
	call	secp256k1_fe_mul_inner	#
	movq	16(%rsp), %rbx	# %sfp, ivtmp.655
	leaq	592(%rsp), %rdx	#, tmp1080
	movq	%rbp, %rsi	# ivtmp.657,
	movq	%rbx, %rdi	# ivtmp.655,
	call	secp256k1_fe_mul_inner	#
	leaq	40(%rbp), %rsi	#, tmp563
	leaq	40(%rbx), %rdi	#, tmp564
	leaq	688(%rsp), %rdx	#, tmp1082
	call	secp256k1_fe_mul_inner	#
	cmpq	$0, 8(%rsp)	#, %sfp
	movl	120(%rbp), %eax	# MEM[base: _114, offset: 120B], MEM[base: _114, offset: 120B]
	movl	%eax, 80(%rbx)	# MEM[base: _114, offset: 120B], MEM[base: _115, offset: 80B]
	jne	.L368	#,
	movq	56(%rsp), %rsi	# %sfp,
	leaq	2832(%rsp), %rdi	#, tmp1085
	movl	$16, %edx	#,
	call	secp256k1_ecmult_wnaf.constprop.15	#
	movl	48(%rsp), %r12d	# %sfp, bits_na
	movl	%eax, %r14d	#, bits_ng
	movq	40(%rsp), %rcx	# %sfp, r
	cmpl	%r14d, %r12d	# bits_ng, bits_na
	movl	%r12d, %eax	# bits_na, bits_na
	movl	$1, 120(%rcx)	#, r_6(D)->infinity
	cmovl	%r14d, %eax	# bits,, bits_ng, bits
	movq	$0, (%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D)].n
	movq	$0, 8(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D)].n
	subl	$1, %eax	#, i
	movq	$0, 16(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D)].n
	movq	$0, 24(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D)].n
	movq	$0, 32(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D)].n
	movq	$0, 40(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	$0, 48(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	$0, 56(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	$0, 64(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	$0, 72(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	$0, 80(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 88(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 96(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 104(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 112(%rcx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	js	.L364	#,
	movslq	%eax, %r15	# i, ivtmp.642
	movl	%eax, %eax	# i, i
	movq	%rcx, %rbx	# r, r
	movq	%r15, %rbp	# ivtmp.642, _647
	subq	%rax, %rbp	# i, _647
	jmp	.L370	#
	.p2align 4,,10
	.p2align 3
.L420:
	movl	2832(%rsp,%r15,4), %eax	# MEM[symbol: wnaf_ng, index: ivtmp.642_662, step: 4, offset: 0B], n
	cmpl	$0, %eax	#, n
	je	.L381	#,
	jle	.L379	#,
	movq	32(%rsp), %rdi	# %sfp, ctx
	subl	$1, %eax	#, tmp638
	movabsq	$4503599627370495, %rdx	#, tmp642
	sarl	%eax	# _27
	cltq
	salq	$6, %rax	#, tmp640
	addq	(%rdi), %rax	# ctx_24(D)->pre_g, tmp641
	movq	(%rax), %rsi	# MEM[(const struct secp256k1_fe_storage *)_25][_27].x.n, _149
	movq	8(%rax), %r8	# MEM[(const struct secp256k1_fe_storage *)_25][_27].x.n, _152
	movq	16(%rax), %rdi	# MEM[(const struct secp256k1_fe_storage *)_25][_27].x.n, _157
	movq	%rsi, %rcx	# _149, tmp643
	shrq	$52, %rsi	#, tmp651
	andq	%rdx, %rcx	# tmp642, tmp643
	movq	%rcx, 784(%rsp)	# tmp643, MEM[(struct secp256k1_fe *)&tmpa].n
	movq	%r8, %rcx	# _152, tmp648
	shrq	$40, %r8	#, tmp660
	salq	$12, %rcx	#, tmp648
	andq	%rdx, %rcx	# tmp642, tmp649
	orq	%rsi, %rcx	# tmp651, tmp652
	movq	%rdi, %rsi	# _157, tmp657
	shrq	$28, %rdi	#, tmp669
	salq	$24, %rsi	#, tmp657
	movq	%rcx, 792(%rsp)	# tmp652, MEM[(struct secp256k1_fe *)&tmpa].n
	andq	%rdx, %rsi	# tmp642, tmp658
	orq	%r8, %rsi	# tmp660, tmp661
	movq	%rsi, 800(%rsp)	# tmp661, MEM[(struct secp256k1_fe *)&tmpa].n
	movq	24(%rax), %rsi	# MEM[(const struct secp256k1_fe_storage *)_25][_27].x.n, _162
	movq	%rsi, %rcx	# _162, tmp666
	shrq	$16, %rsi	#, tmp671
	salq	$36, %rcx	#, tmp666
	movq	%rsi, 816(%rsp)	# tmp671, MEM[(struct secp256k1_fe *)&tmpa].n
	andq	%rdx, %rcx	# tmp642, tmp667
	orq	%rdi, %rcx	# tmp669, tmp670
	movq	40(%rax), %rdi	# MEM[(const struct secp256k1_fe_storage *)_25][_27].y.n, _134
	movq	%rcx, 808(%rsp)	# tmp670, MEM[(struct secp256k1_fe *)&tmpa].n
	movq	32(%rax), %rcx	# MEM[(const struct secp256k1_fe_storage *)_25][_27].y.n, _131
	movq	%rcx, %rsi	# _131, tmp677
	shrq	$52, %rcx	#, tmp685
	andq	%rdx, %rsi	# tmp642, tmp677
	movq	%rsi, 824(%rsp)	# tmp677, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	%rdi, %rsi	# _134, tmp682
	shrq	$40, %rdi	#, tmp694
	salq	$12, %rsi	#, tmp682
	andq	%rdx, %rsi	# tmp642, tmp683
	orq	%rcx, %rsi	# tmp685, tmp686
	movq	%rsi, 832(%rsp)	# tmp686, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	48(%rax), %rsi	# MEM[(const struct secp256k1_fe_storage *)_25][_27].y.n, _139
	movq	%rsi, %rcx	# _139, tmp691
	shrq	$28, %rsi	#, tmp703
	salq	$24, %rcx	#, tmp691
	andq	%rdx, %rcx	# tmp642, tmp692
	orq	%rdi, %rcx	# tmp694, tmp695
	movq	%rcx, 840(%rsp)	# tmp695, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	56(%rax), %rcx	# MEM[(const struct secp256k1_fe_storage *)_25][_27].y.n, _144
	movl	$0, 864(%rsp)	#, tmpa.infinity
	movq	%rcx, %rax	# _144, tmp700
	shrq	$16, %rcx	#, tmp705
	salq	$36, %rax	#, tmp700
	movq	%rcx, 856(%rsp)	# tmp705, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	andq	%rax, %rdx	# tmp700, tmp701
	orq	%rsi, %rdx	# tmp703, tmp704
	movq	%rdx, 848(%rsp)	# tmp704, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
.L380:
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity,
	movl	$0, 120(%rbx)	#, r_6(D)->infinity
	testl	%eax, %eax	#
	je	.L382	#,
	leaq	64(%rsp), %rsi	#,
	leaq	592(%rsp), %rdi	#, tmp1130
	call	secp256k1_fe_sqr_inner	#
	leaq	64(%rsp), %rdx	#,
	leaq	592(%rsp), %rsi	#, tmp1131
	leaq	688(%rsp), %rdi	#, tmp1132
	call	secp256k1_fe_mul_inner	#
	leaq	592(%rsp), %rdx	#, tmp1133
	leaq	784(%rsp), %rsi	#, tmp1134
	movq	%rbx, %rdi	# r,
	call	secp256k1_fe_mul_inner	#
	leaq	824(%rsp), %rsi	#, tmp805
	leaq	40(%rbx), %rdi	#, tmp806
	leaq	688(%rsp), %rdx	#, tmp1136
	call	secp256k1_fe_mul_inner	#
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity, pretmp_671
	movq	$1, 80(%rbx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 112(%rbx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 104(%rbx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 96(%rbx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
	movq	$0, 88(%rbx)	#, MEM[(struct secp256k1_fe *)r_6(D) + 80B].n
.L377:
	cmpq	%r15, %rbp	# ivtmp.642, _647
	je	.L418	#,
	.p2align 4,,10
	.p2align 3
.L390:
	testl	%eax, %eax	# pretmp_671
	je	.L419	#,
.L372:
	subq	$1, %r15	#, ivtmp.642
.L370:
	cmpl	%r15d, %r12d	# ivtmp.642, bits_na
	movl	%r15d, %r13d	# ivtmp.642, i
	jle	.L373	#,
	movl	1808(%rsp,%r15,4), %eax	# MEM[symbol: wnaf_na, index: ivtmp.642_662, step: 4, offset: 0B], n
	cmpl	$0, %eax	#, n
	je	.L373	#,
	jle	.L374	#,
	subl	$1, %eax	#, tmp570
	sarl	%eax	# tmp571
	cltq
	leaq	(%rax,%rax,4), %rdx	#, tmp575
	leaq	(%rax,%rdx,2), %rax	#, tmp577
	salq	$3, %rax	#, tmp578
	movq	1104(%rsp,%rax), %rdx	# pre_a, tmp581
	movq	%rdx, 784(%rsp)	# tmp581, tmpa
	movq	1112(%rsp,%rax), %rdx	# pre_a, tmp582
	movq	%rdx, 792(%rsp)	# tmp582, tmpa
	movq	1120(%rsp,%rax), %rdx	# pre_a, tmp583
	movq	%rdx, 800(%rsp)	# tmp583, tmpa
	movq	1128(%rsp,%rax), %rdx	# pre_a, tmp584
	movq	%rdx, 808(%rsp)	# tmp584, tmpa
	movq	1136(%rsp,%rax), %rdx	# pre_a, tmp585
	movq	%rdx, 816(%rsp)	# tmp585, tmpa
	movq	1144(%rsp,%rax), %rdx	# pre_a, tmp586
	movq	%rdx, 824(%rsp)	# tmp586, tmpa
	movq	1152(%rsp,%rax), %rdx	# pre_a, tmp587
	movq	%rdx, 832(%rsp)	# tmp587, tmpa
	movq	1160(%rsp,%rax), %rdx	# pre_a, tmp588
	movq	%rdx, 840(%rsp)	# tmp588, tmpa
	movq	1168(%rsp,%rax), %rdx	# pre_a, tmp589
	movq	%rdx, 848(%rsp)	# tmp589, tmpa
	movq	1176(%rsp,%rax), %rdx	# pre_a, tmp590
	movq	1184(%rsp,%rax), %rax	# pre_a, tmp591
	movq	%rdx, 856(%rsp)	# tmp590, tmpa
	movq	%rax, 864(%rsp)	# tmp591, tmpa
.L375:
	leaq	784(%rsp), %rdx	#, tmp1108
	xorl	%ecx, %ecx	#
	movq	%rbx, %rsi	# r,
	movq	%rbx, %rdi	# r,
	call	secp256k1_gej_add_ge_var	#
.L373:
	cmpl	%r13d, %r14d	# i, bits_ng
	jg	.L420	#,
.L381:
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity, pretmp_671
.L422:
	cmpq	%r15, %rbp	# ivtmp.642, _647
	jne	.L390	#,
.L418:
	testl	%eax, %eax	# pretmp_671
	je	.L421	#,
.L364:
	addq	$3864, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L419:
	.cfi_restore_state
	movq	%rbx, %rsi	# r,
	movq	%rbx, %rdi	# r,
	call	secp256k1_gej_double_var.part.3.constprop.22	#
	jmp	.L372	#
	.p2align 4,,10
	.p2align 3
.L379:
	movq	32(%rsp), %rcx	# %sfp, ctx
	notl	%eax	# tmp706
	movabsq	$4503599627370495, %rdx	#, tmp710
	sarl	%eax	# _32
	cltq
	salq	$6, %rax	#, tmp708
	addq	(%rcx), %rax	# ctx_24(D)->pre_g, tmp709
	movq	(%rax), %rsi	# MEM[(const struct secp256k1_fe_storage *)_30][_32].x.n, _196
	movq	8(%rax), %r8	# MEM[(const struct secp256k1_fe_storage *)_30][_32].x.n, _199
	movq	16(%rax), %rdi	# MEM[(const struct secp256k1_fe_storage *)_30][_32].x.n, _204
	movq	%rsi, %rcx	# _196, tmp711
	shrq	$52, %rsi	#, tmp719
	andq	%rdx, %rcx	# tmp710, tmp711
	movq	%rcx, 784(%rsp)	# tmp711, MEM[(struct secp256k1_fe *)&tmpa].n
	movq	%r8, %rcx	# _199, tmp716
	shrq	$40, %r8	#, tmp728
	salq	$12, %rcx	#, tmp716
	andq	%rdx, %rcx	# tmp710, tmp717
	orq	%rsi, %rcx	# tmp719, tmp720
	movq	%rdi, %rsi	# _204, tmp725
	shrq	$28, %rdi	#, tmp737
	salq	$24, %rsi	#, tmp725
	movq	%rcx, 792(%rsp)	# tmp720, MEM[(struct secp256k1_fe *)&tmpa].n
	andq	%rdx, %rsi	# tmp710, tmp726
	orq	%r8, %rsi	# tmp728, tmp729
	movq	%rsi, 800(%rsp)	# tmp729, MEM[(struct secp256k1_fe *)&tmpa].n
	movq	24(%rax), %rsi	# MEM[(const struct secp256k1_fe_storage *)_30][_32].x.n, _209
	movq	%rsi, %rcx	# _209, tmp734
	shrq	$16, %rsi	#, tmp739
	salq	$36, %rcx	#, tmp734
	movq	%rsi, 816(%rsp)	# tmp739, MEM[(struct secp256k1_fe *)&tmpa].n
	andq	%rdx, %rcx	# tmp710, tmp735
	orq	%rdi, %rcx	# tmp737, tmp738
	movq	40(%rax), %rdi	# MEM[(const struct secp256k1_fe_storage *)_30][_32].y.n, _181
	movq	%rcx, 808(%rsp)	# tmp738, MEM[(struct secp256k1_fe *)&tmpa].n
	movq	32(%rax), %rcx	# MEM[(const struct secp256k1_fe_storage *)_30][_32].y.n, _178
	movq	%rcx, %rsi	# _178, tmp745
	shrq	$52, %rcx	#, tmp753
	andq	%rdx, %rsi	# tmp710, tmp745
	movq	%rsi, 824(%rsp)	# tmp745, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	%rdi, %rsi	# _181, tmp750
	shrq	$40, %rdi	#, tmp762
	salq	$12, %rsi	#, tmp750
	andq	%rdx, %rsi	# tmp710, tmp751
	orq	%rcx, %rsi	# tmp753, tmp754
	movq	%rsi, 832(%rsp)	# tmp754, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	48(%rax), %rsi	# MEM[(const struct secp256k1_fe_storage *)_30][_32].y.n, _186
	movq	%rsi, %rcx	# _186, tmp759
	shrq	$28, %rsi	#, tmp771
	salq	$24, %rcx	#, tmp759
	andq	%rdx, %rcx	# tmp710, tmp760
	orq	%rdi, %rcx	# tmp762, tmp763
	leaq	824(%rsp), %rdi	#, tmp775
	movq	%rcx, 840(%rsp)	# tmp763, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	56(%rax), %rcx	# MEM[(const struct secp256k1_fe_storage *)_30][_32].y.n, _191
	movl	$0, 864(%rsp)	#, tmpa.infinity
	movq	%rcx, %rax	# _191, tmp768
	shrq	$16, %rcx	#, tmp773
	salq	$36, %rax	#, tmp768
	movq	%rcx, 856(%rsp)	# tmp773, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	andq	%rax, %rdx	# tmp768, tmp769
	orq	%rsi, %rdx	# tmp771, tmp772
	movq	%rdx, 848(%rsp)	# tmp772, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	call	secp256k1_fe_normalize_weak	#
	movabsq	$18014381329608892, %rax	#, tmp779
	subq	824(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp778
	movq	%rax, 824(%rsp)	# tmp778, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movabsq	$18014398509481980, %rax	#, tmp783
	movq	%rax, %rdx	# tmp783, tmp782
	subq	832(%rsp), %rdx	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp782
	movq	%rdx, 832(%rsp)	# tmp782, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	%rax, %rdx	# tmp783, tmp786
	subq	848(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp790
	subq	840(%rsp), %rdx	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp786
	movq	%rax, 848(%rsp)	# tmp790, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movabsq	$1125899906842620, %rax	#, tmp795
	subq	856(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp794
	movq	%rdx, 840(%rsp)	# tmp786, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movl	864(%rsp), %edx	# tmpa.infinity,
	testl	%edx, %edx	#
	movq	%rax, 856(%rsp)	# tmp794, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	je	.L380	#,
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity, pretmp_671
	jmp	.L422	#
	.p2align 4,,10
	.p2align 3
.L382:
	leaq	80(%rbx), %rax	#, _222
	leaq	64(%rsp), %rdx	#,
	leaq	112(%rsp), %rdi	#, tmp1138
	movabsq	$4294968273, %r13	#, tmp819
	movq	%rax, %rsi	# _222,
	movq	%rax, 56(%rsp)	# _222, %sfp
	call	secp256k1_fe_mul_inner	#
	leaq	112(%rsp), %rsi	#, tmp1139
	leaq	160(%rsp), %rdi	#, tmp1140
	call	secp256k1_fe_sqr_inner	#
	movq	32(%rbx), %rdx	# MEM[(const struct secp256k1_gej *)r_6(D)].x, MEM[(const struct secp256k1_gej *)r_6(D)].x
	movabsq	$4503599627370495, %rax	#, tmp823
	movabsq	$281474976710655, %rcx	#, tmp816
	movq	%rcx, 16(%rsp)	# tmp816, %sfp
	movq	%rax, 8(%rsp)	# tmp823, %sfp
	movq	%rdx, %rsi	# MEM[(const struct secp256k1_gej *)r_6(D)].x, t4
	shrq	$48, %rdx	#, x
	imulq	%r13, %rdx	# tmp819, tmp818
	andq	%rcx, %rsi	# tmp816, t4
	addq	(%rbx), %rdx	# MEM[(const struct secp256k1_gej *)r_6(D)].x, t0
	movq	%rdx, %r9	# t0, tmp820
	andq	%rax, %rdx	# tmp823, tmp824
	shrq	$52, %r9	#, tmp820
	addq	8(%rbx), %r9	# MEM[(const struct secp256k1_gej *)r_6(D)].x, t1
	movq	%rdx, 208(%rsp)	# tmp824, u1.n
	movq	%r9, %r8	# t1, tmp821
	andq	%rax, %r9	# tmp823, tmp826
	shrq	$52, %r8	#, tmp821
	addq	16(%rbx), %r8	# MEM[(const struct secp256k1_gej *)r_6(D)].x, t2
	movq	%r9, 216(%rsp)	# tmp826, u1.n
	movq	%r8, %rdi	# t2, tmp822
	andq	%rax, %r8	# tmp823, tmp828
	shrq	$52, %rdi	#, tmp822
	addq	24(%rbx), %rdi	# MEM[(const struct secp256k1_gej *)r_6(D)].x, t3
	movq	%r8, 224(%rsp)	# tmp828, u1.n
	movq	%rdi, %rdx	# t3, tmp830
	shrq	$52, %rdi	#, t3
	andq	%rax, %rdx	# tmp823, tmp830
	movq	%rdx, 232(%rsp)	# tmp830, u1.n
	movq	%rdi, %rdx	# t3, tmp831
	leaq	256(%rsp), %rdi	#, tmp1149
	addq	%rsi, %rdx	# t4, tmp832
	leaq	784(%rsp), %rsi	#, tmp1148
	movq	%rdx, 240(%rsp)	# tmp832, u1.n
	leaq	160(%rsp), %rdx	#, tmp1147
	call	secp256k1_fe_mul_inner	#
	movq	72(%rbx), %rdx	# MEM[(const struct secp256k1_gej *)r_6(D)].y, MEM[(const struct secp256k1_gej *)r_6(D)].y
	movq	16(%rsp), %rcx	# %sfp, tmp816
	movq	8(%rsp), %rax	# %sfp, tmp823
	andq	%rdx, %rcx	# MEM[(const struct secp256k1_gej *)r_6(D)].y, t4
	shrq	$48, %rdx	#, x
	imulq	%r13, %rdx	# tmp819, tmp843
	addq	40(%rbx), %rdx	# MEM[(const struct secp256k1_gej *)r_6(D)].y, t0
	movq	%rdx, %rdi	# t0, tmp845
	andq	%rax, %rdx	# tmp823, t0
	shrq	$52, %rdi	#, tmp845
	addq	48(%rbx), %rdi	# MEM[(const struct secp256k1_gej *)r_6(D)].y, t1
	movq	%rdx, 304(%rsp)	# tmp849, s1.n
	movq	%rdi, %rsi	# t1, tmp846
	andq	%rax, %rdi	# tmp823, tmp851
	shrq	$52, %rsi	#, tmp846
	addq	56(%rbx), %rsi	# MEM[(const struct secp256k1_gej *)r_6(D)].y, t2
	movq	%rdi, 312(%rsp)	# tmp851, s1.n
	leaq	352(%rsp), %rdi	#, tmp1158
	movq	%rsi, %r9	# t2, tmp847
	andq	%rax, %rsi	# tmp823, tmp853
	shrq	$52, %r9	#, tmp847
	addq	64(%rbx), %r9	# MEM[(const struct secp256k1_gej *)r_6(D)].y, t3
	movq	%rsi, 320(%rsp)	# tmp853, s1.n
	leaq	824(%rsp), %rsi	#, tmp860
	movq	%r9, %rdx	# t3, tmp855
	andq	%rax, %rdx	# tmp823, tmp855
	movq	%rdx, 328(%rsp)	# tmp855, s1.n
	movq	%r9, %rdx	# t3, t3
	shrq	$52, %rdx	#, t3
	addq	%rcx, %rdx	# t4, tmp857
	movq	%rdx, 336(%rsp)	# tmp857, s1.n
	leaq	160(%rsp), %rdx	#, tmp1157
	call	secp256k1_fe_mul_inner	#
	leaq	352(%rsp), %rsi	#, tmp1160
	leaq	112(%rsp), %rdx	#, tmp1159
	movq	%rsi, %rdi	# tmp1160, tmp1161
	call	secp256k1_fe_mul_inner	#
	movabsq	$18014381329608892, %r11	#, tmp866
	movabsq	$18014398509481980, %rdx	#, tmp869
	movabsq	$1125899906842620, %rcx	#, tmp878
	movq	%r11, %r10	# tmp866, tmp865
	addq	352(%rsp), %r11	# s2.n, tmp880
	movq	%rcx, %rsi	# tmp878, tmp877
	subq	304(%rsp), %r11	# s1.n, tmp880
	addq	288(%rsp), %rsi	# u2.n, tmp877
	movq	%rdx, %r9	# tmp869, tmp868
	subq	240(%rsp), %rsi	# u1.n, _244
	addq	256(%rsp), %r10	# u2.n, tmp865
	movq	%rdx, %r8	# tmp869, tmp871
	addq	264(%rsp), %r9	# u2.n, tmp868
	addq	272(%rsp), %r8	# u2.n, tmp871
	movq	%rdx, %rdi	# tmp869, tmp874
	addq	384(%rsp), %rcx	# s2.n, tmp892
	addq	280(%rsp), %rdi	# u2.n, tmp874
	movq	%r11, 16(%rsp)	# _256, %sfp
	movq	%r11, 448(%rsp)	# _256, i.n
	movq	%rdx, %r11	# tmp869, tmp883
	addq	360(%rsp), %r11	# s2.n, tmp883
	subq	208(%rsp), %r10	# u1.n, _236
	subq	312(%rsp), %r11	# s1.n, tmp883
	subq	216(%rsp), %r9	# u1.n, _238
	subq	224(%rsp), %r8	# u1.n, _240
	subq	232(%rsp), %rdi	# u1.n, _242
	subq	336(%rsp), %rcx	# s1.n, _264
	movq	%rsi, 432(%rsp)	# _244, h.n
	movq	%r10, 400(%rsp)	# _236, h.n
	movq	%r11, 24(%rsp)	# _258, %sfp
	movq	%r11, 456(%rsp)	# _258, i.n
	movq	%rdx, %r11	# tmp869, tmp886
	addq	368(%rsp), %r11	# s2.n, tmp886
	addq	376(%rsp), %rdx	# s2.n, tmp889
	subq	320(%rsp), %r11	# s1.n, tmp886
	subq	328(%rsp), %rdx	# s1.n, _262
	movq	%r9, 408(%rsp)	# _238, h.n
	movq	%r8, 416(%rsp)	# _240, h.n
	movq	%rdi, 424(%rsp)	# _242, h.n
	movq	%r11, 48(%rsp)	# _260, %sfp
	movq	%r11, 464(%rsp)	# _260, i.n
	movq	%rsi, %r11	# _244, x
	shrq	$48, %r11	#, x
	movq	%rdx, 472(%rsp)	# _262, i.n
	movq	%rcx, 480(%rsp)	# _264, i.n
	imulq	%r11, %r13	# x, tmp896
	movq	8(%rsp), %rax	# %sfp, tmp823
	addq	%r10, %r13	# _236, t0
	andq	%r13, %rax	# t0, z0
	je	.L391	#,
	movabsq	$4503595332402223, %r10	#, tmp902
	cmpq	%r10, %rax	# tmp902, z0
	je	.L391	#,
.L384:
	leaq	448(%rsp), %rsi	#, tmp1190
	leaq	496(%rsp), %rdi	#, tmp1191
	call	secp256k1_fe_sqr_inner	#
	leaq	400(%rsp), %rsi	#, tmp1192
	leaq	544(%rsp), %rdi	#, tmp1193
	call	secp256k1_fe_sqr_inner	#
	leaq	544(%rsp), %rdx	#, tmp1194
	leaq	400(%rsp), %rsi	#, tmp1195
	leaq	592(%rsp), %rdi	#, tmp1196
	call	secp256k1_fe_mul_inner	#
	movq	56(%rsp), %rdi	# %sfp, _222
	leaq	400(%rsp), %rdx	#, tmp1197
	movq	%rdi, %rsi	# _222,
	call	secp256k1_fe_mul_inner	#
	leaq	544(%rsp), %rdx	#, tmp1198
	leaq	208(%rsp), %rsi	#, tmp1199
	leaq	688(%rsp), %rdi	#, tmp1200
	call	secp256k1_fe_mul_inner	#
	movq	712(%rsp), %rax	# t, tmp1201
	movq	688(%rsp), %r8	# t, t
	movabsq	$36028762659217784, %rdx	#, tmp976
	addq	496(%rsp), %rdx	# i2.n, tmp975
	movq	696(%rsp), %rsi	# t, t
	subq	592(%rsp), %rdx	# h3.n, tmp978
	movq	704(%rsp), %r13	# t, t
	leaq	(%rax,%rax), %r10	#, _276
	movq	720(%rsp), %rax	# t, tmp1202
	leaq	(%rsi,%rsi), %rcx	#, _272
	leaq	(%r13,%r13), %r11	#, _274
	leaq	(%rax,%rax), %r9	#, _278
	leaq	(%r8,%r8), %rax	#, tmp979
	subq	%rax, %rdx	# tmp979, _295
	movabsq	$36028797018963960, %rax	#, tmp982
	movq	%rax, %rdi	# tmp982, tmp981
	addq	504(%rsp), %rdi	# i2.n, tmp981
	movq	%rdx, (%rbx)	# _295, MEM[(struct secp256k1_fe *)r_6(D)].n
	subq	600(%rsp), %rdi	# h3.n, tmp984
	subq	%rcx, %rdi	# _272, _297
	movq	%rax, %rcx	# tmp982, tmp985
	addq	520(%rsp), %rax	# i2.n, tmp989
	subq	616(%rsp), %rax	# h3.n, tmp992
	addq	512(%rsp), %rcx	# i2.n, tmp985
	subq	608(%rsp), %rcx	# h3.n, tmp988
	movq	%rdi, 8(%rbx)	# _297, MEM[(struct secp256k1_fe *)r_6(D)].n
	subq	%r10, %rax	# _276, _301
	movabsq	$2251799813685240, %r10	#, tmp994
	addq	528(%rsp), %r10	# i2.n, tmp993
	subq	624(%rsp), %r10	# h3.n, tmp996
	movq	%rax, 24(%rbx)	# _301, MEM[(struct secp256k1_fe *)r_6(D)].n
	subq	%r11, %rcx	# _274, _299
	movq	%rcx, 16(%rbx)	# _299, MEM[(struct secp256k1_fe *)r_6(D)].n
	subq	%r9, %r10	# _278, tmp996
	movq	%r10, %r9	# tmp996, _303
	movq	%r10, 32(%rbx)	# _303, MEM[(struct secp256k1_fe *)r_6(D)].n
	movabsq	$54043143988826676, %r10	#, tmp998
	addq	%r10, %r8	# tmp998, tmp997
	subq	%rdx, %r8	# _295, tmp1000
	movabsq	$54043195528445940, %rdx	#, tmp1002
	addq	%rdx, %rsi	# tmp1002, tmp1001
	addq	%rdx, %r13	# tmp1002, tmp1005
	addq	712(%rsp), %rdx	# t, tmp1009
	subq	%rdi, %rsi	# _297, tmp1004
	leaq	40(%rbx), %rdi	#, _319
	subq	%rcx, %r13	# _299, tmp1008
	movq	%r8, 40(%rbx)	# tmp1000, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	%rsi, 48(%rbx)	# tmp1004, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	%r13, 56(%rbx)	# tmp1008, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movq	%rdi, %rsi	# _319,
	subq	%rax, %rdx	# _301, tmp1012
	movabsq	$3377699720527860, %rax	#, tmp1014
	addq	720(%rsp), %rax	# t, tmp1013
	movq	%rdx, 64(%rbx)	# tmp1012, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	leaq	448(%rsp), %rdx	#, tmp1206
	subq	%r9, %rax	# _303, tmp1016
	movq	%rax, 72(%rbx)	# tmp1016, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	call	secp256k1_fe_mul_inner	#
	leaq	592(%rsp), %rsi	#, tmp1208
	leaq	304(%rsp), %rdx	#, tmp1207
	movq	%rsi, %rdi	# tmp1208, tmp1209
	call	secp256k1_fe_mul_inner	#
	movabsq	$18014398509481980, %rax	#, tmp1021
	movabsq	$1125899906842620, %rdx	#, tmp1024
	movabsq	$18014381329608892, %rcx	#, tmp1026
	movq	%rax, %rdi	# tmp1021, _323
	movq	%rax, %rsi	# tmp1021, _325
	subq	600(%rsp), %rdi	# h3.n, _323
	subq	616(%rsp), %rax	# h3.n, _327
	subq	608(%rsp), %rsi	# h3.n, _325
	subq	624(%rsp), %rdx	# h3.n, _329
	subq	592(%rsp), %rcx	# h3.n, tmp1025
	addq	%rax, 64(%rbx)	# _327, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	addq	%rcx, 40(%rbx)	# tmp1025, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity, pretmp_671
	addq	%rdi, 48(%rbx)	# _323, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	addq	%rsi, 56(%rbx)	# _325, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	addq	%rdx, 72(%rbx)	# _329, MEM[(struct secp256k1_fe *)r_6(D) + 40B].n
	jmp	.L377	#
	.p2align 4,,10
	.p2align 3
.L421:
	movq	40(%rsp), %rdi	# %sfp, r
	leaq	64(%rsp), %rdx	#,
	addq	$80, %rdi	#, r
	movq	%rdi, %rsi	# _37,
	call	secp256k1_fe_mul_inner	#
	jmp	.L364	#
	.p2align 4,,10
	.p2align 3
.L391:
	movabsq	$281474976710655, %r10	#, tmp904
	movabsq	$4294968272, %r11	#, tmp914
	andq	%r10, %rsi	# tmp904, t4
	movq	%r13, %r10	# t0, tmp905
	xorq	%r11, %rax	# tmp914, z1
	shrq	$52, %r10	#, tmp905
	movabsq	$4222124650659840, %r11	#, tmp917
	addq	%r10, %r9	# tmp905, t1
	movq	%r9, %r10	# t1, tmp906
	orq	%r9, %r13	# t1, tmp909
	andq	%r9, %rax	# t1, tmp915
	shrq	$52, %r10	#, tmp906
	addq	%r10, %r8	# tmp906, t2
	movq	%r8, %r10	# t2, tmp907
	orq	%r8, %r13	# t2, tmp910
	andq	%r8, %rax	# t2, _9
	shrq	$52, %r10	#, tmp907
	addq	%r10, %rdi	# tmp907, t3
	movq	%rdi, %r10	# t3, tmp908
	orq	%rdi, %r13	# t3, tmp911
	andq	%rax, %rdi	# _9, z1
	shrq	$52, %r10	#, tmp908
	addq	%r10, %rsi	# tmp908, t4
	movabsq	$4503599627370495, %r10	#, tmp912
	xorq	%rsi, %r11	# t4, tmp916
	andq	%r10, %r13	# tmp912, z0
	andq	%r11, %rdi	# tmp916, z1
	cmpq	%r10, %rdi	# tmp912, z1
	je	.L392	#,
	orq	%r13, %rsi	# z0, t4
	jne	.L384	#,
.L392:
	movq	%rcx, %rax	# _264, x
	movabsq	$4294968273, %rsi	#, tmp927
	shrq	$48, %rax	#, x
	imulq	%rsi, %rax	# tmp927, tmp926
	movabsq	$4503599627370495, %rsi	#, tmp928
	addq	16(%rsp), %rax	# %sfp, t0
	andq	%rax, %rsi	# t0, z0
	je	.L393	#,
	movabsq	$4503595332402223, %rdi	#, tmp932
	cmpq	%rdi, %rsi	# tmp932, z0
	je	.L393	#,
.L387:
	movl	$1, 120(%rbx)	#, r_6(D)->infinity
	movl	$1, %eax	#, pretmp_671
	jmp	.L377	#
	.p2align 4,,10
	.p2align 3
.L393:
	movq	%rax, %r11	# t0, tmp935
	movabsq	$281474976710655, %rdi	#, tmp934
	movabsq	$4294968272, %r9	#, tmp944
	shrq	$52, %r11	#, tmp935
	addq	24(%rsp), %r11	# %sfp, t1
	andq	%rdi, %rcx	# tmp934, t4
	xorq	%r9, %rsi	# tmp944, z1
	movq	%r11, %rdi	# t1, tmp936
	orq	%r11, %rax	# t1, tmp939
	andq	%rsi, %r11	# z1, tmp945
	shrq	$52, %rdi	#, tmp936
	addq	48(%rsp), %rdi	# %sfp, t2
	movq	%rdi, %r8	# t2, tmp937
	orq	%rdi, %rax	# t2, tmp940
	andq	%r11, %rdi	# tmp945, _422
	shrq	$52, %r8	#, tmp937
	addq	%r8, %rdx	# tmp937, t3
	movq	%rdx, %r8	# t3, tmp938
	orq	%rdx, %rax	# t3, tmp941
	andq	%rdi, %rdx	# _422, z1
	shrq	$52, %r8	#, tmp938
	movabsq	$4222124650659840, %rdi	#, tmp947
	addq	%r8, %rcx	# tmp938, t4
	movabsq	$4503599627370495, %r8	#, tmp942
	xorq	%rcx, %rdi	# t4, tmp946
	andq	%r8, %rax	# tmp942, z0
	andq	%rdi, %rdx	# tmp946, z1
	cmpq	%r8, %rdx	# tmp942, z1
	je	.L394	#,
	orq	%rax, %rcx	# z0, t4
	jne	.L387	#,
.L394:
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity, pretmp_671
	testl	%eax, %eax	# pretmp_671
	jne	.L377	#,
	movq	%rbx, %rsi	# r,
	movq	%rbx, %rdi	# r,
	call	secp256k1_gej_double_var.part.3.constprop.22	#
	movl	120(%rbx), %eax	# MEM[(const struct secp256k1_gej *)r_6(D)].infinity, pretmp_671
	jmp	.L377	#
	.p2align 4,,10
	.p2align 3
.L374:
	notl	%eax	# tmp592
	leaq	824(%rsp), %rdi	#, tmp615
	sarl	%eax	# tmp593
	cltq
	leaq	(%rax,%rax,4), %rdx	#, tmp597
	leaq	(%rax,%rdx,2), %rax	#, tmp599
	salq	$3, %rax	#, tmp600
	movq	1104(%rsp,%rax), %rdx	# pre_a, tmp603
	movq	%rdx, 784(%rsp)	# tmp603, tmpa
	movq	1112(%rsp,%rax), %rdx	# pre_a, tmp604
	movq	%rdx, 792(%rsp)	# tmp604, tmpa
	movq	1120(%rsp,%rax), %rdx	# pre_a, tmp605
	movq	%rdx, 800(%rsp)	# tmp605, tmpa
	movq	1128(%rsp,%rax), %rdx	# pre_a, tmp606
	movq	%rdx, 808(%rsp)	# tmp606, tmpa
	movq	1136(%rsp,%rax), %rdx	# pre_a, tmp607
	movq	%rdx, 816(%rsp)	# tmp607, tmpa
	movq	1144(%rsp,%rax), %rdx	# pre_a, tmp608
	movq	%rdx, 824(%rsp)	# tmp608, tmpa
	movq	1152(%rsp,%rax), %rdx	# pre_a, tmp609
	movq	%rdx, 832(%rsp)	# tmp609, tmpa
	movq	1160(%rsp,%rax), %rdx	# pre_a, tmp610
	movq	%rdx, 840(%rsp)	# tmp610, tmpa
	movq	1168(%rsp,%rax), %rdx	# pre_a, tmp611
	movq	%rdx, 848(%rsp)	# tmp611, tmpa
	movq	1176(%rsp,%rax), %rdx	# pre_a, tmp612
	movq	1184(%rsp,%rax), %rax	# pre_a, tmp613
	movq	%rdx, 856(%rsp)	# tmp612, tmpa
	movq	%rax, 864(%rsp)	# tmp613, tmpa
	call	secp256k1_fe_normalize_weak	#
	movabsq	$18014381329608892, %rax	#, tmp619
	subq	824(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp618
	movq	%rax, 824(%rsp)	# tmp618, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movabsq	$18014398509481980, %rax	#, tmp623
	movq	%rax, %rdx	# tmp623, tmp622
	subq	832(%rsp), %rdx	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp622
	movq	%rdx, 832(%rsp)	# tmp622, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	%rax, %rdx	# tmp623, tmp626
	subq	848(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp630
	subq	840(%rsp), %rdx	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp626
	movq	%rax, 848(%rsp)	# tmp630, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movabsq	$1125899906842620, %rax	#, tmp635
	subq	856(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&tmpa + 40B].n, tmp634
	movq	%rdx, 840(%rsp)	# tmp626, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	movq	%rax, 856(%rsp)	# tmp634, MEM[(struct secp256k1_fe *)&tmpa + 40B].n
	jmp	.L375	#
	.p2align 4,,10
	.p2align 3
.L417:
	leaq	1104(%rsp), %rdi	#, tmp1051
	movq	%rbx, %rsi	# a,
	call	secp256k1_gej_double_var.part.3.constprop.22	#
	jmp	.L365	#
	.cfi_endproc
.LFE240:
	.size	secp256k1_ecmult.constprop.14, .-secp256k1_ecmult.constprop.14
	.p2align 4,,15
	.type	secp256k1_rfc6979_hmac_sha256_initialize, @function
secp256k1_rfc6979_hmac_sha256_initialize:
.LFB171:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movabsq	$72340172838076673, %rax	#, tmp124
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r14	# key, key
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	32(%rdi), %rbp	#, _5
	movq	%rdi, %rbx	# rng, rng
	movq	%rdx, %r15	# keylen, keylen
	subq	$312, %rsp	#,
	.cfi_def_cfa_offset 368
	movq	%rax, (%rdi)	# tmp124, MEM[(void *)_2]
	movq	%rax, 8(%rdi)	# tmp124, MEM[(void *)_2]
	movq	%rax, 16(%rdi)	# tmp124, MEM[(void *)_2]
	movq	%rax, 24(%rdi)	# tmp124, MEM[(void *)_2]
	movq	%rbp, %rsi	# _5,
	movq	$0, 32(%rdi)	#, MEM[(void *)_5]
	movq	$0, 40(%rdi)	#, MEM[(void *)_5]
	leaq	200(%rsp), %r12	#, tmp136
	movq	$0, 48(%rdi)	#, MEM[(void *)_5]
	movq	$0, 56(%rdi)	#, MEM[(void *)_5]
	leaq	96(%rsp), %rdi	#, tmp238
	leaq	64(%rsp), %r13	#, tmp146
	call	secp256k1_hmac_sha256_initialize.constprop.13	#
	leaq	96(%rsp), %rdi	#, tmp239
	movq	%rbx, %rsi	# rng,
	movl	$32, %edx	#,
	call	secp256k1_sha256_write	#
	leaq	96(%rsp), %rdi	#, tmp240
	movl	$1, %edx	#,
	movl	$zero.6222, %esi	#,
	call	secp256k1_sha256_write	#
	leaq	96(%rsp), %rdi	#, tmp241
	movq	%r15, %rdx	# keylen,
	movq	%r14, %rsi	# key,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	leaq	96(%rsp), %rdi	#, tmp242
	call	secp256k1_sha256_finalize	#
	leaq	32(%rsp), %rsi	#,
	movl	$32, %edx	#,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	%rbp, %rsi	# _5,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_finalize	#
	movq	32(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movq	$0, 64(%rsp)	#, MEM[(void *)&rkey + 32B]
	leaq	32(%rsp), %rsi	#,
	movdqa	.LC5(%rip), %xmm1	#, tmp151
	movq	%r12, %rdi	# tmp136,
	movq	$0, 72(%rsp)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 80(%rsp)	#, MEM[(void *)&rkey + 32B]
	movl	$64, %edx	#,
	movq	%rax, 32(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	40(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movq	$0, 88(%rsp)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 296(%rsp)	#, MEM[(struct secp256k1_sha256_t *)&hmac + 104B].bytes
	movdqa	.LC4(%rip), %xmm4	#, tmp245
	movq	%rax, 40(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	48(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movdqa	32(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey], vect__50.704
	movq	%rax, 48(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	56(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	pxor	%xmm1, %xmm0	# tmp151, vect__50.704
	movdqa	.LC3(%rip), %xmm3	#, tmp244
	movq	%rax, 56(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movaps	%xmm0, 32(%rsp)	# vect__50.704, MEM[(unsigned char[64] *)&rkey]
	movups	%xmm4, 216(%rsp)	# tmp245, MEM[(unsigned int *)&hmac + 120B]
	movups	%xmm3, 200(%rsp)	# tmp244, MEM[(unsigned int *)&hmac + 104B]
	movaps	%xmm1, 16(%rsp)	# tmp151, %sfp
	movdqa	48(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 16B], vect__50.704
	pxor	%xmm1, %xmm0	# tmp151, vect__50.704
	movaps	%xmm0, 48(%rsp)	# vect__50.704, MEM[(unsigned char[64] *)&rkey + 16B]
	movdqa	64(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 32B], vect__50.704
	pxor	%xmm1, %xmm0	# tmp151, vect__50.704
	movaps	%xmm0, 64(%rsp)	# vect__50.704, MEM[(unsigned char[64] *)&rkey + 32B]
	movdqa	%xmm1, %xmm0	# tmp151, vect__50.704
	pxor	80(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 48B], vect__50.704
	movaps	%xmm0, 80(%rsp)	# vect__50.704, MEM[(unsigned char[64] *)&rkey + 48B]
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	leaq	96(%rsp), %rdi	#, tmp256
	movl	$64, %edx	#,
	movdqa	.LC6(%rip), %xmm0	#, tmp164
	movq	$0, 192(%rsp)	#, MEM[(struct secp256k1_sha256_t *)&hmac].bytes
	movdqa	32(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey], vect__55.698
	pxor	%xmm0, %xmm2	# tmp164, vect__55.698
	movdqa	.LC4(%rip), %xmm6	#, tmp251
	movaps	%xmm2, 32(%rsp)	# vect__55.698, MEM[(unsigned char[64] *)&rkey]
	movaps	%xmm6, 112(%rsp)	# tmp251, MEM[(unsigned int *)&hmac + 16B]
	movaps	%xmm0, (%rsp)	# tmp164, %sfp
	movdqa	48(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey + 16B], vect__55.698
	pxor	%xmm0, %xmm2	# tmp164, vect__55.698
	movdqa	.LC3(%rip), %xmm5	#, tmp250
	movaps	%xmm2, 48(%rsp)	# vect__55.698, MEM[(unsigned char[64] *)&rkey + 16B]
	movaps	%xmm5, 96(%rsp)	# tmp250, MEM[(unsigned int *)&hmac]
	movdqa	64(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey + 32B], vect__55.698
	pxor	%xmm0, %xmm2	# tmp164, vect__55.698
	movaps	%xmm2, 64(%rsp)	# vect__55.698, MEM[(unsigned char[64] *)&rkey + 32B]
	movdqa	%xmm0, %xmm2	# tmp164, vect__55.698
	pxor	80(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey + 48B], vect__55.698
	movaps	%xmm2, 80(%rsp)	# vect__55.698, MEM[(unsigned char[64] *)&rkey + 48B]
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$64, %esi	#,
	call	explicit_bzero	#
	leaq	96(%rsp), %rdi	#, tmp257
	movl	$32, %edx	#,
	movq	%rbx, %rsi	# rng,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	leaq	96(%rsp), %rdi	#, tmp258
	call	secp256k1_sha256_finalize	#
	leaq	32(%rsp), %rsi	#,
	movl	$32, %edx	#,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	%rbx, %rsi	# rng,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_finalize	#
	leaq	96(%rsp), %rdi	#, tmp259
	movq	%rbp, %rsi	# _5,
	call	secp256k1_hmac_sha256_initialize.constprop.13	#
	leaq	96(%rsp), %rdi	#, tmp260
	movq	%rbx, %rsi	# rng,
	movl	$32, %edx	#,
	call	secp256k1_sha256_write	#
	leaq	96(%rsp), %rdi	#, tmp261
	movl	$1, %edx	#,
	movl	$one.6223, %esi	#,
	call	secp256k1_sha256_write	#
	leaq	96(%rsp), %rdi	#, tmp262
	movq	%r15, %rdx	# keylen,
	movq	%r14, %rsi	# key,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	leaq	96(%rsp), %rdi	#, tmp263
	call	secp256k1_sha256_finalize	#
	leaq	32(%rsp), %rsi	#,
	movl	$32, %edx	#,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	%rbp, %rsi	# _5,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_finalize	#
	movq	32(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movq	$0, 64(%rsp)	#, MEM[(void *)&rkey + 32B]
	leaq	32(%rsp), %rsi	#,
	movdqa	16(%rsp), %xmm1	# %sfp, tmp151
	movq	%r12, %rdi	# tmp136,
	movl	$64, %edx	#,
	movq	$0, 296(%rsp)	#, MEM[(struct secp256k1_sha256_t *)&hmac + 104B].bytes
	movq	%rax, 32(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	40(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movdqa	.LC3(%rip), %xmm7	#, tmp264
	movq	%rax, 40(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	48(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movdqa	.LC4(%rip), %xmm3	#, tmp265
	movq	%rax, 48(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	56(%rbx), %rax	# MEM[(void *)_5], MEM[(void *)_5]
	movups	%xmm7, 200(%rsp)	# tmp264, MEM[(unsigned int *)&hmac + 104B]
	movups	%xmm3, 216(%rsp)	# tmp265, MEM[(unsigned int *)&hmac + 120B]
	movq	%rax, 56(%rsp)	# MEM[(void *)_5], MEM[(void *)&rkey]
	movq	$0, 8(%r13)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 16(%r13)	#, MEM[(void *)&rkey + 32B]
	movq	$0, 24(%r13)	#, MEM[(void *)&rkey + 32B]
	movdqa	32(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey], vect__34.692
	pxor	%xmm1, %xmm2	# tmp151, vect__34.692
	movaps	%xmm2, 32(%rsp)	# vect__34.692, MEM[(unsigned char[64] *)&rkey]
	movdqa	48(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey + 16B], vect__34.692
	pxor	%xmm1, %xmm2	# tmp151, vect__34.692
	movaps	%xmm2, 48(%rsp)	# vect__34.692, MEM[(unsigned char[64] *)&rkey + 16B]
	movdqa	64(%rsp), %xmm2	# MEM[(unsigned char[64] *)&rkey + 32B], vect__34.692
	pxor	%xmm1, %xmm2	# tmp151, vect__34.692
	pxor	80(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 48B], vect__34.692
	movaps	%xmm2, 64(%rsp)	# vect__34.692, MEM[(unsigned char[64] *)&rkey + 32B]
	movaps	%xmm1, 80(%rsp)	# vect__34.692, MEM[(unsigned char[64] *)&rkey + 48B]
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	leaq	96(%rsp), %rdi	#, tmp274
	movl	$64, %edx	#,
	movdqa	(%rsp), %xmm0	# %sfp, tmp164
	movq	$0, 192(%rsp)	#, MEM[(struct secp256k1_sha256_t *)&hmac].bytes
	movdqa	32(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey], vect__39.686
	pxor	%xmm0, %xmm1	# tmp164, vect__39.686
	movdqa	.LC3(%rip), %xmm4	#, tmp269
	movaps	%xmm1, 32(%rsp)	# vect__39.686, MEM[(unsigned char[64] *)&rkey]
	movaps	%xmm4, 96(%rsp)	# tmp269, MEM[(unsigned int *)&hmac]
	movdqa	48(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 16B], vect__39.686
	pxor	%xmm0, %xmm1	# tmp164, vect__39.686
	movdqa	.LC4(%rip), %xmm5	#, tmp270
	movaps	%xmm1, 48(%rsp)	# vect__39.686, MEM[(unsigned char[64] *)&rkey + 16B]
	movaps	%xmm5, 112(%rsp)	# tmp270, MEM[(unsigned int *)&hmac + 16B]
	movdqa	64(%rsp), %xmm1	# MEM[(unsigned char[64] *)&rkey + 32B], vect__39.686
	pxor	%xmm0, %xmm1	# tmp164, vect__39.686
	pxor	80(%rsp), %xmm0	# MEM[(unsigned char[64] *)&rkey + 48B], vect__39.686
	movaps	%xmm1, 64(%rsp)	# vect__39.686, MEM[(unsigned char[64] *)&rkey + 32B]
	movaps	%xmm0, 80(%rsp)	# vect__39.686, MEM[(unsigned char[64] *)&rkey + 48B]
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$64, %esi	#,
	call	explicit_bzero	#
	leaq	96(%rsp), %rdi	#, tmp275
	movl	$32, %edx	#,
	movq	%rbx, %rsi	# rng,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rsi	#,
	leaq	96(%rsp), %rdi	#, tmp276
	call	secp256k1_sha256_finalize	#
	leaq	32(%rsp), %rsi	#,
	movl	$32, %edx	#,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_write	#
	leaq	32(%rsp), %rdi	#,
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	%rbx, %rsi	# rng,
	movq	%r12, %rdi	# tmp136,
	call	secp256k1_sha256_finalize	#
	movl	$0, 64(%rbx)	#, rng_1(D)->retry
	addq	$312, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE171:
	.size	secp256k1_rfc6979_hmac_sha256_initialize, .-secp256k1_rfc6979_hmac_sha256_initialize
	.p2align 4,,15
	.type	nonce_function_rfc6979, @function
nonce_function_rfc6979:
.LFB211:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%r9d, %r12d	# counter, counter
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp	# nonce32, nonce32
	subq	$192, %rsp	#,
	.cfi_def_cfa_offset 224
	movq	(%rdx), %rax	# MEM[(void *)key32_8(D)], MEM[(void *)key32_8(D)]
	testq	%r8, %r8	# data
	movq	%rax, 80(%rsp)	# MEM[(void *)key32_8(D)], MEM[(void *)&keydata]
	movq	8(%rdx), %rax	# MEM[(void *)key32_8(D)], MEM[(void *)key32_8(D)]
	movq	%rax, 88(%rsp)	# MEM[(void *)key32_8(D)], MEM[(void *)&keydata]
	movq	16(%rdx), %rax	# MEM[(void *)key32_8(D)], MEM[(void *)key32_8(D)]
	movq	%rax, 96(%rsp)	# MEM[(void *)key32_8(D)], MEM[(void *)&keydata]
	movq	24(%rdx), %rax	# MEM[(void *)key32_8(D)], MEM[(void *)key32_8(D)]
	movq	(%rsi), %rdx	# MEM[(void *)msg32_10(D)], MEM[(void *)msg32_10(D)]
	movq	%rax, 104(%rsp)	# MEM[(void *)key32_8(D)], MEM[(void *)&keydata]
	movq	%rdx, 112(%rsp)	# MEM[(void *)msg32_10(D)], MEM[(void *)&keydata + 32B]
	movq	8(%rsi), %rdx	# MEM[(void *)msg32_10(D)], MEM[(void *)msg32_10(D)]
	movq	%rdx, 120(%rsp)	# MEM[(void *)msg32_10(D)], MEM[(void *)&keydata + 32B]
	movq	16(%rsi), %rdx	# MEM[(void *)msg32_10(D)], MEM[(void *)msg32_10(D)]
	movq	%rdx, 128(%rsp)	# MEM[(void *)msg32_10(D)], MEM[(void *)&keydata + 32B]
	movq	24(%rsi), %rdx	# MEM[(void *)msg32_10(D)], MEM[(void *)msg32_10(D)]
	movq	%rdx, 136(%rsp)	# MEM[(void *)msg32_10(D)], MEM[(void *)&keydata + 32B]
	je	.L429	#,
	movq	(%r8), %rdx	# MEM[(void *)data_12(D)], MEM[(void *)data_12(D)]
	testq	%rcx, %rcx	# algo16
	movl	$96, %eax	#, prephitmp_32
	movq	%rdx, 144(%rsp)	# MEM[(void *)data_12(D)], MEM[(void *)&keydata + 64B]
	movq	8(%r8), %rdx	# MEM[(void *)data_12(D)], MEM[(void *)data_12(D)]
	movq	%rdx, 152(%rsp)	# MEM[(void *)data_12(D)], MEM[(void *)&keydata + 64B]
	movq	16(%r8), %rdx	# MEM[(void *)data_12(D)], MEM[(void *)data_12(D)]
	movq	%rdx, 160(%rsp)	# MEM[(void *)data_12(D)], MEM[(void *)&keydata + 64B]
	movq	24(%r8), %rdx	# MEM[(void *)data_12(D)], MEM[(void *)data_12(D)]
	movq	%rdx, 168(%rsp)	# MEM[(void *)data_12(D)], MEM[(void *)&keydata + 64B]
	movl	$112, %edx	#, prephitmp_3
	je	.L430	#,
.L433:
	movq	8(%rcx), %rbx	# MEM[(char * {ref-all})algo16_14(D)], MEM[(char * {ref-all})algo16_14(D)]
	movq	(%rcx), %rcx	# MEM[(char * {ref-all})algo16_14(D)], MEM[(char * {ref-all})algo16_14(D)]
	movq	%rbx, 88(%rsp,%rax)	# MEM[(char * {ref-all})algo16_14(D)], MEM[(char * {ref-all})_16]
	movq	%rcx, 80(%rsp,%rax)	# MEM[(char * {ref-all})algo16_14(D)], MEM[(char * {ref-all})_16]
.L427:
	leaq	80(%rsp), %rsi	#, tmp126
	movq	%rsp, %rdi	#,
	xorl	%ebx, %ebx	# i
	call	secp256k1_rfc6979_hmac_sha256_initialize	#
	leaq	80(%rsp), %rdi	#, tmp127
	movl	$112, %esi	#,
	call	explicit_bzero	#
	.p2align 4,,10
	.p2align 3
.L428:
	movq	%rbp, %rsi	# nonce32,
	movq	%rsp, %rdi	#,
	addl	$1, %ebx	#, i
	call	secp256k1_rfc6979_hmac_sha256_generate.constprop.12	#
	cmpl	%ebx, %r12d	# i, counter
	jnb	.L428	#,
	addq	$192, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	$1, %eax	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L429:
	.cfi_restore_state
	testq	%rcx, %rcx	# algo16
	movl	$80, %edx	#, prephitmp_3
	movl	$64, %eax	#, prephitmp_32
	jne	.L433	#,
.L430:
	movq	%rax, %rdx	# prephitmp_32, prephitmp_3
	jmp	.L427	#
	.cfi_endproc
.LFE211:
	.size	nonce_function_rfc6979, .-nonce_function_rfc6979
	.p2align 4,,15
	.type	secp256k1_ecmult_gen_blind, @function
secp256k1_ecmult_gen_blind:
.LFB179:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%eax, %eax	# tmp354
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$8, %ecx	#, tmp355
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# ctx, ctx
	subq	$424, %rsp	#,
	.cfi_def_cfa_offset 480
	testq	%rsi, %rsi	# seed32
	leaq	144(%rsp), %rbp	#, tmp550
	movq	%rbp, %rdi	# tmp550, tmp353
	rep stosq
	je	.L451	#,
	leaq	64(%rsp), %r12	#, tmp548
	movq	%rsi, %rdx	# seed32, seed32
	leaq	8(%rbx), %rsi	#, tmp532
	leaq	80(%rbx), %r13	#, pretmp_220
	movq	%r12, %rdi	# tmp548,
	call	secp256k1_scalar_get_b32	#
	movq	64(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	(%rdx), %rcx	# MEM[(void *)seed32_8(D)], MEM[(void *)seed32_8(D)]
	movq	%rax, 144(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	%rcx, 176(%rsp)	# MEM[(void *)seed32_8(D)], MEM[(void *)&keydata + 32B]
	movq	8(%rdx), %rcx	# MEM[(void *)seed32_8(D)], MEM[(void *)seed32_8(D)]
	movq	%rax, 152(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	80(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	%rax, 160(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	88(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	%rax, 168(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	%rcx, 40(%rbp)	# MEM[(void *)seed32_8(D)], MEM[(void *)&keydata + 32B]
	movq	16(%rdx), %rcx	# MEM[(void *)seed32_8(D)], MEM[(void *)seed32_8(D)]
	movq	24(%rdx), %rdx	# MEM[(void *)seed32_8(D)], MEM[(void *)seed32_8(D)]
	movq	%rcx, 48(%rbp)	# MEM[(void *)seed32_8(D)], MEM[(void *)&keydata + 32B]
	movq	%rdx, 56(%rbp)	# MEM[(void *)seed32_8(D)], MEM[(void *)&keydata + 32B]
	movl	$64, %edx	#, iftmp.2_1
.L444:
	leaq	208(%rsp), %rdi	#, tmp581
	movq	%rbp, %rsi	# tmp550,
	movl	$1321528399, %r14d	#, tmp408
	call	secp256k1_rfc6979_hmac_sha256_initialize	#
	movq	%rbp, %rdi	# tmp550,
	movl	$64, %esi	#,
	movabsq	$281474976710655, %rbp	#, tmp449
	call	explicit_bzero	#
	.p2align 4,,10
	.p2align 3
.L436:
	leaq	208(%rsp), %rdi	#, tmp582
	movq	%r12, %rsi	# tmp548,
	xorl	%r15d, %r15d	# prephitmp_105
	call	secp256k1_rfc6979_hmac_sha256_generate.constprop.12	#
	movq	$0, 128(%rsp)	#, s.n
	movq	$0, 120(%rsp)	#, s.n
	leaq	31(%r12), %r10	#, ivtmp.740
	movq	$0, 112(%rsp)	#, s.n
	movq	$0, 104(%rsp)	#, s.n
	movl	$1, %r9d	#, ivtmp.744
	movq	$0, 96(%rsp)	#, s.n
	xorl	%r8d, %r8d	# ivtmp.736
	jmp	.L438	#
	.p2align 4,,10
	.p2align 3
.L452:
	movl	%r8d, %eax	# ivtmp.736, tmp575
	imull	%r14d	# tmp408
	movl	%r8d, %eax	# ivtmp.736, tmp447
	sarl	$31, %eax	#, tmp447
	sarl	$2, %edx	#, tmp446
	subl	%eax, %edx	# tmp447, tmp443
	movslq	%edx, %rdx	# tmp443, tmp448
	movq	96(%rsp,%rdx,8), %r15	# s.n, prephitmp_105
.L438:
	movl	%r8d, %eax	# ivtmp.736, tmp571
	leal	0(,%r8,4), %ecx	#, tmp414
	movzbl	(%r10), %edi	# MEM[base: _224, offset: 0B], _200
	imull	%r14d	# tmp408
	movl	%r8d, %eax	# ivtmp.736, tmp410
	addl	$2, %r8d	#, ivtmp.736
	sarl	$31, %eax	#, tmp410
	subq	$1, %r10	#, ivtmp.740
	sarl	$2, %edx	#, tmp409
	movq	%rdi, %r11	# _200, tmp413
	shrb	$4, %dil	#, tmp429
	subl	%eax, %edx	# tmp410, limb
	movl	%ecx, %eax	# tmp414, tmp572
	andl	$15, %r11d	#, tmp413
	movslq	%edx, %rsi	# limb, limb
	movzbl	%dil, %edi	# tmp429, tmp430
	imull	%r14d	# tmp408
	movl	%ecx, %eax	# tmp414, tmp419
	sarl	$31, %eax	#, tmp419
	sarl	$4, %edx	#, tmp418
	subl	%eax, %edx	# tmp419, tmp415
	movl	%r9d, %eax	# ivtmp.744, tmp573
	imull	$52, %edx, %edx	#, tmp415, tmp420
	subl	%edx, %ecx	# tmp420, shift
	imull	%r14d	# tmp408
	salq	%cl, %r11	# shift, tmp422
	movl	%r9d, %eax	# ivtmp.744, tmp427
	leal	0(,%r9,4), %ecx	#, tmp431
	sarl	$31, %eax	#, tmp427
	orq	%r11, %r15	# tmp422, tmp423
	movq	%r15, 96(%rsp,%rsi,8)	# tmp423, s.n
	addl	$2, %r9d	#, ivtmp.744
	sarl	$2, %edx	#, tmp426
	subl	%eax, %edx	# tmp427, limb
	movl	%ecx, %eax	# tmp431, tmp574
	movslq	%edx, %rsi	# limb, limb
	imull	%r14d	# tmp408
	movl	%ecx, %eax	# tmp431, tmp436
	sarl	$31, %eax	#, tmp436
	sarl	$4, %edx	#, tmp435
	subl	%eax, %edx	# tmp436, tmp432
	imull	$52, %edx, %edx	#, tmp432, tmp437
	subl	%edx, %ecx	# tmp437, shift
	salq	%cl, %rdi	# shift, tmp439
	orq	%rdi, 96(%rsp,%rsi,8)	# tmp439, s.n
	cmpl	$64, %r8d	#, ivtmp.736
	jne	.L452	#,
	movq	128(%rsp), %rax	# s.n, _113
	cmpq	%rbp, %rax	# tmp449, _113
	je	.L439	#,
	movq	96(%rsp), %rdx	# MEM[(const uint64_t *)&s], pretmp_257
	movq	104(%rsp), %rdi	# MEM[(const uint64_t *)&s + 8B], pretmp_260
	movq	112(%rsp), %rsi	# MEM[(const uint64_t *)&s + 16B], pretmp_262
	movq	120(%rsp), %rcx	# MEM[(const uint64_t *)&s + 24B], pretmp_264
.L440:
	orq	%rdi, %rdx	# pretmp_260, tmp454
	orq	%rax, %rdx	# _113, tmp455
	movq	%rdx, %rax	# tmp455, tmp455
	xorl	%edx, %edx	# tmp457
	orq	%rsi, %rax	# pretmp_262, tmp455
	orq	%rcx, %rax	# pretmp_264, _248
	sete	%dl	#, tmp457
	movl	%edx, 28(%rsp)	# tmp457, retry
	je	.L436	#,
	leaq	96(%rsp), %rsi	#, tmp598
	leaq	288(%rsp), %rdi	#, tmp599
	call	secp256k1_fe_sqr_inner	#
	leaq	40(%rbx), %rdi	#, _123
	leaq	288(%rsp), %rdx	#, tmp600
	movq	%rdi, %rsi	# _123,
	call	secp256k1_fe_mul_inner	#
	leaq	288(%rsp), %rdx	#, tmp601
	movq	%r13, %rsi	# pretmp_220,
	movq	%r13, %rdi	# pretmp_220,
	call	secp256k1_fe_mul_inner	#
	leaq	96(%rsp), %rdx	#, tmp602
	movq	%r13, %rsi	# pretmp_220,
	movq	%r13, %rdi	# pretmp_220,
	call	secp256k1_fe_mul_inner	#
	leaq	120(%rbx), %rdi	#, _125
	leaq	96(%rsp), %rdx	#, tmp603
	movq	%rdi, %rsi	# _125,
	call	secp256k1_fe_mul_inner	#
	leaq	96(%rsp), %rdi	#, tmp604
	movl	$40, %esi	#,
	call	explicit_bzero	#
	.p2align 4,,10
	.p2align 3
.L443:
	leaq	208(%rsp), %rdi	#, tmp605
	movq	%r12, %rsi	# tmp548,
	call	secp256k1_rfc6979_hmac_sha256_generate.constprop.12	#
	leaq	28(%rsp), %rdx	#, tmp606
	leaq	32(%rsp), %rdi	#, tmp607
	movq	%r12, %rsi	# tmp548,
	call	secp256k1_scalar_set_b32	#
	movq	32(%rsp), %rax	# b.d, b.d
	orq	40(%rsp), %rax	# b.d, tmp471
	orq	48(%rsp), %rax	# b.d, tmp473
	orq	56(%rsp), %rax	# b.d, tmp473
	sete	%al	#, tmp475
	movzbl	%al, %eax	# tmp475, tmp475
	orl	%eax, 28(%rsp)	# retry.6_31, retry
	jne	.L443	#,
	movq	%r12, %rdi	# tmp548,
	movl	$32, %esi	#,
	movq	$0, 240(%rsp)	#, MEM[(void *)&rng + 32B]
	movq	$0, 248(%rsp)	#, MEM[(void *)&rng + 32B]
	movq	$0, 256(%rsp)	#, MEM[(void *)&rng + 32B]
	movq	$0, 264(%rsp)	#, MEM[(void *)&rng + 32B]
	movq	$0, 208(%rsp)	#, MEM[(void *)&rng]
	movq	$0, 216(%rsp)	#, MEM[(void *)&rng]
	movq	$0, 224(%rsp)	#, MEM[(void *)&rng]
	movq	$0, 232(%rsp)	#, MEM[(void *)&rng]
	movl	$0, 272(%rsp)	#, rng.retry
	call	explicit_bzero	#
	leaq	32(%rsp), %rdx	#, tmp610
	leaq	288(%rsp), %rsi	#, tmp611
	movq	%rbx, %rdi	# ctx,
	call	secp256k1_ecmult_gen	#
	movq	32(%rsp), %rsi	# b.d, _126
	movq	40(%rsp), %rcx	# b.d, _127
	xorl	%r8d, %r8d	# tmp486
	movq	48(%rsp), %r15	# b.d, _129
	movq	56(%rsp), %rbp	# b.d, _131
	movabsq	$-4994812053365940165, %r11	#, tmp494
	movq	%rsi, %rax	# _126, tmp483
	notq	%rsi	# _126
	orq	%rcx, %rax	# _127, tmp483
	notq	%rcx	# _127
	orq	%r15, %rax	# _129, tmp484
	notq	%r15	# _129
	orq	%rbp, %rax	# _131, tmp484
	movq	%rsi, %rax	# _126, tmp489
	movabsq	$-4624529908474429118, %rsi	#, tmp490
	setne	%r8b	#, tmp486
	xorl	%edi, %edi	#
	xorl	%edx, %edx	#
	negq	%r8	# nonzero
	addq	%rsi, %rax	# tmp490, t
	movq	%rcx, %rsi	# _127, tmp492
	adcq	%rdi, %rdx	#, t
	xorl	%r10d, %r10d	# t
	xorl	%r12d, %r12d	#
	xorl	%edi, %edi	#
	addq	%r11, %rsi	# tmp494, tmp493
	movq	%r15, %r9	# _129, tmp496
	adcq	%r12, %rdi	#,
	movq	$-2, %r11	#, tmp498
	addq	%rdx, %rsi	# t, t
	adcq	%r10, %rdi	# t, t
	xorl	%r14d, %r14d	# t
	xorl	%r12d, %r12d	#
	xorl	%r10d, %r10d	#
	addq	%r11, %r9	# tmp498, tmp497
	adcq	%r12, %r10	#,
	addq	%rdi, %r9	# t, t
	leaq	32(%rsp), %rdi	#, tmp626
	adcq	%r14, %r10	# t, t
	andq	%r8, %rax	# nonzero, tmp500
	andq	%r8, %rsi	# nonzero, tmp501
	movq	%rax, 8(%rsp)	# tmp500, %sfp
	movq	%r8, %rax	# nonzero, tmp503
	movq	8(%rsp), %xmm0	# %sfp, tmp499
	andq	%r9, %rax	# t, tmp503
	movq	%rsi, 8(%rsp)	# tmp501, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp499
	movq	%rax, 8(%rsp)	# tmp503, %sfp
	movq	%rbp, %rax	# _131, _131
	notq	%rax	# _131
	addq	%r10, %rax	# t, tmp506
	movq	%xmm0, %rsi	#, tmp553
	subq	$1, %rax	#, t
	andq	%rax, %r8	# t, tmp509
	movq	%rsi, 8(%rbx)	# tmp553, ctx_9(D)->blind
	movl	$32, %esi	#,
	movaps	%xmm0, 32(%rsp)	# tmp499, MEM[(long unsigned int *)&b]
	movq	40(%rsp), %rdx	# b, b
	movq	8(%rsp), %xmm0	# %sfp, tmp502
	movq	%r8, 8(%rsp)	# tmp509, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp502
	movq	%rdx, 16(%rbx)	# b, ctx_9(D)->blind
	movaps	%xmm0, 48(%rsp)	# tmp502, MEM[(long unsigned int *)&b + 16B]
	movq	56(%rsp), %rax	# b, b
	movq	%xmm0, 24(%rbx)	# tmp555, ctx_9(D)->blind
	movq	%rax, 32(%rbx)	# b, ctx_9(D)->blind
	movq	288(%rsp), %rax	# gb, gb
	movq	%rax, 40(%rbx)	# gb, ctx_9(D)->initial
	movq	296(%rsp), %rax	# gb, gb
	movq	%rax, 48(%rbx)	# gb, ctx_9(D)->initial
	movq	304(%rsp), %rax	# gb, gb
	movq	%rax, 56(%rbx)	# gb, ctx_9(D)->initial
	movq	312(%rsp), %rax	# gb, gb
	movq	%rax, 64(%rbx)	# gb, ctx_9(D)->initial
	movq	320(%rsp), %rax	# gb, gb
	movq	%rax, 72(%rbx)	# gb, ctx_9(D)->initial
	movq	328(%rsp), %rax	# gb, gb
	movq	%rax, 80(%rbx)	# gb, ctx_9(D)->initial
	movq	336(%rsp), %rax	# gb, gb
	movq	%rax, 88(%rbx)	# gb, ctx_9(D)->initial
	movq	344(%rsp), %rax	# gb, gb
	movq	%rax, 96(%rbx)	# gb, ctx_9(D)->initial
	movq	352(%rsp), %rax	# gb, gb
	movq	%rax, 104(%rbx)	# gb, ctx_9(D)->initial
	movq	360(%rsp), %rax	# gb, gb
	movq	%rax, 112(%rbx)	# gb, ctx_9(D)->initial
	movq	368(%rsp), %rax	# gb, gb
	movq	%rax, 120(%rbx)	# gb, ctx_9(D)->initial
	movq	376(%rsp), %rax	# gb, gb
	movq	%rax, 128(%rbx)	# gb, ctx_9(D)->initial
	movq	384(%rsp), %rax	# gb, gb
	movq	%rax, 136(%rbx)	# gb, ctx_9(D)->initial
	movq	392(%rsp), %rax	# gb, gb
	movq	%rax, 144(%rbx)	# gb, ctx_9(D)->initial
	movq	400(%rsp), %rax	# gb, gb
	movq	%rax, 152(%rbx)	# gb, ctx_9(D)->initial
	movq	408(%rsp), %rax	# gb, gb
	movq	%rax, 160(%rbx)	# gb, ctx_9(D)->initial
	call	explicit_bzero	#
	leaq	288(%rsp), %rdi	#, tmp627
	movl	$128, %esi	#,
	call	explicit_bzero	#
	addq	$424, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L439:
	.cfi_restore_state
	movq	120(%rsp), %rcx	# s.n, pretmp_264
	movq	112(%rsp), %rsi	# s.n, pretmp_262
	movabsq	$4503599627370495, %r10	#, tmp595
	movq	104(%rsp), %rdi	# s.n, pretmp_260
	movq	%rcx, %rdx	# pretmp_264, tmp450
	andq	%rsi, %rdx	# pretmp_262, tmp450
	andq	%rdi, %rdx	# pretmp_260, tmp451
	cmpq	%r10, %rdx	# tmp595, tmp451
	movq	96(%rsp), %rdx	#, pretmp_257
	jne	.L440	#,
	movabsq	$4503595332402222, %r10	#, tmp596
	cmpq	%r10, %rdx	# tmp596, pretmp_257
	jbe	.L440	#,
	movl	$1, 28(%rsp)	#, retry
	jmp	.L436	#
.L451:
	movq	secp256k1_ge_const_g(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	leaq	80(%rbx), %r13	#, pretmp_220
	movl	$0, 160(%rbx)	#, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].infinity
	movq	$1, 120(%rbx)	#, MEM[(struct secp256k1_fe *)ctx_9(D) + 120B].n
	movq	$0, 152(%rbx)	#, MEM[(struct secp256k1_fe *)ctx_9(D) + 120B].n
	leaq	64(%rsp), %r12	#, tmp548
	movq	%r13, %rdi	# pretmp_220,
	movq	$0, 144(%rbx)	#, MEM[(struct secp256k1_fe *)ctx_9(D) + 120B].n
	movq	$0, 136(%rbx)	#, MEM[(struct secp256k1_fe *)ctx_9(D) + 120B].n
	movq	%rax, 40(%rbx)	# secp256k1_ge_const_g.x, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].x
	movq	secp256k1_ge_const_g+8(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	$0, 128(%rbx)	#, MEM[(struct secp256k1_fe *)ctx_9(D) + 120B].n
	movq	%rax, 48(%rbx)	# secp256k1_ge_const_g.x, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].x
	movq	secp256k1_ge_const_g+16(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	%rax, 56(%rbx)	# secp256k1_ge_const_g.x, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].x
	movq	secp256k1_ge_const_g+24(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	%rax, 64(%rbx)	# secp256k1_ge_const_g.x, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].x
	movq	secp256k1_ge_const_g+32(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	%rax, 72(%rbx)	# secp256k1_ge_const_g.x, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].x
	movq	secp256k1_ge_const_g+40(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 80(%rbx)	# secp256k1_ge_const_g.y, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].y
	movq	secp256k1_ge_const_g+48(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 88(%rbx)	# secp256k1_ge_const_g.y, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].y
	movq	secp256k1_ge_const_g+56(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 96(%rbx)	# secp256k1_ge_const_g.y, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].y
	movq	secp256k1_ge_const_g+64(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 104(%rbx)	# secp256k1_ge_const_g.y, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].y
	movq	secp256k1_ge_const_g+72(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 112(%rbx)	# secp256k1_ge_const_g.y, MEM[(struct secp256k1_gej *)ctx_9(D) + 40B].y
	call	secp256k1_fe_normalize_weak	#
	movabsq	$18014381329608892, %rax	#, tmp377
	subq	80(%rbx), %rax	# MEM[(const struct secp256k1_fe *)ctx_9(D) + 80B].n, tmp376
	leaq	8(%rbx), %rsi	#, tmp394
	movq	$1, 8(%rbx)	#, MEM[(struct secp256k1_scalar *)ctx_9(D) + 8B].d
	movq	$0, 16(%rbx)	#, MEM[(struct secp256k1_scalar *)ctx_9(D) + 8B].d
	movq	%r12, %rdi	# tmp548,
	movq	$0, 24(%rbx)	#, MEM[(struct secp256k1_scalar *)ctx_9(D) + 8B].d
	movq	$0, 32(%rbx)	#, MEM[(struct secp256k1_scalar *)ctx_9(D) + 8B].d
	movq	%rax, 80(%rbx)	# tmp376, MEM[(struct secp256k1_fe *)ctx_9(D) + 80B].n
	movabsq	$18014398509481980, %rax	#, tmp381
	movq	%rax, %rdx	# tmp381, tmp380
	subq	88(%rbx), %rdx	# MEM[(const struct secp256k1_fe *)ctx_9(D) + 80B].n, tmp380
	movq	%rdx, 88(%rbx)	# tmp380, MEM[(struct secp256k1_fe *)ctx_9(D) + 80B].n
	movq	%rax, %rdx	# tmp381, tmp384
	subq	104(%rbx), %rax	# MEM[(const struct secp256k1_fe *)ctx_9(D) + 80B].n, tmp388
	subq	96(%rbx), %rdx	# MEM[(const struct secp256k1_fe *)ctx_9(D) + 80B].n, tmp384
	movq	%rax, 104(%rbx)	# tmp388, MEM[(struct secp256k1_fe *)ctx_9(D) + 80B].n
	movabsq	$1125899906842620, %rax	#, tmp393
	subq	112(%rbx), %rax	# MEM[(const struct secp256k1_fe *)ctx_9(D) + 80B].n, tmp392
	movq	%rdx, 96(%rbx)	# tmp384, MEM[(struct secp256k1_fe *)ctx_9(D) + 80B].n
	movq	%rax, 112(%rbx)	# tmp392, MEM[(struct secp256k1_fe *)ctx_9(D) + 80B].n
	call	secp256k1_scalar_get_b32	#
	movq	64(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movl	$32, %edx	#, iftmp.2_1
	movq	%rax, 144(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	%rax, 152(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	80(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	%rax, 160(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	movq	88(%rsp), %rax	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&nonce32]
	movq	%rax, 168(%rsp)	# MEM[(char * {ref-all})&nonce32], MEM[(char * {ref-all})&keydata]
	jmp	.L444	#
	.cfi_endproc
.LFE179:
	.size	secp256k1_ecmult_gen_blind, .-secp256k1_ecmult_gen_blind
	.section	.rodata.str1.1
.LC8:
	.string	"Invalid flags"
	.text
	.p2align 4,,15
	.globl	secp256k1_context_create
	.type	secp256k1_context_create, @function
secp256k1_context_create:
.LFB194:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx	# flags, flags
	movl	$208, %edi	#,
	subq	$584, %rsp	#,
	.cfi_def_cfa_offset 640
	call	malloc	#
	testq	%rax, %rax	# ret
	je	.L479	#,
	cmpb	$1, %bl	#, flags
	movq	%rax, %r15	#, ret
	movq	$default_illegal_callback_fn, 176(%rax)	#, MEM[(struct secp256k1_context *)ret_19].illegal_callback.fn
	movq	$0, 184(%rax)	#, MEM[(struct secp256k1_context *)ret_19].illegal_callback.data
	movq	$default_error_callback_fn, 192(%rax)	#, MEM[(struct secp256k1_context *)ret_19].error_callback.fn
	movq	$0, 200(%rax)	#, MEM[(struct secp256k1_context *)ret_19].error_callback.data
	jne	.L480	#,
	testb	$2, %bh	#, flags
	movq	$0, (%rax)	#, MEM[(struct secp256k1_ecmult_context *)ret_19].pre_g
	movq	$0, 8(%rax)	#, MEM[(struct secp256k1_ge_storage[64][16] * *)ret_19 + 8B]
	jne	.L481	#,
	andb	$1, %bh	#, flags
	jne	.L478	#,
.L471:
	addq	$584, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rax	# ret,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L481:
	.cfi_restore_state
	leaq	8(%rax), %rdi	#, tmp150
	xorl	%esi, %esi	#
	movq	$secp256k1_ecmult_static_context, 8(%rax)	#, MEM[(struct secp256k1_ecmult_gen_context *)ret_19 + 8B].prec
	call	secp256k1_ecmult_gen_blind	#
	andb	$1, %bh	#, flags
	je	.L471	#,
	cmpq	$0, (%r15)	#, MEM[(struct secp256k1_ecmult_context *)ret_19].pre_g
	jne	.L471	#,
	.p2align 4,,10
	.p2align 3
.L478:
	movq	secp256k1_ge_const_g(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movl	$1048576, %edi	#,
	movl	$0, 440(%rsp)	#, gj.infinity
	movq	$1, 400(%rsp)	#, MEM[(struct secp256k1_fe *)&gj + 80B].n
	movq	$0, 432(%rsp)	#, MEM[(struct secp256k1_fe *)&gj + 80B].n
	leaq	192(%r15), %rbp	#, _18
	movq	$0, 424(%rsp)	#, MEM[(struct secp256k1_fe *)&gj + 80B].n
	movq	$0, 416(%rsp)	#, MEM[(struct secp256k1_fe *)&gj + 80B].n
	movq	%rax, 320(%rsp)	# secp256k1_ge_const_g.x, gj.x
	movq	secp256k1_ge_const_g+8(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	$0, 408(%rsp)	#, MEM[(struct secp256k1_fe *)&gj + 80B].n
	movq	%rax, 328(%rsp)	# secp256k1_ge_const_g.x, gj.x
	movq	secp256k1_ge_const_g+16(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	%rax, 336(%rsp)	# secp256k1_ge_const_g.x, gj.x
	movq	secp256k1_ge_const_g+24(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	%rax, 344(%rsp)	# secp256k1_ge_const_g.x, gj.x
	movq	secp256k1_ge_const_g+32(%rip), %rax	# secp256k1_ge_const_g.x, secp256k1_ge_const_g.x
	movq	%rax, 352(%rsp)	# secp256k1_ge_const_g.x, gj.x
	movq	secp256k1_ge_const_g+40(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 360(%rsp)	# secp256k1_ge_const_g.y, gj.y
	movq	secp256k1_ge_const_g+48(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 368(%rsp)	# secp256k1_ge_const_g.y, gj.y
	movq	secp256k1_ge_const_g+56(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 376(%rsp)	# secp256k1_ge_const_g.y, gj.y
	movq	secp256k1_ge_const_g+64(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 384(%rsp)	# secp256k1_ge_const_g.y, gj.y
	movq	secp256k1_ge_const_g+72(%rip), %rax	# secp256k1_ge_const_g.y, secp256k1_ge_const_g.y
	movq	%rax, 392(%rsp)	# secp256k1_ge_const_g.y, gj.y
	call	malloc	#
	testq	%rax, %rax	# ret
	movq	%rax, 24(%rsp)	# ret, %sfp
	je	.L482	#,
.L460:
	movq	%rax, (%r15)	# ret, MEM[(struct secp256k1_ecmult_context *)ret_19].pre_g
	movl	$2097152, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# ret
	movq	%rax, %rbx	#, ret
	je	.L483	#,
.L461:
	movl	$1441792, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# ret
	movq	%rax, 16(%rsp)	# ret, %sfp
	je	.L484	#,
.L462:
	movl	$655360, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# ret
	movq	%rax, %r14	#, ret
	je	.L485	#,
.L463:
	movl	440(%rsp), %eax	# gj.infinity, _63
	leaq	320(%rsp), %rbp	#, tmp254
	leaq	448(%rsp), %r13	#, tmp257
	testl	%eax, %eax	# _63
	movl	%eax, 568(%rsp)	# _63, d.infinity
	je	.L486	#,
.L464:
	movq	448(%rsp), %rax	# d.x, d.x
	leaq	80(%r13), %r12	#, tmp188
	leaq	32(%rsp), %rdi	#,
	movl	$0, 304(%rsp)	#, d_ge.infinity
	movq	%r12, %rsi	# tmp188,
	movq	%rax, 224(%rsp)	# d.x, d_ge.x
	movq	456(%rsp), %rax	# d.x, d.x
	movq	%rax, 232(%rsp)	# d.x, d_ge.x
	movq	464(%rsp), %rax	# d.x, d.x
	movq	%rax, 240(%rsp)	# d.x, d_ge.x
	movq	472(%rsp), %rax	# d.x, d.x
	movq	%rax, 248(%rsp)	# d.x, d_ge.x
	movq	480(%rsp), %rax	# d.x, d.x
	movq	%rax, 256(%rsp)	# d.x, d_ge.x
	movq	488(%rsp), %rax	# d.y, d.y
	movq	%rax, 264(%rsp)	# d.y, d_ge.y
	movq	496(%rsp), %rax	# d.y, d.y
	movq	%rax, 272(%rsp)	# d.y, d_ge.y
	movq	504(%rsp), %rax	# d.y, d.y
	movq	%rax, 280(%rsp)	# d.y, d_ge.y
	movq	512(%rsp), %rax	# d.y, d.y
	movq	%rax, 288(%rsp)	# d.y, d_ge.y
	movq	520(%rsp), %rax	# d.y, d.y
	movq	%rax, 296(%rsp)	# d.y, d_ge.y
	call	secp256k1_fe_sqr_inner	#
	leaq	32(%rsp), %rsi	#,
	leaq	80(%rsp), %rdi	#, tmp261
	movq	%r12, %rdx	# tmp188,
	leaq	128(%rbx), %r12	#, ivtmp.789
	call	secp256k1_fe_mul_inner	#
	leaq	32(%rsp), %rdx	#,
	leaq	128(%rsp), %rdi	#, tmp262
	movq	%rbp, %rsi	# tmp254,
	call	secp256k1_fe_mul_inner	#
	leaq	40(%rbp), %rsi	#, tmp199
	leaq	168(%rsp), %rdi	#, tmp201
	leaq	80(%rsp), %rdx	#, tmp264
	leaq	40(%r14), %rbp	#, ivtmp.791
	call	secp256k1_fe_mul_inner	#
	movl	440(%rsp), %eax	# gj.infinity, gj.infinity
	movl	%eax, 208(%rsp)	# gj.infinity, a_ge.infinity
	movq	128(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, (%rbx)	# a_ge.x, MEM[(struct secp256k1_gej *)ret_36].x
	movq	136(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 8(%rbx)	# a_ge.x, MEM[(struct secp256k1_gej *)ret_36].x
	movq	144(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 16(%rbx)	# a_ge.x, MEM[(struct secp256k1_gej *)ret_36].x
	movq	152(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 24(%rbx)	# a_ge.x, MEM[(struct secp256k1_gej *)ret_36].x
	movq	160(%rsp), %rax	# a_ge.x, a_ge.x
	movq	%rax, 32(%rbx)	# a_ge.x, MEM[(struct secp256k1_gej *)ret_36].x
	movq	168(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 40(%rbx)	# a_ge.y, MEM[(struct secp256k1_gej *)ret_36].y
	movq	176(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 48(%rbx)	# a_ge.y, MEM[(struct secp256k1_gej *)ret_36].y
	movq	184(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 56(%rbx)	# a_ge.y, MEM[(struct secp256k1_gej *)ret_36].y
	movq	192(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 64(%rbx)	# a_ge.y, MEM[(struct secp256k1_gej *)ret_36].y
	movq	200(%rsp), %rax	# a_ge.y, a_ge.y
	movq	%rax, 72(%rbx)	# a_ge.y, MEM[(struct secp256k1_gej *)ret_36].y
	movq	400(%rsp), %rax	# gj.z, gj.z
	movq	%rax, 80(%rbx)	# gj.z, MEM[(struct secp256k1_gej *)ret_36].z
	movq	408(%rsp), %rax	# gj.z, gj.z
	movq	%rax, 88(%rbx)	# gj.z, MEM[(struct secp256k1_gej *)ret_36].z
	movq	416(%rsp), %rax	# gj.z, gj.z
	movq	%rax, 96(%rbx)	# gj.z, MEM[(struct secp256k1_gej *)ret_36].z
	movq	424(%rsp), %rax	# gj.z, gj.z
	movq	%rax, 104(%rbx)	# gj.z, MEM[(struct secp256k1_gej *)ret_36].z
	movq	432(%rsp), %rax	# gj.z, gj.z
	movq	%rax, 112(%rbx)	# gj.z, MEM[(struct secp256k1_gej *)ret_36].z
	movl	$0, 120(%rbx)	#, MEM[(struct secp256k1_gej *)ret_36].infinity
	movq	528(%rsp), %rax	# d.z, d.z
	movq	%rax, (%r14)	# d.z, MEM[(struct secp256k1_fe *)ret_40]
	movq	536(%rsp), %rax	# d.z, d.z
	movq	%rax, 8(%r14)	# d.z, MEM[(struct secp256k1_fe *)ret_40]
	movq	544(%rsp), %rax	# d.z, d.z
	movq	%rax, 16(%r14)	# d.z, MEM[(struct secp256k1_fe *)ret_40]
	movq	552(%rsp), %rax	# d.z, d.z
	movq	%rax, 24(%r14)	# d.z, MEM[(struct secp256k1_fe *)ret_40]
	movq	560(%rsp), %rax	# d.z, d.z
	movq	%rax, 32(%r14)	# d.z, MEM[(struct secp256k1_fe *)ret_40]
	leaq	2097152(%rbx), %rax	#, _184
	movq	%rax, (%rsp)	# _184, %sfp
	.p2align 4,,10
	.p2align 3
.L465:
	leaq	-128(%r12), %rsi	#, tmp224
	leaq	224(%rsp), %rdx	#, tmp266
	movq	%rbp, %rcx	# ivtmp.791,
	movq	%r12, %rdi	# ivtmp.789,
	addq	$40, %rbp	#, ivtmp.791
	subq	$-128, %r12	#, ivtmp.789
	call	secp256k1_gej_add_ge_var	#
	cmpq	(%rsp), %r12	# %sfp, ivtmp.789
	jne	.L465	#,
	leaq	2097104(%rbx), %rbp	#, _77
	leaq	80(%r13), %rdx	#, tmp226
	leaq	2096896(%rbx), %r12	#, ivtmp.773
	movq	%rbp, %rsi	# _77,
	movq	%rbp, %rdi	# _77,
	call	secp256k1_fe_mul_inner	#
	leaq	128(%rsp), %rdi	#, tmp268
	movq	%rbp, %rsi	# _77,
	call	secp256k1_fe_inv	#
	leaq	128(%rsp), %rsi	#, tmp269
	leaq	224(%rsp), %rdi	#, tmp270
	call	secp256k1_fe_sqr_inner	#
	leaq	128(%rsp), %rdx	#, tmp271
	leaq	224(%rsp), %rsi	#, tmp272
	movq	%r13, %rdi	# tmp257,
	call	secp256k1_fe_mul_inner	#
	movq	16(%rsp), %rbp	# %sfp, ret
	leaq	2097024(%rbx), %rsi	#, tmp234
	leaq	224(%rsp), %rdx	#, tmp274
	leaq	1441704(%rbp), %rdi	#, tmp235
	call	secp256k1_fe_mul_inner	#
	leaq	1441744(%rbp), %rdi	#, tmp238
	leaq	2097064(%rbx), %rsi	#, tmp237
	movq	%r13, %rdx	# tmp257,
	call	secp256k1_fe_mul_inner	#
	movl	2097144(%rbx), %eax	# MEM[(const struct secp256k1_gej *)ret_36 + 2097024B].infinity, MEM[(const struct secp256k1_gej *)ret_36 + 2097024B].infinity
	movq	%rbp, %rcx	# ret, ret
	leaq	1441616(%rbp), %rbp	#, ivtmp.771
	subq	$88, %rcx	#, _176
	movq	%rcx, 8(%rsp)	# _176, %sfp
	movl	%eax, 168(%rbp)	# MEM[(const struct secp256k1_gej *)ret_36 + 2097024B].infinity, MEM[(struct secp256k1_ge *)ret_38 + 1441704B].infinity
	leaq	655320(%r14), %rax	#, ivtmp.769
.L466:
	leaq	128(%rsp), %rsi	#, tmp280
	movq	%rax, %rdx	# ivtmp.769,
	movq	%rax, (%rsp)	# ivtmp.769, %sfp
	movq	%rsi, %rdi	# tmp280, tmp281
	call	secp256k1_fe_mul_inner	#
	leaq	128(%rsp), %rsi	#, tmp282
	leaq	224(%rsp), %rdi	#, tmp283
	call	secp256k1_fe_sqr_inner	#
	leaq	128(%rsp), %rdx	#, tmp284
	leaq	224(%rsp), %rsi	#, tmp285
	movq	%r13, %rdi	# tmp257,
	call	secp256k1_fe_mul_inner	#
	leaq	224(%rsp), %rdx	#, tmp286
	movq	%r12, %rsi	# ivtmp.773,
	movq	%rbp, %rdi	# ivtmp.771,
	call	secp256k1_fe_mul_inner	#
	leaq	40(%r12), %rsi	#, tmp249
	leaq	40(%rbp), %rdi	#, tmp250
	movq	%r13, %rdx	# tmp257,
	subq	$88, %rbp	#, ivtmp.771
	addq	$-128, %r12	#, ivtmp.773
	call	secp256k1_fe_mul_inner	#
	movl	248(%r12), %edx	# MEM[base: _91, offset: 120B], MEM[base: _91, offset: 120B]
	movq	(%rsp), %rax	# %sfp, ivtmp.769
	movl	%edx, 168(%rbp)	# MEM[base: _91, offset: 120B], MEM[base: _92, offset: 80B]
	subq	$40, %rax	#, ivtmp.769
	cmpq	8(%rsp), %rbp	# %sfp, ivtmp.771
	jne	.L466	#,
	movq	16(%rsp), %rax	# %sfp, ret
	movq	24(%rsp), %r13	# %sfp, ivtmp.760
	leaq	1441792(%rax), %r12	#, _76
	movq	%rax, %rbp	# ret, ivtmp.761
	.p2align 4,,10
	.p2align 3
.L467:
	movq	%rbp, %rsi	# ivtmp.761,
	movq	%r13, %rdi	# ivtmp.760,
	addq	$88, %rbp	#, ivtmp.761
	call	secp256k1_ge_to_storage	#
	addq	$64, %r13	#, ivtmp.760
	cmpq	%rbp, %r12	# ivtmp.761, _76
	jne	.L467	#,
	movq	16(%rsp), %rdi	# %sfp,
	call	free	#
	movq	%rbx, %rdi	# ret,
	call	free	#
	movq	%r14, %rdi	# ret,
	call	free	#
	jmp	.L471	#
	.p2align 4,,10
	.p2align 3
.L480:
	xorl	%esi, %esi	#
	movl	$.LC8, %edi	#,
	call	default_illegal_callback_fn	#
	.p2align 4,,10
	.p2align 3
.L479:
	xorl	%esi, %esi	#
	movl	$.LC2, %edi	#,
	call	default_error_callback_fn	#
.L486:
	movq	%rbp, %rsi	# tmp254,
	movq	%r13, %rdi	# tmp257,
	call	secp256k1_gej_double_var.part.3.constprop.22	#
	jmp	.L464	#
.L482:
	movq	200(%r15), %rsi	# MEM[(const struct secp256k1_callback *)ret_19 + 192B].data, MEM[(const struct secp256k1_callback *)ret_19 + 192B].data
	movl	$.LC2, %edi	#,
	call	*192(%r15)	# MEM[(const struct secp256k1_callback *)ret_19 + 192B].fn
	movq	24(%rsp), %rax	# %sfp, ret
	jmp	.L460	#
.L483:
	movq	%rbp, %rdi	# _18,
	call	checked_malloc.part.8	#
	jmp	.L461	#
.L485:
	movq	%rbp, %rdi	# _18,
	call	checked_malloc.part.8	#
	jmp	.L463	#
.L484:
	movq	%rbp, %rdi	# _18,
	call	checked_malloc.part.8	#
	jmp	.L462	#
	.cfi_endproc
.LFE194:
	.size	secp256k1_context_create, .-secp256k1_context_create
	.p2align 4,,15
	.globl	secp256k1_context_clone
	.type	secp256k1_context_clone, @function
secp256k1_context_clone:
.LFB195:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# ctx, ctx
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$208, %edi	#,
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
	call	malloc	#
	testq	%rax, %rax	# ret
	movq	%rax, %rbx	#, ret
	je	.L497	#,
.L488:
	movq	176(%rbp), %rax	# ctx_1(D)->illegal_callback, ctx_1(D)->illegal_callback
	movq	184(%rbp), %rdx	# ctx_1(D)->illegal_callback, ctx_1(D)->illegal_callback
	movq	0(%rbp), %r12	# MEM[(const struct secp256k1_ecmult_context *)ctx_1(D)].pre_g, prephitmp_15
	movq	%rax, 176(%rbx)	# ctx_1(D)->illegal_callback, MEM[(struct secp256k1_context *)ret_10].illegal_callback
	movq	%rdx, 184(%rbx)	# ctx_1(D)->illegal_callback, MEM[(struct secp256k1_context *)ret_10].illegal_callback
	movq	192(%rbp), %rax	# ctx_1(D)->error_callback, ctx_1(D)->error_callback
	movq	200(%rbp), %rdx	# ctx_1(D)->error_callback, ctx_1(D)->error_callback
	testq	%r12, %r12	# prephitmp_15
	movq	%rax, 192(%rbx)	# ctx_1(D)->error_callback, MEM[(struct secp256k1_context *)ret_10].error_callback
	movq	%rdx, 200(%rbx)	# ctx_1(D)->error_callback, MEM[(struct secp256k1_context *)ret_10].error_callback
	je	.L498	#,
	movl	$1048576, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# ret
	je	.L499	#,
.L491:
	movl	$1048576, %edx	#,
	movq	%r12, %rsi	# prephitmp_15,
	movq	%rax, %rdi	# ret,
	movq	%rax, (%rbx)	# ret, MEM[(struct secp256k1_ecmult_context *)ret_10].pre_g
	call	memcpy	#
.L490:
	movq	8(%rbp), %rax	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].prec, _9
	testq	%rax, %rax	# _9
	je	.L492	#,
	movq	48(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 48(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	56(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 56(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	64(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 64(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	72(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 72(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	80(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 80(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	88(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 88(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	96(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 96(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	104(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 104(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	112(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 112(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	120(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 120(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	128(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 128(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	136(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 136(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	144(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 144(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	152(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 152(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	160(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 160(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	168(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial
	movq	%rdx, 168(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].initial, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].initial
	movq	16(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind
	movq	%rdx, 16(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].blind
	movq	24(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind
	movq	%rdx, 24(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].blind
	movq	32(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind
	movq	%rdx, 32(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].blind
	movq	40(%rbp), %rdx	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind
	movq	%rdx, 40(%rbx)	# MEM[(const struct secp256k1_ecmult_gen_context *)ctx_1(D) + 8B].blind, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].blind
.L492:
	movq	%rax, 8(%rbx)	# _9, MEM[(struct secp256k1_ecmult_gen_context *)ret_10 + 8B].prec
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax	# ret,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L498:
	.cfi_restore_state
	movq	$0, (%rbx)	#, MEM[(struct secp256k1_ecmult_context *)ret_10].pre_g
	jmp	.L490	#
	.p2align 4,,10
	.p2align 3
.L497:
	movq	200(%rbp), %rsi	# MEM[(const struct secp256k1_callback *)ctx_1(D) + 192B].data, MEM[(const struct secp256k1_callback *)ctx_1(D) + 192B].data
	movl	$.LC2, %edi	#,
	call	*192(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_1(D) + 192B].fn
	jmp	.L488	#
	.p2align 4,,10
	.p2align 3
.L499:
	movq	%rax, 8(%rsp)	# ret, %sfp
	movq	200(%rbp), %rsi	# MEM[(const struct secp256k1_callback *)ctx_1(D) + 192B].data, MEM[(const struct secp256k1_callback *)ctx_1(D) + 192B].data
	movl	$.LC2, %edi	#,
	call	*192(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_1(D) + 192B].fn
	movq	0(%rbp), %r12	# MEM[(const struct secp256k1_ecmult_context *)ctx_1(D)].pre_g, prephitmp_15
	movq	8(%rsp), %rax	# %sfp, ret
	jmp	.L491	#
	.cfi_endproc
.LFE195:
	.size	secp256k1_context_clone, .-secp256k1_context_clone
	.p2align 4,,15
	.globl	secp256k1_context_destroy
	.type	secp256k1_context_destroy, @function
secp256k1_context_destroy:
.LFB196:
	.cfi_startproc
	testq	%rdi, %rdi	# ctx
	je	.L500	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# ctx, ctx
	movq	(%rdi), %rdi	# MEM[(struct secp256k1_ecmult_context *)ctx_2(D)].pre_g,
	call	free	#
	movq	%rbx, %rdi	# ctx,
	movl	$8, %esi	#,
	call	explicit_bzero	#
	leaq	8(%rbx), %rdi	#, tmp91
	movl	$168, %esi	#,
	call	explicit_bzero	#
	movq	%rbx, %rdi	# ctx,
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	free	#
	.p2align 4,,10
	.p2align 3
.L500:
	rep ret
	.cfi_endproc
.LFE196:
	.size	secp256k1_context_destroy, .-secp256k1_context_destroy
	.p2align 4,,15
	.globl	secp256k1_context_set_illegal_callback
	.type	secp256k1_context_set_illegal_callback, @function
secp256k1_context_set_illegal_callback:
.LFB197:
	.cfi_startproc
	testq	%rsi, %rsi	# fun
	movl	$default_illegal_callback_fn, %eax	#, tmp90
	movq	%rdx, 184(%rdi)	# data, ctx_4(D)->illegal_callback.data
	cmove	%rax, %rsi	# fun,, tmp90, fun
	movq	%rsi, 176(%rdi)	# fun, ctx_4(D)->illegal_callback.fn
	ret
	.cfi_endproc
.LFE197:
	.size	secp256k1_context_set_illegal_callback, .-secp256k1_context_set_illegal_callback
	.p2align 4,,15
	.globl	secp256k1_context_set_error_callback
	.type	secp256k1_context_set_error_callback, @function
secp256k1_context_set_error_callback:
.LFB198:
	.cfi_startproc
	testq	%rsi, %rsi	# fun
	movl	$default_error_callback_fn, %eax	#, tmp90
	movq	%rdx, 200(%rdi)	# data, ctx_4(D)->error_callback.data
	cmove	%rax, %rsi	# fun,, tmp90, fun
	movq	%rsi, 192(%rdi)	# fun, ctx_4(D)->error_callback.fn
	ret
	.cfi_endproc
.LFE198:
	.size	secp256k1_context_set_error_callback, .-secp256k1_context_set_error_callback
	.section	.rodata.str1.1
.LC9:
	.string	"pubkey != NULL"
.LC10:
	.string	"input != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ec_pubkey_parse
	.type	secp256k1_ec_pubkey_parse, @function
secp256k1_ec_pubkey_parse:
.LFB201:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r8	# ctx, ctx
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$888, %rsp	#,
	.cfi_def_cfa_offset 944
	testq	%rsi, %rsi	# pubkey
	je	.L567	#,
	leaq	8(%rsi), %rdi	#, tmp627
	movq	%rdx, %rbp	# input, input
	movq	%rcx, %rdx	# inputlen, inputlen
	movq	%rsi, %rcx	# pubkey, pubkey
	xorl	%eax, %eax	# tmp623
	movq	$0, (%rsi)	#,* pubkey
	andq	$-8, %rdi	#, tmp627
	movq	$0, 56(%rsi)	#,
	movq	%rsi, %rbx	# pubkey, pubkey
	subq	%rdi, %rcx	# tmp627, pubkey
	addl	$64, %ecx	#, tmp622
	shrl	$3, %ecx	#,
	testq	%rbp, %rbp	# input
	rep stosq
	je	.L568	#,
	cmpq	$33, %rdx	#, inputlen
	je	.L569	#,
	cmpq	$65, %rdx	#, inputlen
	jne	.L530	#,
	movzbl	0(%rbp), %r12d	# *input_10(D), _34
	cmpb	$4, %r12b	#, _34
	leal	-6(%r12), %r13d	#, _163
	je	.L544	#,
	cmpb	$1, %r13b	#, _163
	jbe	.L544	#,
.L530:
	xorl	%eax, %eax	# <retval>
.L509:
	addq	$888, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L569:
	.cfi_restore_state
	movzbl	0(%rbp), %eax	# *input_10(D), tmp1031
	subl	$2, %eax	#, tmp632
	cmpb	$1, %al	#, tmp632
	ja	.L530	#,
	leaq	1(%rbp), %rsi	#, tmp634
	movq	%rsp, %rdi	#,
	call	secp256k1_fe_set_b32	#
	testl	%eax, %eax	# _29
	je	.L530	#,
	movq	(%rsp), %rax	# x, x
	leaq	48(%rsp), %rdi	#, tmp1032
	movq	%rsp, %rsi	#,
	movzbl	0(%rbp), %r12d	# *input_10(D), _30
	movl	$3, %ebp	#, ivtmp_362
	movq	%rax, 784(%rsp)	# x, Q.x
	movq	8(%rsp), %rax	# x, x
	movq	%rax, 792(%rsp)	# x, Q.x
	movq	16(%rsp), %rax	# x, x
	movq	%rax, 800(%rsp)	# x, Q.x
	movq	24(%rsp), %rax	# x, x
	movq	%rax, 808(%rsp)	# x, Q.x
	movq	32(%rsp), %rax	# x, x
	movq	%rax, 816(%rsp)	# x, Q.x
	call	secp256k1_fe_sqr_inner	#
	leaq	48(%rsp), %rdx	#, tmp1033
	leaq	96(%rsp), %rdi	#, tmp1034
	movq	%rsp, %rsi	#,
	call	secp256k1_fe_mul_inner	#
	movq	96(%rsp), %rax	# x3.n, tmp1035
	leaq	144(%rsp), %rsi	#, tmp1036
	leaq	192(%rsp), %rdi	#, tmp1037
	movl	$0, 864(%rsp)	#, Q.infinity
	addq	$7, %rax	#, tmp648
	movq	%rax, 144(%rsp)	# tmp648, c.n
	movq	104(%rsp), %rax	# x3.n, x3.n
	movq	%rax, 152(%rsp)	# x3.n, c.n
	movq	112(%rsp), %rax	# x3.n, x3.n
	movq	%rax, 160(%rsp)	# x3.n, c.n
	movq	120(%rsp), %rax	# x3.n, x3.n
	movq	%rax, 168(%rsp)	# x3.n, c.n
	movq	128(%rsp), %rax	# x3.n, x3.n
	movq	%rax, 176(%rsp)	# x3.n, c.n
	call	secp256k1_fe_sqr_inner	#
	leaq	192(%rsp), %rsi	#, tmp1039
	leaq	144(%rsp), %rdx	#, tmp1038
	movq	%rsi, %rdi	# tmp1039, tmp1040
	call	secp256k1_fe_mul_inner	#
	leaq	192(%rsp), %rsi	#, tmp1041
	leaq	240(%rsp), %rdi	#, tmp1042
	call	secp256k1_fe_sqr_inner	#
	leaq	240(%rsp), %rsi	#, tmp1044
	leaq	144(%rsp), %rdx	#, tmp1043
	movq	%rsi, %rdi	# tmp1044, tmp1045
	call	secp256k1_fe_mul_inner	#
	movq	240(%rsp), %rax	# x3, x3
	movq	%rax, 288(%rsp)	# x3, x6
	movq	248(%rsp), %rax	# x3, x3
	movq	%rax, 296(%rsp)	# x3, x6
	movq	256(%rsp), %rax	# x3, x3
	movq	%rax, 304(%rsp)	# x3, x6
	movq	264(%rsp), %rax	# x3, x3
	movq	%rax, 312(%rsp)	# x3, x6
	movq	272(%rsp), %rax	# x3, x3
	movq	%rax, 320(%rsp)	# x3, x6
.L517:
	leaq	288(%rsp), %rsi	#, tmp1046
	movq	%rsi, %rdi	# tmp1046, tmp1047
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_362
	jne	.L517	#,
	leaq	288(%rsp), %rsi	#, tmp1049
	leaq	240(%rsp), %rdx	#, tmp1048
	movl	$3, %ebp	#, ivtmp_397
	movq	%rsi, %rdi	# tmp1049, tmp1050
	call	secp256k1_fe_mul_inner	#
	movq	288(%rsp), %rax	# x6, x6
	movq	%rax, 336(%rsp)	# x6, x9
	movq	296(%rsp), %rax	# x6, x6
	movq	%rax, 344(%rsp)	# x6, x9
	movq	304(%rsp), %rax	# x6, x6
	movq	%rax, 352(%rsp)	# x6, x9
	movq	312(%rsp), %rax	# x6, x6
	movq	%rax, 360(%rsp)	# x6, x9
	movq	320(%rsp), %rax	# x6, x6
	movq	%rax, 368(%rsp)	# x6, x9
.L518:
	leaq	336(%rsp), %rsi	#, tmp1051
	movq	%rsi, %rdi	# tmp1051, tmp1052
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_397
	jne	.L518	#,
	leaq	336(%rsp), %rsi	#, tmp1054
	leaq	240(%rsp), %rdx	#, tmp1053
	movl	$11, %ebp	#, ivtmp_406
	movq	%rsi, %rdi	# tmp1054, tmp1055
	call	secp256k1_fe_mul_inner	#
	movq	336(%rsp), %rax	# x9, x9
	leaq	384(%rsp), %rsi	#, tmp1056
	movq	%rsi, %rdi	# tmp1056, tmp1057
	movq	%rax, 384(%rsp)	# x9, x11
	movq	344(%rsp), %rax	# x9, x9
	movq	%rax, 392(%rsp)	# x9, x11
	movq	352(%rsp), %rax	# x9, x9
	movq	%rax, 400(%rsp)	# x9, x11
	movq	360(%rsp), %rax	# x9, x9
	movq	%rax, 408(%rsp)	# x9, x11
	movq	368(%rsp), %rax	# x9, x9
	movq	%rax, 416(%rsp)	# x9, x11
	call	secp256k1_fe_sqr_inner	#
	leaq	384(%rsp), %rsi	#, tmp1058
	movq	%rsi, %rdi	# tmp1058, tmp1059
	call	secp256k1_fe_sqr_inner	#
	leaq	384(%rsp), %rsi	#, tmp1061
	leaq	192(%rsp), %rdx	#, tmp1060
	movq	%rsi, %rdi	# tmp1061, tmp1062
	call	secp256k1_fe_mul_inner	#
	movq	384(%rsp), %rax	# x11, x11
	movq	%rax, 432(%rsp)	# x11, x22
	movq	392(%rsp), %rax	# x11, x11
	movq	%rax, 440(%rsp)	# x11, x22
	movq	400(%rsp), %rax	# x11, x11
	movq	%rax, 448(%rsp)	# x11, x22
	movq	408(%rsp), %rax	# x11, x11
	movq	%rax, 456(%rsp)	# x11, x22
	movq	416(%rsp), %rax	# x11, x11
	movq	%rax, 464(%rsp)	# x11, x22
	.p2align 4,,10
	.p2align 3
.L519:
	leaq	432(%rsp), %rsi	#, tmp1063
	movq	%rsi, %rdi	# tmp1063, tmp1064
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_406
	jne	.L519	#,
	leaq	432(%rsp), %rsi	#, tmp1066
	leaq	384(%rsp), %rdx	#, tmp1065
	movl	$22, %ebp	#, ivtmp_413
	movq	%rsi, %rdi	# tmp1066, tmp1067
	call	secp256k1_fe_mul_inner	#
	movq	432(%rsp), %rax	# x22, x22
	movq	%rax, 480(%rsp)	# x22, x44
	movq	440(%rsp), %rax	# x22, x22
	movq	%rax, 488(%rsp)	# x22, x44
	movq	448(%rsp), %rax	# x22, x22
	movq	%rax, 496(%rsp)	# x22, x44
	movq	456(%rsp), %rax	# x22, x22
	movq	%rax, 504(%rsp)	# x22, x44
	movq	464(%rsp), %rax	# x22, x22
	movq	%rax, 512(%rsp)	# x22, x44
	.p2align 4,,10
	.p2align 3
.L520:
	leaq	480(%rsp), %rsi	#, tmp1068
	movq	%rsi, %rdi	# tmp1068, tmp1069
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_413
	jne	.L520	#,
	leaq	480(%rsp), %rsi	#, tmp1071
	leaq	432(%rsp), %rdx	#, tmp1070
	movl	$44, %ebp	#, ivtmp_416
	movq	%rsi, %rdi	# tmp1071, tmp1072
	call	secp256k1_fe_mul_inner	#
	movq	480(%rsp), %rax	# x44, x44
	movq	%rax, 528(%rsp)	# x44, x88
	movq	488(%rsp), %rax	# x44, x44
	movq	%rax, 536(%rsp)	# x44, x88
	movq	496(%rsp), %rax	# x44, x44
	movq	%rax, 544(%rsp)	# x44, x88
	movq	504(%rsp), %rax	# x44, x44
	movq	%rax, 552(%rsp)	# x44, x88
	movq	512(%rsp), %rax	# x44, x44
	movq	%rax, 560(%rsp)	# x44, x88
	.p2align 4,,10
	.p2align 3
.L521:
	leaq	528(%rsp), %rsi	#, tmp1073
	movq	%rsi, %rdi	# tmp1073, tmp1074
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_416
	jne	.L521	#,
	leaq	528(%rsp), %rsi	#, tmp1076
	leaq	480(%rsp), %rdx	#, tmp1075
	movl	$88, %ebp	#, ivtmp_439
	movq	%rsi, %rdi	# tmp1076, tmp1077
	call	secp256k1_fe_mul_inner	#
	movq	528(%rsp), %rax	# x88, x88
	movq	%rax, 576(%rsp)	# x88, x176
	movq	536(%rsp), %rax	# x88, x88
	movq	%rax, 584(%rsp)	# x88, x176
	movq	544(%rsp), %rax	# x88, x88
	movq	%rax, 592(%rsp)	# x88, x176
	movq	552(%rsp), %rax	# x88, x88
	movq	%rax, 600(%rsp)	# x88, x176
	movq	560(%rsp), %rax	# x88, x88
	movq	%rax, 608(%rsp)	# x88, x176
	.p2align 4,,10
	.p2align 3
.L522:
	leaq	576(%rsp), %rsi	#, tmp1078
	movq	%rsi, %rdi	# tmp1078, tmp1079
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_439
	jne	.L522	#,
	leaq	576(%rsp), %rsi	#, tmp1081
	leaq	528(%rsp), %rdx	#, tmp1080
	movl	$44, %ebp	#, ivtmp_454
	movq	%rsi, %rdi	# tmp1081, tmp1082
	call	secp256k1_fe_mul_inner	#
	movq	576(%rsp), %rax	# x176, x176
	movq	%rax, 624(%rsp)	# x176, x220
	movq	584(%rsp), %rax	# x176, x176
	movq	%rax, 632(%rsp)	# x176, x220
	movq	592(%rsp), %rax	# x176, x176
	movq	%rax, 640(%rsp)	# x176, x220
	movq	600(%rsp), %rax	# x176, x176
	movq	%rax, 648(%rsp)	# x176, x220
	movq	608(%rsp), %rax	# x176, x176
	movq	%rax, 656(%rsp)	# x176, x220
	.p2align 4,,10
	.p2align 3
.L523:
	leaq	624(%rsp), %rsi	#, tmp1083
	movq	%rsi, %rdi	# tmp1083, tmp1084
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_454
	jne	.L523	#,
	leaq	624(%rsp), %rsi	#, tmp1086
	leaq	480(%rsp), %rdx	#, tmp1085
	movl	$3, %ebp	#, ivtmp_456
	movq	%rsi, %rdi	# tmp1086, tmp1087
	call	secp256k1_fe_mul_inner	#
	movq	624(%rsp), %rax	# x220, x220
	movq	%rax, 672(%rsp)	# x220, x223
	movq	632(%rsp), %rax	# x220, x220
	movq	%rax, 680(%rsp)	# x220, x223
	movq	640(%rsp), %rax	# x220, x220
	movq	%rax, 688(%rsp)	# x220, x223
	movq	648(%rsp), %rax	# x220, x220
	movq	%rax, 696(%rsp)	# x220, x223
	movq	656(%rsp), %rax	# x220, x220
	movq	%rax, 704(%rsp)	# x220, x223
.L524:
	leaq	672(%rsp), %rsi	#, tmp1088
	movq	%rsi, %rdi	# tmp1088, tmp1089
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %ebp	#, ivtmp_456
	jne	.L524	#,
	leaq	672(%rsp), %rsi	#, tmp1091
	leaq	240(%rsp), %rdx	#, tmp1090
	leaq	720(%rsp), %rbp	#, tmp1009
	movl	$23, %r13d	#, ivtmp_458
	movq	%rsi, %rdi	# tmp1091, tmp1092
	call	secp256k1_fe_mul_inner	#
	movq	672(%rsp), %rax	# x223, x223
	movq	%rax, 720(%rsp)	# x223, t1
	movq	680(%rsp), %rax	# x223, x223
	movq	%rax, 728(%rsp)	# x223, t1
	movq	688(%rsp), %rax	# x223, x223
	movq	%rax, 736(%rsp)	# x223, t1
	movq	696(%rsp), %rax	# x223, x223
	movq	%rax, 744(%rsp)	# x223, t1
	movq	704(%rsp), %rax	# x223, x223
	movq	%rax, 752(%rsp)	# x223, t1
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%rbp, %rsi	# tmp1009,
	movq	%rbp, %rdi	# tmp1009,
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %r13d	#, ivtmp_458
	jne	.L525	#,
	leaq	432(%rsp), %rdx	#, tmp1093
	movq	%rbp, %rsi	# tmp1009,
	movq	%rbp, %rdi	# tmp1009,
	movl	$6, %r13d	#, ivtmp_38
	call	secp256k1_fe_mul_inner	#
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%rbp, %rsi	# tmp1009,
	movq	%rbp, %rdi	# tmp1009,
	call	secp256k1_fe_sqr_inner	#
	subl	$1, %r13d	#, ivtmp_38
	jne	.L526	#,
	leaq	784(%rsp), %r13	#, tmp1011
	leaq	192(%rsp), %rdx	#, tmp1094
	movq	%rbp, %rsi	# tmp1009,
	movq	%rbp, %rdi	# tmp1009,
	leaq	40(%r13), %r14	#, tmp775
	call	secp256k1_fe_mul_inner	#
	movq	%rbp, %rsi	# tmp1009,
	movq	%rbp, %rdi	# tmp1009,
	call	secp256k1_fe_sqr_inner	#
	movq	%rbp, %rsi	# tmp1009,
	movq	%r14, %rdi	# tmp775,
	call	secp256k1_fe_sqr_inner	#
	movq	%r14, %rsi	# tmp775,
	movq	%rbp, %rdi	# tmp1009,
	call	secp256k1_fe_sqr_inner	#
	movabsq	$1125899906842620, %rdx	#, tmp780
	movabsq	$18014381329608892, %rax	#, tmp784
	addq	176(%rsp), %rdx	# c.n, tmp779
	addq	144(%rsp), %rax	# c.n, tmp783
	subq	752(%rsp), %rdx	# t1.n, _121
	movabsq	$281474976710655, %rcx	#, tmp782
	subq	720(%rsp), %rax	# t1.n, tmp783
	movabsq	$4503599627370495, %r8	#, tmp809
	movabsq	$4294968272, %r10	#, tmp813
	andq	%rdx, %rcx	# _121, t4
	movq	%rax, %rsi	# tmp783, tmp786
	movq	%rdx, %rax	# _121, _121
	movabsq	$4294968273, %rdx	#, tmp789
	shrq	$48, %rax	#, _121
	imulq	%rdx, %rax	# tmp789, tmp788
	movabsq	$18014398509481980, %rdx	#, tmp791
	movq	%rdx, %r9	# tmp791, tmp790
	addq	152(%rsp), %r9	# c.n, tmp790
	subq	728(%rsp), %r9	# t1.n, tmp793
	addq	%rsi, %rax	# tmp786, t0
	movq	%rax, %rsi	# t0, tmp794
	shrq	$52, %rsi	#, tmp794
	addq	%rsi, %r9	# tmp794, t1
	movq	%rdx, %rsi	# tmp791, tmp795
	addq	160(%rsp), %rsi	# c.n, tmp795
	subq	736(%rsp), %rsi	# t1.n, tmp798
	addq	168(%rsp), %rdx	# c.n, tmp800
	movq	%r9, %rdi	# t1, tmp799
	shrq	$52, %rdi	#, tmp799
	subq	744(%rsp), %rdx	# t1.n, tmp803
	addq	%rdi, %rsi	# tmp799, t2
	movq	%rsi, %rdi	# t2, tmp804
	shrq	$52, %rdi	#, tmp804
	addq	%rdi, %rdx	# tmp804, t3
	movq	%rdx, %rdi	# t3, tmp805
	shrq	$52, %rdi	#, tmp805
	addq	%rcx, %rdi	# t4, t4
	movq	%rax, %rcx	# t0, tmp806
	andq	%r8, %rax	# tmp809, t0
	orq	%r9, %rcx	# t1, tmp806
	xorq	%r10, %rax	# tmp813, z1
	orq	%rsi, %rcx	# t2, tmp807
	orq	%rdx, %rcx	# t3, tmp808
	andq	%r8, %rcx	# tmp809, z0
	andq	%r9, %rax	# t1, tmp814
	andq	%rsi, %rax	# t2, _86
	andq	%rdx, %rax	# t3, z1
	movabsq	$4222124650659840, %rdx	#, tmp816
	xorq	%rdi, %rdx	# t4, tmp815
	andq	%rdx, %rax	# tmp815, z1
	cmpq	%r8, %rax	# tmp809, z1
	je	.L543	#,
	orq	%rcx, %rdi	# z0, t4
	jne	.L530	#,
.L543:
	leaq	40(%r13), %rdi	#, tmp825
	call	secp256k1_fe_normalize_var	#
	movq	824(%rsp), %rdx	# MEM[(long unsigned int *)&Q + 40B], _55
	xorl	%ecx, %ecx	# tmp826
	cmpb	$3, %r12b	#, _30
	sete	%cl	#, tmp826
	movl	%edx, %eax	# _55, tmp828
	andl	$1, %eax	#, tmp828
	cmpl	%eax, %ecx	# tmp828, tmp826
	je	.L551	#,
	movabsq	$18014381329608892, %rax	#, tmp829
	subq	%rdx, %rax	# _55, tmp830
	movq	%rax, 824(%rsp)	# tmp830, MEM[(struct secp256k1_fe *)&Q + 40B].n
	movabsq	$18014398509481980, %rax	#, tmp834
	movq	%rax, %rdx	# tmp834, tmp833
	subq	832(%rsp), %rdx	# MEM[(const struct secp256k1_fe *)&Q + 40B].n, tmp833
	movq	%rdx, 832(%rsp)	# tmp833, MEM[(struct secp256k1_fe *)&Q + 40B].n
	movq	%rax, %rdx	# tmp834, tmp837
	subq	848(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&Q + 40B].n, tmp841
	subq	840(%rsp), %rdx	# MEM[(const struct secp256k1_fe *)&Q + 40B].n, tmp837
	movq	%rax, 848(%rsp)	# tmp841, MEM[(struct secp256k1_fe *)&Q + 40B].n
	movabsq	$1125899906842620, %rax	#, tmp846
	subq	856(%rsp), %rax	# MEM[(const struct secp256k1_fe *)&Q + 40B].n, tmp845
	movq	%rdx, 840(%rsp)	# tmp837, MEM[(struct secp256k1_fe *)&Q + 40B].n
	movq	%rax, 856(%rsp)	# tmp845, MEM[(struct secp256k1_fe *)&Q + 40B].n
	jmp	.L551	#
	.p2align 4,,10
	.p2align 3
.L544:
	movq	$0, 560(%rsp)	#, x.n
	movq	$0, 552(%rsp)	#, x.n
	leaq	32(%rbp), %r11	#, ivtmp.899
	movq	$0, 544(%rsp)	#, x.n
	movq	$0, 536(%rsp)	#, x.n
	movl	$1, %r9d	#, ivtmp.903
	movq	$0, 528(%rsp)	#, x.n
	xorl	%r8d, %r8d	# ivtmp.895
	xorl	%r15d, %r15d	# pretmp_5
	movl	$1321528399, %r10d	#, tmp853
	jmp	.L533	#
	.p2align 4,,10
	.p2align 3
.L570:
	movl	%r8d, %eax	# ivtmp.895, tmp1024
	imull	%r10d	# tmp853
	movl	%r8d, %eax	# ivtmp.895, tmp892
	sarl	$31, %eax	#, tmp892
	sarl	$2, %edx	#, tmp891
	subl	%eax, %edx	# tmp892, tmp888
	movslq	%edx, %rdx	# tmp888, tmp893
	movq	528(%rsp,%rdx,8), %r15	# x.n, pretmp_5
.L533:
	movl	%r8d, %eax	# ivtmp.895, tmp1020
	leal	0(,%r8,4), %ecx	#, tmp859
	movzbl	(%r11), %edi	# MEM[base: _316, offset: 0B], _436
	imull	%r10d	# tmp853
	movl	%r8d, %eax	# ivtmp.895, tmp855
	addl	$2, %r8d	#, ivtmp.895
	sarl	$31, %eax	#, tmp855
	subq	$1, %r11	#, ivtmp.899
	sarl	$2, %edx	#, tmp854
	movq	%rdi, %r14	# _436, tmp858
	shrb	$4, %dil	#, tmp874
	subl	%eax, %edx	# tmp855, limb
	movl	%ecx, %eax	# tmp859, tmp1021
	andl	$15, %r14d	#, tmp858
	movslq	%edx, %rsi	# limb, limb
	movzbl	%dil, %edi	# tmp874, tmp875
	imull	%r10d	# tmp853
	movl	%ecx, %eax	# tmp859, tmp864
	sarl	$31, %eax	#, tmp864
	sarl	$4, %edx	#, tmp863
	subl	%eax, %edx	# tmp864, tmp860
	movl	%r9d, %eax	# ivtmp.903, tmp1022
	imull	$52, %edx, %edx	#, tmp860, tmp865
	subl	%edx, %ecx	# tmp865, shift
	imull	%r10d	# tmp853
	salq	%cl, %r14	# shift, tmp867
	movl	%r9d, %eax	# ivtmp.903, tmp872
	leal	0(,%r9,4), %ecx	#, tmp876
	sarl	$31, %eax	#, tmp872
	orq	%r14, %r15	# tmp867, tmp868
	movq	%r15, 528(%rsp,%rsi,8)	# tmp868, x.n
	addl	$2, %r9d	#, ivtmp.903
	sarl	$2, %edx	#, tmp871
	subl	%eax, %edx	# tmp872, limb
	movl	%ecx, %eax	# tmp876, tmp1023
	movslq	%edx, %rsi	# limb, limb
	imull	%r10d	# tmp853
	movl	%ecx, %eax	# tmp876, tmp881
	sarl	$31, %eax	#, tmp881
	sarl	$4, %edx	#, tmp880
	subl	%eax, %edx	# tmp881, tmp877
	imull	$52, %edx, %edx	#, tmp877, tmp882
	subl	%edx, %ecx	# tmp882, shift
	salq	%cl, %rdi	# shift, tmp884
	orq	%rdi, 528(%rsp,%rsi,8)	# tmp884, x.n
	cmpl	$64, %r8d	#, ivtmp.895
	jne	.L570	#,
	movabsq	$281474976710655, %rax	#, tmp894
	cmpq	%rax, 560(%rsp)	# tmp894, x.n
	je	.L571	#,
.L534:
	movq	$0, 608(%rsp)	#, y.n
	movq	$0, 600(%rsp)	#, y.n
	addq	$64, %rbp	#, ivtmp.871
	movq	$0, 592(%rsp)	#, y.n
	movq	$0, 584(%rsp)	#, y.n
	movl	$1, %r9d	#, ivtmp.875
	movq	$0, 576(%rsp)	#, y.n
	xorl	%r8d, %r8d	# ivtmp.867
	xorl	%r14d, %r14d	# pretmp_100
	movl	$1321528399, %r10d	#, tmp908
	jmp	.L539	#
	.p2align 4,,10
	.p2align 3
.L536:
	movl	%r8d, %eax	# ivtmp.867, tmp1025
	imull	%r10d	# tmp908
	movl	%r8d, %eax	# ivtmp.867, tmp904
	sarl	$31, %eax	#, tmp904
	sarl	$2, %edx	#, tmp903
	subl	%eax, %edx	# tmp904, tmp900
	movslq	%edx, %rdx	# tmp900, tmp905
	movq	576(%rsp,%rdx,8), %r14	# y.n, pretmp_100
.L539:
	movl	%r8d, %eax	# ivtmp.867, tmp1026
	leal	0(,%r8,4), %ecx	#, tmp914
	movzbl	0(%rbp), %edi	# MEM[base: _79, offset: 0B], _394
	imull	%r10d	# tmp908
	movl	%r8d, %eax	# ivtmp.867, tmp910
	addl	$2, %r8d	#, ivtmp.867
	sarl	$31, %eax	#, tmp910
	subq	$1, %rbp	#, ivtmp.871
	sarl	$2, %edx	#, tmp909
	movq	%rdi, %r11	# _394, tmp913
	shrb	$4, %dil	#, tmp929
	subl	%eax, %edx	# tmp910, limb
	movl	%ecx, %eax	# tmp914, tmp1027
	andl	$15, %r11d	#, tmp913
	movslq	%edx, %rsi	# limb, limb
	movzbl	%dil, %edi	# tmp929, tmp930
	imull	%r10d	# tmp908
	movl	%ecx, %eax	# tmp914, tmp919
	sarl	$31, %eax	#, tmp919
	sarl	$4, %edx	#, tmp918
	subl	%eax, %edx	# tmp919, tmp915
	movl	%r9d, %eax	# ivtmp.875, tmp1028
	imull	$52, %edx, %edx	#, tmp915, tmp920
	subl	%edx, %ecx	# tmp920, shift
	imull	%r10d	# tmp908
	salq	%cl, %r11	# shift, tmp922
	movl	%r9d, %eax	# ivtmp.875, tmp927
	leal	0(,%r9,4), %ecx	#, tmp931
	sarl	$31, %eax	#, tmp927
	orq	%r11, %r14	# tmp922, tmp923
	movq	%r14, 576(%rsp,%rsi,8)	# tmp923, y.n
	addl	$2, %r9d	#, ivtmp.875
	sarl	$2, %edx	#, tmp926
	subl	%eax, %edx	# tmp927, limb
	movl	%ecx, %eax	# tmp931, tmp1029
	movslq	%edx, %rsi	# limb, limb
	imull	%r10d	# tmp908
	movl	%ecx, %eax	# tmp931, tmp936
	sarl	$31, %eax	#, tmp936
	sarl	$4, %edx	#, tmp935
	subl	%eax, %edx	# tmp936, tmp932
	imull	$52, %edx, %edx	#, tmp932, tmp937
	subl	%edx, %ecx	# tmp937, shift
	salq	%cl, %rdi	# shift, tmp939
	orq	%rdi, 576(%rsp,%rsi,8)	# tmp939, y.n
	cmpl	$64, %r8d	#, ivtmp.867
	jne	.L536	#,
	movabsq	$281474976710655, %rax	#, tmp943
	cmpq	%rax, 608(%rsp)	# tmp943, y.n
	je	.L572	#,
.L537:
	movq	528(%rsp), %rax	# x, x
	movq	584(%rsp), %rdx	# y, y
	cmpb	$1, %r13b	#, _163
	movl	$0, 864(%rsp)	#, Q.infinity
	movq	%rax, 784(%rsp)	# x, Q.x
	movq	536(%rsp), %rax	# x, x
	movq	%rdx, 832(%rsp)	# y, Q.y
	movq	592(%rsp), %rdx	# y, y
	movq	%rax, 792(%rsp)	# x, Q.x
	movq	544(%rsp), %rax	# x, x
	movq	%rdx, 840(%rsp)	# y, Q.y
	movq	600(%rsp), %rdx	# y, y
	movq	%rax, 800(%rsp)	# x, Q.x
	movq	552(%rsp), %rax	# x, x
	movq	%rdx, 848(%rsp)	# y, Q.y
	movq	608(%rsp), %rdx	# y, y
	movq	%rax, 808(%rsp)	# x, Q.x
	movq	560(%rsp), %rax	# x, x
	movq	%rdx, 856(%rsp)	# y, Q.y
	movq	%rax, 816(%rsp)	# x, Q.x
	movq	576(%rsp), %rax	# y, y
	movq	%rax, 824(%rsp)	# y, Q.y
	jbe	.L573	#,
.L541:
	leaq	824(%rsp), %rsi	#, tmp954
	leaq	624(%rsp), %rdi	#, tmp1130
	leaq	784(%rsp), %r13	#, tmp1011
	leaq	720(%rsp), %rbp	#, tmp1009
	call	secp256k1_fe_sqr_inner	#
	leaq	672(%rsp), %rdi	#, tmp1131
	movq	%r13, %rsi	# tmp1011,
	call	secp256k1_fe_sqr_inner	#
	leaq	672(%rsp), %rsi	#, tmp1132
	movq	%r13, %rdx	# tmp1011,
	movq	%rsi, %rdi	# tmp1132, tmp1133
	call	secp256k1_fe_mul_inner	#
	leaq	672(%rsp), %rdi	#, tmp1134
	addq	$7, 672(%rsp)	#, x3.n
	call	secp256k1_fe_normalize_weak	#
	movabsq	$18014381329608892, %rax	#, tmp963
	addq	672(%rsp), %rax	# x3.n, tmp962
	movq	%rbp, %rdi	# tmp1009,
	subq	624(%rsp), %rax	# y2.n, tmp966
	movq	%rax, 720(%rsp)	# tmp966, na.n
	movabsq	$18014398509481980, %rax	#, tmp968
	movq	%rax, %rdx	# tmp968, tmp967
	addq	680(%rsp), %rdx	# x3.n, tmp967
	subq	632(%rsp), %rdx	# y2.n, tmp970
	movq	%rdx, 728(%rsp)	# tmp970, na.n
	movq	%rax, %rdx	# tmp968, tmp971
	addq	696(%rsp), %rax	# x3.n, tmp975
	subq	648(%rsp), %rax	# y2.n, tmp978
	addq	688(%rsp), %rdx	# x3.n, tmp971
	subq	640(%rsp), %rdx	# y2.n, tmp974
	movq	%rax, 744(%rsp)	# tmp978, na.n
	movabsq	$1125899906842620, %rax	#, tmp980
	addq	704(%rsp), %rax	# x3.n, tmp979
	subq	656(%rsp), %rax	# y2.n, tmp982
	movq	%rdx, 736(%rsp)	# tmp974, na.n
	movq	%rax, 752(%rsp)	# tmp982, na.n
	call	secp256k1_fe_normalizes_to_zero_var	#
	testl	%eax, %eax	# _50
	je	.L530	#,
.L551:
	movq	%r13, %rsi	# tmp1011,
	movq	%rbp, %rdi	# tmp1009,
	call	secp256k1_ge_to_storage	#
	movq	720(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movl	$88, %esi	#,
	movq	%r13, %rdi	# tmp1011,
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	728(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	736(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	744(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	752(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	760(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	768(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	movq	776(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_3(D)]
	call	explicit_bzero	#
	movl	$1, %eax	#, <retval>
	jmp	.L509	#
	.p2align 4,,10
	.p2align 3
.L567:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC9, %edi	#,
	call	*176(%r8)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L509	#
	.p2align 4,,10
	.p2align 3
.L568:
	movq	184(%r8), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC10, %edi	#,
	call	*176(%r8)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L509	#
.L571:
	movq	552(%rsp), %rax	# x.n, x.n
	andq	544(%rsp), %rax	# x.n, tmp895
	movabsq	$4503599627370495, %rdx	#, tmp898
	andq	536(%rsp), %rax	# x.n, tmp897
	cmpq	%rdx, %rax	# tmp898, tmp897
	jne	.L534	#,
	movabsq	$4503595332402222, %rax	#, tmp899
	cmpq	%rax, 528(%rsp)	# tmp899, x.n
	jbe	.L534	#,
	jmp	.L530	#
.L572:
	movq	600(%rsp), %rax	# y.n, y.n
	andq	592(%rsp), %rax	# y.n, tmp944
	movabsq	$4503599627370495, %rdx	#, tmp947
	andq	584(%rsp), %rax	# y.n, tmp946
	cmpq	%rdx, %rax	# tmp947, tmp946
	jne	.L537	#,
	movabsq	$4503595332402222, %rax	#, tmp948
	cmpq	%rax, 576(%rsp)	# tmp948, y.n
	jbe	.L537	#,
	jmp	.L530	#
.L573:
	andl	$1, %eax	#, tmp950
	xorl	%edx, %edx	# tmp951
	cmpb	$7, %r12b	#, _34
	sete	%dl	#, tmp951
	cmpl	%edx, %eax	# tmp951, tmp950
	jne	.L530	#,
	jmp	.L541	#
	.cfi_endproc
.LFE201:
	.size	secp256k1_ec_pubkey_parse, .-secp256k1_ec_pubkey_parse
	.section	.rodata.str1.1
.LC11:
	.string	"outputlen != NULL"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"*outputlen >= ((flags & SECP256K1_FLAGS_BIT_COMPRESSION) ? 33 : 65)"
	.section	.rodata.str1.1
.LC13:
	.string	"output != NULL"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"(flags & SECP256K1_FLAGS_TYPE_MASK) == SECP256K1_FLAGS_TYPE_COMPRESSION"
	.text
	.p2align 4,,15
	.globl	secp256k1_ec_pubkey_serialize
	.type	secp256k1_ec_pubkey_serialize, @function
secp256k1_ec_pubkey_serialize:
.LFB202:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13	# ctx, ctx
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$96, %rsp	#,
	.cfi_def_cfa_offset 144
	testq	%rdx, %rdx	# outputlen
	je	.L596	#,
	movl	%r8d, %eax	# flags, tmp301
	movq	%rdx, %r12	# outputlen, outputlen
	movq	(%rdx), %rdx	# *outputlen_4(D), len.15_10
	andl	$256, %eax	#, tmp301
	movl	%r8d, %ebp	# flags, flags
	cmpl	$1, %eax	#, tmp301
	sbbq	%rax, %rax	# iftmp.14_2
	andl	$32, %eax	#, iftmp.14_2
	addq	$33, %rax	#, iftmp.14_2
	cmpq	%rdx, %rax	# len.15_10, iftmp.14_2
	ja	.L597	#,
	testq	%rsi, %rsi	# output
	movq	%rsi, %rbx	# output, output
	movq	$0, (%r12)	#, *outputlen_4(D)
	je	.L598	#,
	movq	%rcx, %r14	# pubkey, pubkey
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# output,
	call	memset	#
	testq	%r14, %r14	# pubkey
	je	.L599	#,
	cmpb	$2, %bpl	#, flags
	jne	.L600	#,
	movq	%r14, %rdx	# pubkey,
	movq	%rsp, %rsi	#,
	movq	%r13, %rdi	# ctx,
	call	secp256k1_pubkey_load	#
	testl	%eax, %eax	# <retval>
	jne	.L601	#,
.L574:
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L601:
	.cfi_restore_state
	movl	80(%rsp), %edx	# MEM[(int *)&Q + 80B],
	xorl	%eax, %eax	# <retval>
	testl	%edx, %edx	#
	jne	.L574	#,
	movq	%rsp, %rdi	#,
	call	secp256k1_fe_normalize_var	#
	leaq	40(%rsp), %rdi	#, tmp318
	call	secp256k1_fe_normalize_var	#
	leaq	32(%rbx), %r11	#, ivtmp.936
	movl	$1, %r9d	#, ivtmp.934
	xorl	%r8d, %r8d	# ivtmp.932
	movl	$1321528399, %r10d	#, tmp321
	.p2align 4,,10
	.p2align 3
.L582:
	movl	%r9d, %eax	# ivtmp.934, tmp396
	leal	0(,%r9,4), %ecx	#, tmp325
	subq	$1, %r11	#, ivtmp.936
	imull	%r10d	# tmp321
	movl	%r9d, %eax	# ivtmp.934, tmp323
	addl	$2, %r9d	#, ivtmp.934
	sarl	$31, %eax	#, tmp323
	sarl	$2, %edx	#, tmp322
	subl	%eax, %edx	# tmp323, limb
	movl	%ecx, %eax	# tmp325, tmp397
	movslq	%edx, %rsi	# limb, limb
	imull	%r10d	# tmp321
	movl	%ecx, %eax	# tmp325, tmp330
	movq	(%rsp,%rsi,8), %rsi	# MEM[(const struct secp256k1_fe *)&Q].n, tmp334
	sarl	$31, %eax	#, tmp330
	sarl	$4, %edx	#, tmp329
	subl	%eax, %edx	# tmp330, tmp326
	movl	%r8d, %eax	# ivtmp.932, tmp398
	imull	$52, %edx, %edx	#, tmp326, tmp331
	subl	%edx, %ecx	# tmp331, shift
	imull	%r10d	# tmp321
	shrq	%cl, %rsi	# shift, tmp333
	movl	%r8d, %eax	# ivtmp.932, tmp341
	leal	0(,%r8,4), %ecx	#, tmp343
	sarl	$31, %eax	#, tmp341
	salq	$4, %rsi	#, tmp335
	movzbl	%sil, %esi	# tmp335, tmp336
	addl	$2, %r8d	#, ivtmp.932
	sarl	$2, %edx	#, tmp340
	subl	%eax, %edx	# tmp341, limb
	movl	%ecx, %eax	# tmp343, tmp399
	movslq	%edx, %rdi	# limb, limb
	imull	%r10d	# tmp321
	movl	%ecx, %eax	# tmp343, tmp348
	sarl	$31, %eax	#, tmp348
	sarl	$4, %edx	#, tmp347
	subl	%eax, %edx	# tmp348, tmp344
	movq	(%rsp,%rdi,8), %rax	# MEM[(const struct secp256k1_fe *)&Q].n, tmp352
	imull	$52, %edx, %edx	#, tmp344, tmp349
	subl	%edx, %ecx	# tmp349, shift
	shrq	%cl, %rax	# shift, tmp351
	andl	$15, %eax	#, tmp353
	orl	%esi, %eax	# tmp336, tmp354
	movb	%al, 1(%r11)	# tmp354, MEM[base: _171, offset: 0B]
	cmpl	$64, %r8d	#, ivtmp.932
	jne	.L582	#,
	andl	$256, %ebp	#, flags
	je	.L583	#,
	testb	$1, 40(%rsp)	#, MEM[(long unsigned int *)&Q + 40B]
	setne	%al	#, tmp395
	addl	$2, %eax	#, iftmp.18_63
	movb	%al, (%rbx)	# iftmp.18_63, *output_18(D)
	movl	$33, %eax	#, len
.L585:
	movq	%rax, (%r12)	# len, *outputlen_4(D)
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	$1, %eax	#, <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L596:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC11, %edi	#,
	call	*176(%r13)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax	# <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L597:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC12, %edi	#,
	call	*176(%r13)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L574	#
	.p2align 4,,10
	.p2align 3
.L598:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC13, %edi	#,
	call	*176(%r13)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L574	#
	.p2align 4,,10
	.p2align 3
.L599:
	movq	184(%r13), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC9, %edi	#,
	call	*176(%r13)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L574	#
	.p2align 4,,10
	.p2align 3
.L600:
	movq	184(%r13), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC14, %edi	#,
	call	*176(%r13)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L574	#
.L583:
	movb	$4, (%rbx)	#, *output_18(D)
	movl	$1, %r9d	#, ivtmp.921
	addq	$64, %rbx	#, ivtmp.923
	xorl	%r8d, %r8d	# ivtmp.919
	movl	$1321528399, %r10d	#, tmp360
	.p2align 4,,10
	.p2align 3
.L586:
	movl	%r9d, %eax	# ivtmp.921, tmp400
	leal	0(,%r9,4), %ecx	#, tmp364
	subq	$1, %rbx	#, ivtmp.923
	imull	%r10d	# tmp360
	movl	%r9d, %eax	# ivtmp.921, tmp362
	addl	$2, %r9d	#, ivtmp.921
	sarl	$31, %eax	#, tmp362
	sarl	$2, %edx	#, tmp361
	subl	%eax, %edx	# tmp362, limb
	movl	%ecx, %eax	# tmp364, tmp401
	movslq	%edx, %rsi	# limb, limb
	imull	%r10d	# tmp360
	movl	%ecx, %eax	# tmp364, tmp369
	movq	40(%rsp,%rsi,8), %rsi	# MEM[(const struct secp256k1_fe *)&Q + 40B].n, tmp373
	sarl	$31, %eax	#, tmp369
	sarl	$4, %edx	#, tmp368
	subl	%eax, %edx	# tmp369, tmp365
	movl	%r8d, %eax	# ivtmp.919, tmp402
	imull	$52, %edx, %edx	#, tmp365, tmp370
	subl	%edx, %ecx	# tmp370, shift
	imull	%r10d	# tmp360
	shrq	%cl, %rsi	# shift, tmp372
	movl	%r8d, %eax	# ivtmp.919, tmp380
	leal	0(,%r8,4), %ecx	#, tmp382
	sarl	$31, %eax	#, tmp380
	salq	$4, %rsi	#, tmp374
	movzbl	%sil, %esi	# tmp374, tmp375
	addl	$2, %r8d	#, ivtmp.919
	sarl	$2, %edx	#, tmp379
	subl	%eax, %edx	# tmp380, limb
	movl	%ecx, %eax	# tmp382, tmp403
	movslq	%edx, %rdi	# limb, limb
	imull	%r10d	# tmp360
	movl	%ecx, %eax	# tmp382, tmp387
	sarl	$31, %eax	#, tmp387
	sarl	$4, %edx	#, tmp386
	subl	%eax, %edx	# tmp387, tmp383
	imull	$52, %edx, %edx	#, tmp383, tmp388
	subl	%edx, %ecx	# tmp388, shift
	movq	40(%rsp,%rdi,8), %rdx	# MEM[(const struct secp256k1_fe *)&Q + 40B].n, tmp391
	shrq	%cl, %rdx	# shift, tmp390
	andl	$15, %edx	#, tmp392
	orl	%esi, %edx	# tmp375, tmp393
	movb	%dl, 1(%rbx)	# tmp393, MEM[base: _210, offset: 0B]
	cmpl	$64, %r8d	#, ivtmp.919
	jne	.L586	#,
	movl	$65, %eax	#, len
	jmp	.L585	#
	.cfi_endproc
.LFE202:
	.size	secp256k1_ec_pubkey_serialize, .-secp256k1_ec_pubkey_serialize
	.section	.rodata.str1.1
.LC15:
	.string	"sig != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ecdsa_signature_parse_der
	.type	secp256k1_ecdsa_signature_parse_der, @function
secp256k1_ecdsa_signature_parse_der:
.LFB205:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rax	# ctx, ctx
	subq	$96, %rsp	#,
	.cfi_def_cfa_offset 112
	testq	%rsi, %rsi	# sig
	je	.L628	#,
	testq	%rdx, %rdx	# input
	je	.L629	#,
	addq	%rdx, %rcx	# input, sigend
	movq	%rsi, %rbx	# sig, sig
	cmpq	%rcx, %rdx	# sigend, input
	je	.L606	#,
	cmpb	$48, (%rdx)	#, *input_9(D)
	leaq	1(%rdx), %rax	#, sig.22_29
	je	.L630	#,
.L606:
	leaq	8(%rbx), %rdi	#, tmp187
	movq	$0, (%rbx)	#,* sig
	movq	$0, 56(%rbx)	#,
	xorl	%eax, %eax	# tmp183
	andq	$-8, %rdi	#, tmp187
	subq	%rdi, %rbx	# tmp187, sig
	leal	64(%rbx), %ecx	#, tmp182
	shrl	$3, %ecx	#,
	rep stosq
.L602:
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L630:
	.cfi_restore_state
	cmpq	%rax, %rcx	# sig.22_29, sigend
	jbe	.L606	#,
	movzbl	1(%rdx), %edi	# MEM[(const unsigned char *)input_9(D) + 1B],
	leaq	2(%rdx), %rax	#, prephitmp_6
	movq	%rax, 24(%rsp)	# prephitmp_6, sig
	cmpl	$255, %edi	#, b1
	movl	%edi, %esi	#,
	je	.L606	#,
	testb	%dil, %dil	# _41
	js	.L631	#,
.L607:
	movslq	%edi, %rdi	# b1, b1
	addq	%rdi, %rax	# b1, tmp168
	cmpq	%rax, %rcx	# tmp168, sigend
	jne	.L606	#,
	leaq	24(%rsp), %rsi	#, tmp196
	leaq	32(%rsp), %rdi	#, tmp197
	movq	%rcx, %rdx	# sigend,
	movq	%rcx, 8(%rsp)	# sigend, %sfp
	call	secp256k1_der_parse_integer	#
	testl	%eax, %eax	# _35
	movq	8(%rsp), %rcx	# %sfp, sigend
	je	.L606	#,
	leaq	24(%rsp), %rsi	#, tmp198
	leaq	64(%rsp), %rdi	#, tmp199
	movq	%rcx, %rdx	# sigend,
	call	secp256k1_der_parse_integer	#
	testl	%eax, %eax	# _36
	je	.L606	#,
	movq	8(%rsp), %rcx	# %sfp, sigend
	cmpq	24(%rsp), %rcx	# sig, sigend
	jne	.L606	#,
	movq	32(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_3(D)]
	movq	40(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_3(D)]
	movq	48(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_3(D)]
	movq	56(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_3(D)]
	movq	64(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_3(D) + 32B]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_3(D) + 32B]
	movq	80(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_3(D) + 32B]
	movq	88(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_3(D) + 32B]
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax	#, <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L628:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC15, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax	# <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L629:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC10, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L602	#
	.p2align 4,,10
	.p2align 3
.L631:
	addl	$-128, %edi	#, b1
	je	.L606	#,
	andl	$127, %esi	#, _41
	movq	%rcx, %r8	# sigend, _49
	movzbl	%sil, %esi	# _41,
	subq	%rax, %r8	# prephitmp_6, _49
	cmpq	%r8, %rsi	# _49, _27
	movq	%rsi, %rdi	#,
	jg	.L606	#,
	movzbl	2(%rdx), %edx	# MEM[(const unsigned char *)input_9(D) + 2B],
	testb	%dl, %dl	# _50
	je	.L606	#,
	leal	-1(%rsi), %r9d	#, tmp160
	cmpb	$7, %r9b	#, tmp160
	ja	.L606	#,
	leaq	(%rsi,%rdx), %r9	#, tmp161
	cmpq	%r9, %r8	# tmp161, _49
	jb	.L606	#,
	subq	$1, %rsi	#, ivtmp.950
	subl	$1, %edi	#, tmp166
	movq	%rsi, %r9	# ivtmp.950, _99
	subq	%rdi, %r9	# tmp166, _99
	jmp	.L609	#
	.p2align 4,,10
	.p2align 3
.L610:
	movzbl	(%rax), %edi	# MEM[base: _63, offset: 0B], MEM[base: _63, offset: 0B]
	salq	$8, %rdx	#, _52
	orq	%rdi, %rdx	# MEM[base: _63, offset: 0B], ret
	movq	%rcx, %rdi	# sigend, tmp163
	leaq	(%rdx,%rsi), %r8	#, _59
	subq	%rax, %rdi	# prephitmp_6, tmp163
	subq	$1, %rsi	#, ivtmp.950
	cmpq	%rdi, %r8	# tmp163, _59
	ja	.L606	#,
.L609:
	addq	$1, %rax	#, prephitmp_6
	cmpq	%r9, %rsi	# _99, ivtmp.950
	jne	.L610	#,
	cmpq	$127, %rdx	#, ret
	movq	%rax, 24(%rsp)	# prephitmp_6, sig
	jbe	.L606	#,
	testl	%edx, %edx	# ret
	movl	%edx, %edi	# ret, b1
	jns	.L607	#,
	jmp	.L606	#
	.cfi_endproc
.LFE205:
	.size	secp256k1_ecdsa_signature_parse_der, .-secp256k1_ecdsa_signature_parse_der
	.section	.rodata.str1.1
.LC16:
	.string	"input64 != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ecdsa_signature_parse_compact
	.type	secp256k1_ecdsa_signature_parse_compact, @function
secp256k1_ecdsa_signature_parse_compact:
.LFB206:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rax	# ctx, ctx
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp	#,
	.cfi_def_cfa_offset 112
	testq	%rsi, %rsi	# sig
	movl	$0, 12(%rsp)	#, overflow
	je	.L644	#,
	testq	%rdx, %rdx	# input64
	movq	%rdx, %rbp	# input64, input64
	je	.L645	#,
	leaq	12(%rsp), %rdx	#, tmp131
	leaq	16(%rsp), %rdi	#, tmp132
	movq	%rsi, %rbx	# sig, sig
	movq	%rbp, %rsi	# input64,
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %eax	# overflow,
	leaq	12(%rsp), %rdx	#, tmp133
	leaq	32(%rbp), %rsi	#, tmp109
	leaq	48(%rsp), %rdi	#, tmp134
	testl	%eax, %eax	#
	sete	%r12b	#, tmp107
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %edx	# overflow,
	testl	%edx, %edx	#
	jne	.L636	#,
	testb	%r12b, %r12b	# tmp107
	je	.L636	#,
	movq	16(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_6(D)]
	movq	24(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_6(D)]
	movq	32(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_6(D)]
	movq	40(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})sig_6(D)]
	movq	48(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_6(D) + 32B]
	movq	56(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_6(D) + 32B]
	movq	64(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_6(D) + 32B]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})sig_6(D) + 32B]
	movl	$1, %eax	#, <retval>
.L632:
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L636:
	.cfi_restore_state
	leaq	8(%rbx), %rdi	#, tmp127
	movq	$0, (%rbx)	#,* sig
	movq	$0, 56(%rbx)	#,
	xorl	%eax, %eax	# tmp123
	andq	$-8, %rdi	#, tmp127
	subq	%rdi, %rbx	# tmp127, sig
	leal	64(%rbx), %ecx	#, tmp122
	shrl	$3, %ecx	#,
	rep stosq
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L644:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_10(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_10(D) + 176B].data
	movl	$.LC15, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_10(D) + 176B].fn
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax	# <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L645:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_10(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_10(D) + 176B].data
	movl	$.LC16, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_10(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L632	#
	.cfi_endproc
.LFE206:
	.size	secp256k1_ecdsa_signature_parse_compact, .-secp256k1_ecdsa_signature_parse_compact
	.p2align 4,,15
	.globl	secp256k1_ecdsa_signature_serialize_der
	.type	secp256k1_ecdsa_signature_serialize_der, @function
secp256k1_ecdsa_signature_serialize_der:
.LFB207:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rax	# ctx, ctx
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$160, %rsp	#,
	.cfi_def_cfa_offset 192
	testq	%rsi, %rsi	# output
	je	.L692	#,
	testq	%rdx, %rdx	# outputlen
	movq	%rdx, %rbx	# outputlen, outputlen
	je	.L693	#,
	testq	%rcx, %rcx	# sig
	je	.L694	#,
	movq	(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})sig_13(D)]
	leaq	65(%rsp), %rdi	#, tmp135
	movq	%rsi, %r14	# output, output
	movq	%rsp, %rsi	#,
	movq	$0, 64(%rsp)	#, r
	movq	$0, 72(%rsp)	#, r
	movq	$0, 80(%rsp)	#, r
	movq	$0, 88(%rsp)	#, r
	movq	%rax, (%rsp)	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})&r]
	movq	8(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})sig_13(D)]
	movb	$0, 96(%rsp)	#, r
	movq	$0, 112(%rsp)	#, s
	movq	$0, 120(%rsp)	#, s
	movq	$0, 128(%rsp)	#, s
	movq	%rax, 8(%rsp)	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})&r]
	movq	16(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})sig_13(D)]
	movq	$0, 136(%rsp)	#, s
	movb	$0, 144(%rsp)	#, s
	movq	%rax, 16(%rsp)	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})&r]
	movq	24(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})sig_13(D)]
	movq	%rax, 24(%rsp)	# MEM[(char * {ref-all})sig_13(D)], MEM[(char * {ref-all})&r]
	movq	32(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})sig_13(D) + 32B]
	movq	%rax, 32(%rsp)	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})&s]
	movq	40(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})sig_13(D) + 32B]
	movq	%rax, 40(%rsp)	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})&s]
	movq	48(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})sig_13(D) + 32B]
	movq	%rax, 48(%rsp)	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})&s]
	movq	56(%rcx), %rax	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})sig_13(D) + 32B]
	movq	%rax, 56(%rsp)	# MEM[(char * {ref-all})sig_13(D) + 32B], MEM[(char * {ref-all})&s]
	call	secp256k1_scalar_get_b32	#
	leaq	32(%rsp), %rsi	#, tmp217
	leaq	113(%rsp), %rdi	#, tmp138
	call	secp256k1_scalar_get_b32	#
	movzbl	64(%rsp), %ecx	# MEM[(unsigned char *)&r], rp__lsm0.958
	leaq	64(%rsp), %rax	#, tmp218
	movl	$33, %esi	#, lenR
	.p2align 4,,10
	.p2align 3
.L651:
	testb	%cl, %cl	# rp__lsm0.958
	jne	.L691	#,
	movzbl	1(%rax), %ecx	# MEM[base: rp_98, offset: 1B], rp__lsm0.958
	testb	%cl, %cl	# rp__lsm0.958
	js	.L691	#,
	subq	$1, %rsi	#, lenR
	addq	$1, %rax	#, rp
	cmpq	$1, %rsi	#, lenR
	jne	.L651	#,
	movl	$7, %r10d	#, _32
.L652:
	movzbl	112(%rsp), %edi	# MEM[(unsigned char *)&s], sp__lsm0.957
	leaq	112(%rsp), %rcx	#, tmp219
	movl	$33, %r8d	#, lenS
	.p2align 4,,10
	.p2align 3
.L655:
	testb	%dil, %dil	# sp__lsm0.957
	jne	.L656	#,
	movzbl	1(%rcx), %edi	# MEM[base: sp_100, offset: 1B], sp__lsm0.957
	testb	%dil, %dil	# sp__lsm0.957
	js	.L656	#,
	subq	$1, %r8	#, lenS
	addq	$1, %rcx	#, sp
	cmpq	$1, %r8	#, lenS
	jne	.L655	#,
.L656:
	leaq	(%r10,%r8), %rdi	#, _48
	cmpq	%rdi, (%rbx)	# _48, *outputlen_9(D)
	movq	%rdi, (%rbx)	# _48, *outputlen_9(D)
	jnb	.L658	#,
	xorl	%eax, %eax	# <retval>
.L646:
	addq	$160, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L691:
	.cfi_restore_state
	leaq	6(%rsi), %r10	#, _32
	jmp	.L652	#
	.p2align 4,,10
	.p2align 3
.L658:
	leal	4(%rsi,%r8), %edx	#, tmp140
	cmpl	$8, %esi	#, lenR
	movb	$48, (%r14)	#, *output_3(D)
	movl	%r8d, %ebx	# lenS, _49
	movb	$2, 2(%r14)	#, MEM[(unsigned char *)output_3(D) + 2B]
	movb	%sil, 3(%r14)	# lenR, MEM[(unsigned char *)output_3(D) + 3B]
	movb	%dl, 1(%r14)	# tmp140, MEM[(unsigned char *)output_3(D) + 1B]
	leaq	4(%r14), %r11	#, tmp141
	jnb	.L660	#,
	testb	$4, %sil	#, lenR
	jne	.L695	#,
	testl	%esi, %esi	# lenR
	je	.L661	#,
	movzbl	(%rax), %edi	#* rp, tmp154
	testb	$2, %sil	#, lenR
	movb	%dil, 4(%r14)	# tmp154,
	jne	.L696	#,
.L661:
	cmpl	$8, %r8d	#, lenS
	movb	$2, 4(%r14,%rsi)	#, *_55
	movb	%bl, 5(%r14,%rsi)	# _49, *_57
	leaq	(%r14,%r10), %r9	#, tmp177
	movl	%r8d, %eax	# lenS,
	jnb	.L666	#,
	andl	$4, %r8d	#, lenS
	jne	.L697	#,
	testl	%eax, %eax	# lenS
	je	.L667	#,
	movzbl	(%rcx), %edx	#* sp, tmp190
	testb	$2, %al	#, lenS
	movb	%dl, (%r9)	# tmp190,
	je	.L667	#,
	movzwl	-2(%rcx,%rax), %edx	#, tmp198
	movw	%dx, -2(%r9,%rax)	# tmp198,
.L667:
	addq	$160, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	$1, %eax	#, <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L660:
	.cfi_restore_state
	movq	(%rax), %rdx	#* rp, tmp163
	movq	%rdx, 4(%r14)	# tmp163,
	movl	%esi, %edx	# lenR, lenR
	movq	-8(%rax,%rdx), %rdi	#, tmp170
	movq	%rdi, -8(%r11,%rdx)	# tmp170,
	leaq	12(%r14), %rdi	#, tmp171
	andq	$-8, %rdi	#, tmp171
	subq	%rdi, %r11	# tmp171, tmp143
	leal	(%rsi,%r11), %edx	#, lenR
	subq	%r11, %rax	# tmp143, rp
	andl	$-8, %edx	#, lenR
	cmpl	$8, %edx	#, lenR
	jb	.L661	#,
	andl	$-8, %edx	#, tmp173
	xorl	%r11d, %r11d	# tmp172
.L664:
	movl	%r11d, %ebp	# tmp172, tmp174
	addl	$8, %r11d	#, tmp172
	movq	(%rax,%rbp), %r9	#, tmp220
	cmpl	%edx, %r11d	# tmp173, tmp172
	movq	%r9, (%rdi,%rbp)	# tmp220,
	jb	.L664	#,
	jmp	.L661	#
	.p2align 4,,10
	.p2align 3
.L692:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC13, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	addq	$160, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax	# <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L666:
	.cfi_restore_state
	movq	(%rcx), %rax	#* sp, tmp199
	movq	%rax, (%r9)	# tmp199,
	movl	%r8d, %eax	# lenS, lenS
	movq	-8(%rcx,%rax), %rdx	#, tmp206
	movq	%rdx, -8(%r9,%rax)	# tmp206,
	leaq	8(%r9), %rdx	#, tmp207
	andq	$-8, %rdx	#, tmp207
	subq	%rdx, %r9	# tmp207, tmp179
	leal	(%r8,%r9), %eax	#, lenS
	subq	%r9, %rcx	# tmp179, sp
	andl	$-8, %eax	#, lenS
	cmpl	$8, %eax	#, lenS
	jb	.L667	#,
	andl	$-8, %eax	#, lenS
	movl	%eax, %r9d	# lenS, tmp209
	xorl	%eax, %eax	# tmp208
.L670:
	movl	%eax, %esi	# tmp208, tmp210
	addl	$8, %eax	#, tmp208
	movq	(%rcx,%rsi), %rdi	#, tmp211
	cmpl	%r9d, %eax	# tmp209, tmp208
	movq	%rdi, (%rdx,%rsi)	# tmp211,
	jb	.L670	#,
	jmp	.L667	#
	.p2align 4,,10
	.p2align 3
.L693:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC11, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L646	#
	.p2align 4,,10
	.p2align 3
.L694:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC15, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L646	#
.L695:
	movl	(%rax), %edi	#* rp, tmp146
	movl	%edi, 4(%r14)	# tmp146,
	movl	%esi, %edi	# lenR, lenR
	movl	-4(%rax,%rdi), %eax	#, tmp153
	movl	%eax, -4(%r11,%rdi)	# tmp153,
	jmp	.L661	#
.L697:
	movl	(%rcx), %edx	#* sp, tmp182
	movl	%edx, (%r9)	# tmp182,
	movl	-4(%rcx,%rax), %edx	#, tmp189
	movl	%edx, -4(%r9,%rax)	# tmp189,
	jmp	.L667	#
.L696:
	movl	%esi, %edi	# lenR, lenR
	movzwl	-2(%rax,%rdi), %eax	#, tmp162
	movw	%ax, -2(%r11,%rdi)	# tmp162,
	jmp	.L661	#
	.cfi_endproc
.LFE207:
	.size	secp256k1_ecdsa_signature_serialize_der, .-secp256k1_ecdsa_signature_serialize_der
	.section	.rodata.str1.1
.LC17:
	.string	"output64 != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ecdsa_signature_serialize_compact
	.type	secp256k1_ecdsa_signature_serialize_compact, @function
secp256k1_ecdsa_signature_serialize_compact:
.LFB208:
	.cfi_startproc
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi	# output64
	movq	%rdi, %rax	# ctx, ctx
	je	.L703	#,
	testq	%rdx, %rdx	# sig
	je	.L704	#,
	movq	(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})sig_9(D)]
	movq	%rsi, %rcx	# output64, output64
	movq	%rsp, %rsi	#,
	movq	%rcx, %rdi	# output64,
	movq	%rax, (%rsp)	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})&r]
	movq	8(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})sig_9(D)]
	movq	%rax, 8(%rsp)	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})&r]
	movq	16(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})sig_9(D)]
	movq	%rax, 16(%rsp)	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})&r]
	movq	24(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})sig_9(D)]
	movq	%rax, 24(%rsp)	# MEM[(char * {ref-all})sig_9(D)], MEM[(char * {ref-all})&r]
	movq	32(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})sig_9(D) + 32B]
	movq	%rax, 32(%rsp)	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})&s]
	movq	40(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})sig_9(D) + 32B]
	movq	%rax, 40(%rsp)	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})&s]
	movq	48(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})sig_9(D) + 32B]
	movq	%rax, 48(%rsp)	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})&s]
	movq	56(%rdx), %rax	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})sig_9(D) + 32B]
	movq	%rax, 56(%rsp)	# MEM[(char * {ref-all})sig_9(D) + 32B], MEM[(char * {ref-all})&s]
	call	secp256k1_scalar_get_b32	#
	leaq	32(%rsp), %rsi	#, tmp112
	leaq	32(%rcx), %rdi	#, tmp110
	call	secp256k1_scalar_get_b32	#
	movl	$1, %eax	#, <retval>
.L698:
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L703:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC17, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L704:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	movl	$.LC15, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L698	#
	.cfi_endproc
.LFE208:
	.size	secp256k1_ecdsa_signature_serialize_compact, .-secp256k1_ecdsa_signature_serialize_compact
	.section	.rodata.str1.1
.LC18:
	.string	"sigin != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ecdsa_signature_normalize
	.type	secp256k1_ecdsa_signature_normalize, @function
secp256k1_ecdsa_signature_normalize:
.LFB209:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 80
	testq	%rdx, %rdx	# sigin
	je	.L716	#,
	movq	40(%rdx), %r10	# MEM[(char * {ref-all})sigin_5(D) + 40B], s$d$1
	movq	32(%rdx), %r13	# MEM[(char * {ref-all})sigin_5(D) + 32B], s$d$0
	movabsq	$9223372036854775806, %rax	#, tmp156
	movq	48(%rdx), %r9	# MEM[(char * {ref-all})sigin_5(D) + 48B], s$d$2
	movq	(%rdx), %r8	# MEM[(char * {ref-all})sigin_5(D)], r$d$0
	xorl	%r12d, %r12d	# tmp155
	movq	8(%rdx), %rdi	# MEM[(char * {ref-all})sigin_5(D) + 8B], r$d$1
	movq	16(%rdx), %rcx	# MEM[(char * {ref-all})sigin_5(D) + 16B], r$d$2
	movq	24(%rdx), %rbx	# MEM[(char * {ref-all})sigin_5(D) + 24B], r$d$3
	movq	56(%rdx), %rdx	# MEM[(char * {ref-all})sigin_5(D) + 56B], s$d$3
	cmpq	%rax, %rdx	# tmp156, s$d$3
	movq	%rdx, %rax	# s$d$3, tmp159
	setbe	%r12b	#, tmp155
	shrq	$63, %rax	#, tmp159
	movl	%r12d, %r11d	# tmp155, tmp160
	notl	%r11d	# tmp160
	andl	%eax, %r11d	# tmp159, _38
	cmpq	$-1, %r9	#, s$d$2
	movabsq	$6725966010171805724, %rax	#, tmp164
	setne	%bpl	#, tmp162
	cmpq	%rax, %r10	# tmp164, s$d$1
	setbe	%al	#, tmp165
	orl	%eax, %ebp	# tmp165, tmp166
	movl	%r11d, %eax	# _38, tmp168
	notl	%eax	# tmp168
	movzbl	%bpl, %ebp	# tmp166, tmp167
	andl	%eax, %ebp	# tmp168, tmp169
	orl	%r12d, %ebp	# tmp155, no
	movl	%ebp, %eax	# no, no
	movabsq	$6725966010171805725, %rbp	#, tmp173
	cmpq	%rbp, %r10	# tmp173, s$d$1
	movabsq	$-2312264954237214560, %rbp	#, tmp176
	notl	%eax	# no
	seta	%r14b	#, tmp174
	cmpq	%rbp, %r13	# tmp176, s$d$0
	seta	%r12b	#, tmp177
	orl	%r12d, %r14d	# tmp177, tmp178
	movzbl	%r14b, %r12d	# tmp178, tmp179
	andl	%r12d, %eax	# tmp179, tmp180
	orl	%r11d, %eax	# _38, <retval>
	testq	%rsi, %rsi	# sigout
	je	.L705	#,
	testl	%eax, %eax	# <retval>
	jne	.L717	#,
.L708:
	movq	%r8, (%rsi)	# r$d$0, MEM[(char * {ref-all})sigout_17(D)]
	movq	%rdi, 8(%rsi)	# r$d$1, MEM[(char * {ref-all})sigout_17(D) + 8B]
	movq	%rcx, 16(%rsi)	# r$d$2, MEM[(char * {ref-all})sigout_17(D) + 16B]
	movq	%rbx, 24(%rsi)	# r$d$3, MEM[(char * {ref-all})sigout_17(D) + 24B]
	movq	%r13, 32(%rsi)	# s$d$0, MEM[(char * {ref-all})sigout_17(D) + 32B]
	movq	%r10, 40(%rsi)	# s$d$1, MEM[(char * {ref-all})sigout_17(D) + 40B]
	movq	%r9, 48(%rsi)	# s$d$2, MEM[(char * {ref-all})sigout_17(D) + 48B]
	movq	%rdx, 56(%rsi)	# s$d$3, MEM[(char * {ref-all})sigout_17(D) + 56B]
.L705:
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L717:
	.cfi_restore_state
	movq	%r10, %r11	# s$d$1, tmp181
	xorl	%ebp, %ebp	# tmp184
	notq	%r10	# s$d$1
	orq	%r13, %r11	# s$d$0, tmp181
	notq	%r13	# s$d$0
	orq	%r9, %r11	# s$d$2, tmp182
	notq	%r9	# s$d$2
	orq	%rdx, %r11	# s$d$3, tmp182
	movq	%r13, %r11	# s$d$0, tmp187
	movabsq	$-4624529908474429118, %r13	#, tmp188
	setne	%bpl	#, tmp184
	xorl	%r14d, %r14d	#
	xorl	%r12d, %r12d	#
	negq	%rbp	# nonzero
	addq	%r13, %r11	# tmp188, tmp187
	movabsq	$-4994812053365940165, %r13	#, tmp192
	adcq	%r14, %r12	#,
	movq	%r11, (%rsp)	# t, %sfp
	xorl	%r14d, %r14d	# t
	movq	%r10, %r11	# s$d$1, tmp190
	movq	%r12, 16(%rsp)	# t, %sfp
	movq	%r14, 24(%rsp)	# t, %sfp
	movq	%r12, 8(%rsp)	# t, %sfp
	xorl	%r14d, %r14d	#
	xorl	%r12d, %r12d	#
	addq	%r13, %r11	# tmp192, tmp191
	movq	%r9, %r13	# s$d$2, tmp194
	movq	$-2, %r9	#, tmp196
	adcq	%r14, %r12	#,
	addq	16(%rsp), %r11	# %sfp, t
	notq	%rdx	# s$d$3
	adcq	24(%rsp), %r12	# %sfp, t
	xorl	%r14d, %r14d	# t
	xorl	%r10d, %r10d	#
	movq	%r14, 24(%rsp)	# t, %sfp
	xorl	%r14d, %r14d	#
	addq	%r13, %r9	# tmp194, tmp195
	adcq	%r14, %r10	#,
	movq	(%rsp), %r13	# %sfp, s$d$0
	movq	%r12, 16(%rsp)	# t, %sfp
	addq	16(%rsp), %r9	# %sfp, t
	movq	%rdx, %r12	# s$d$3, tmp203
	adcq	24(%rsp), %r10	# %sfp, t
	andq	%rbp, %r13	# nonzero, s$d$0
	andq	%rbp, %r9	# nonzero, s$d$2
	addq	%r10, %r12	# t, tmp199
	movq	%r11, %r10	# t, s$d$1
	leaq	-1(%r12), %rdx	#, t
	andq	%rbp, %r10	# nonzero, s$d$1
	andq	%rbp, %rdx	# nonzero, s$d$3
	jmp	.L708	#
	.p2align 4,,10
	.p2align 3
.L716:
	movq	%rdi, %rax	# ctx, ctx
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data
	movl	$.LC18, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].fn
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax	# <retval>
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE209:
	.size	secp256k1_ecdsa_signature_normalize, .-secp256k1_ecdsa_signature_normalize
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"secp256k1_ecmult_context_is_built(&ctx->ecmult_ctx)"
	.section	.rodata.str1.1
.LC20:
	.string	"msg32 != NULL"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"test condition failed: secp256k1_scalar_is_one(&t)"
	.section	.rodata.str1.1
.LC22:
	.string	"scalar_impl.h"
.LC23:
	.string	"%s:%d: %s\n"
	.text
	.p2align 4,,15
	.globl	secp256k1_ecdsa_verify
	.type	secp256k1_ecdsa_verify, @function
secp256k1_ecdsa_verify:
.LFB210:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp	# ctx, ctx
	subq	$712, %rsp	#,
	.cfi_def_cfa_offset 768
	cmpq	$0, (%rdi)	#, MEM[(const struct secp256k1_ecmult_context *)ctx_3(D)].pre_g
	je	.L898	#,
	testq	%rdx, %rdx	# msg32
	movq	%rsi, %rbx	# sig, sig
	movq	%rdx, %rsi	# msg32, msg32
	je	.L899	#,
	testq	%rbx, %rbx	# sig
	je	.L900	#,
	testq	%rcx, %rcx	# pubkey
	je	.L901	#,
	leaq	48(%rsp), %rdi	#, tmp551
	xorl	%edx, %edx	#
	movq	%rcx, 8(%rsp)	# pubkey, %sfp
	call	secp256k1_scalar_set_b32	#
	movq	(%rbx), %rax	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})sig_12(D)]
	movq	56(%rbx), %r12	# MEM[(char * {ref-all})sig_12(D) + 56B], s$d$3
	xorl	%esi, %esi	# tmp314
	movq	40(%rbx), %r13	# MEM[(char * {ref-all})sig_12(D) + 40B], s$d$1
	movq	32(%rbx), %r15	# MEM[(char * {ref-all})sig_12(D) + 32B], s$d$0
	movabsq	$6725966010171805724, %rdi	#, tmp323
	movq	48(%rbx), %r14	# MEM[(char * {ref-all})sig_12(D) + 48B], s$d$2
	movq	8(%rsp), %rcx	# %sfp, pubkey
	movq	%rax, 16(%rsp)	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})&r]
	movq	8(%rbx), %rax	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})sig_12(D)]
	movq	%rax, 24(%rsp)	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})&r]
	movq	16(%rbx), %rax	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})sig_12(D)]
	movq	%rax, 32(%rsp)	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})&r]
	movq	24(%rbx), %rax	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})sig_12(D)]
	movq	%rax, 40(%rsp)	# MEM[(char * {ref-all})sig_12(D)], MEM[(char * {ref-all})&r]
	movabsq	$9223372036854775806, %rax	#, tmp315
	cmpq	%rax, %r12	# tmp315, s$d$3
	movq	%r12, %rax	# s$d$3, tmp318
	setbe	%sil	#, tmp314
	shrq	$63, %rax	#, tmp318
	movl	%esi, %ebx	# tmp314, tmp319
	notl	%ebx	# tmp319
	movl	%ebx, %edx	# tmp319, tmp319
	andl	%eax, %edx	# tmp318, tmp319
	cmpq	$-1, %r14	#, s$d$2
	setne	%al	#, tmp321
	cmpq	%rdi, %r13	# tmp323, s$d$1
	setbe	%bl	#, tmp324
	orl	%ebx, %eax	# tmp324, tmp325
	movzbl	%al, %ebx	# tmp325, tmp326
	movl	%edx, %eax	# _53, tmp327
	notl	%eax	# tmp327
	andl	%eax, %ebx	# tmp327, tmp328
	movabsq	$6725966010171805725, %rax	#, tmp332
	orl	%esi, %ebx	# tmp314, no
	cmpq	%rax, %r13	# tmp332, s$d$1
	movabsq	$-2312264954237214560, %rsi	#, tmp335
	seta	%al	#, tmp333
	cmpq	%rsi, %r15	# tmp335, s$d$0
	notl	%ebx	# tmp330
	seta	%sil	#, tmp336
	orl	%esi, %eax	# tmp336, tmp337
	movzbl	%al, %eax	# tmp337, tmp338
	andl	%eax, %ebx	# tmp338, tmp339
	orl	%edx, %ebx	# _53, <retval>
	je	.L724	#,
.L725:
	xorl	%ebx, %ebx	# <retval>
.L718:
	addq	$712, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L724:
	.cfi_restore_state
	leaq	352(%rsp), %rsi	#, tmp556
	movq	%rcx, %rdx	# pubkey,
	movq	%rbp, %rdi	# ctx,
	call	secp256k1_pubkey_load	#
	testl	%eax, %eax	# _24
	je	.L725	#,
	movq	16(%rsp), %rax	# r.d, r.d
	orq	24(%rsp), %rax	# r.d, tmp341
	orq	32(%rsp), %rax	# r.d, tmp343
	orq	40(%rsp), %rax	# r.d, tmp343
	je	.L718	#,
	movq	%r13, %rax	# s$d$1, tmp345
	orq	%r15, %rax	# s$d$0, tmp345
	orq	%r14, %rax	# s$d$2, tmp346
	orq	%r12, %rax	# s$d$3, tmp346
	je	.L718	#,
	movq	%r15, 8(%rsp)	# s$d$0, %sfp
	leaq	144(%rsp), %rsi	#, tmp566
	leaq	112(%rsp), %rdi	#, tmp567
	movq	8(%rsp), %xmm0	# %sfp, tmp348
	movq	%r13, 8(%rsp)	# s$d$1, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp348
	movq	%r14, 8(%rsp)	# s$d$2, %sfp
	movaps	%xmm0, 144(%rsp)	# tmp348, MEM[(struct  *)&t]
	movq	8(%rsp), %xmm0	# %sfp, tmp349
	movq	%r12, 8(%rsp)	# s$d$3, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp349
	movaps	%xmm0, 160(%rsp)	# tmp349, MEM[(struct  *)&t + 16B]
	call	secp256k1_scalar_get_b32	#
	leaq	112(%rsp), %rsi	#, tmp568
	leaq	448(%rsp), %rdi	#, tmp569
	movl	$256, %ecx	#,
	movl	$32, %edx	#,
	call	__gmpn_set_str	#
	testl	%eax, %eax	# _199
	jne	.L728	#,
	movq	$0, 448(%rsp)	#, n.data
	movl	$1, 516(%rsp)	#, n.limbs
	movl	$0, 512(%rsp)	#, n.neg
.L729:
	leaq	576(%rsp), %rdi	#, tmp570
	movl	$256, %ecx	#,
	movl	$32, %edx	#,
	movl	$order.5397, %esi	#,
	call	__gmpn_set_str	#
	testl	%eax, %eax	# _191
	movl	%eax, %r12d	# _191, len
	jne	.L902	#,
	movq	$0, 576(%rsp)	#, m.data
	movl	$1, 644(%rsp)	#, m.limbs
	movl	$1, %r12d	#, len
	movl	$0, 640(%rsp)	#, m.neg
.L739:
	movl	516(%rsp), %edx	# n.limbs, pretmp_299
	xorl	%eax, %eax	# tmp538
	movq	%rax, %rcx	# tmp538, iftmp.29_377
	testl	%edx, %edx	# pretmp_299
	cmovg	448(%rsp), %rcx	# n.data,, iftmp.29_377
	cmpl	$1, %r12d	#, len
	movq	%rcx, 224(%rsp)	# iftmp.29_377, u
	je	.L743	#,
	cmpl	$2, %edx	#, pretmp_299
	movq	%rax, %rcx	# tmp538, iftmp.29_383
	cmovge	456(%rsp), %rcx	# n.data,, iftmp.29_383
	cmpl	$2, %r12d	#, len
	movq	%rcx, 232(%rsp)	# iftmp.29_383, u
	je	.L743	#,
	cmpl	$3, %edx	#, pretmp_299
	movq	%rax, %rcx	# tmp538, iftmp.29_389
	cmovge	464(%rsp), %rcx	# n.data,, iftmp.29_389
	cmpl	$3, %r12d	#, len
	movq	%rcx, 240(%rsp)	# iftmp.29_389, u
	je	.L743	#,
	cmpl	$4, %edx	#, pretmp_299
	movq	%rax, %rcx	# tmp538, iftmp.29_395
	cmovge	472(%rsp), %rcx	# n.data,, iftmp.29_395
	cmpl	$4, %r12d	#, len
	movq	%rcx, 248(%rsp)	# iftmp.29_395, u
	je	.L743	#,
	cmpl	$4, %edx	#, pretmp_299
	cmovg	480(%rsp), %rax	# tmp538,, n.data, iftmp.29_73
	movq	%rax, 256(%rsp)	# iftmp.29_73, u
.L743:
	leal	-1(%r12), %eax	#, tmp383
	leaq	272(%rsp), %r13	#, tmp535
	leaq	576(%rsp), %rsi	#, tmp579
	leaq	8(,%rax,8), %rdx	#, tmp385
	movq	%r13, %rdi	# tmp535,
	call	memcpy	#
.L749:
	movq	$5, 80(%rsp)	#, sn
	movslq	%r12d, %r8	# len, _155
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 776
	pushq	%r8	# _155
	.cfi_def_cfa_offset 784
	movq	%r13, %r9	# tmp535,
	leaq	240(%rsp), %rcx	#, tmp571
	leaq	96(%rsp), %rdx	#, tmp572
	leaq	464(%rsp), %rsi	#, tmp573
	leaq	192(%rsp), %rdi	#, tmp574
	call	__gmpn_gcdext	#
	movq	96(%rsp), %r14	# sn, sn.30_160
	movl	656(%rsp), %eax	# m.neg, m.neg
	xorl	%eax, 528(%rsp)	# m.neg, n.neg
	popq	%rdx	#
	.cfi_def_cfa_offset 776
	testq	%r14, %r14	# sn.30_160
	popq	%rcx	#
	.cfi_def_cfa_offset 768
	js	.L903	#,
	movl	%r14d, 516(%rsp)	# sn.30_160, n.limbs
.L759:
	leaq	176(%rsp), %rdi	#, tmp586
	movl	$40, %esi	#,
	call	explicit_bzero	#
	leaq	224(%rsp), %rdi	#, tmp587
	movl	$40, %esi	#,
	call	explicit_bzero	#
	movl	$40, %esi	#,
	movq	%r13, %rdi	# tmp535,
	call	explicit_bzero	#
	movslq	516(%rsp), %rcx	# n.limbs,
	cmpl	$1, %ecx	#, _122
	jg	.L762	#,
	cmpq	$0, 448(%rsp)	#, n.data
	jne	.L762	#,
	movl	$32, %edx	#, _120
.L763:
	leaq	112(%rsp), %rdi	#, tmp615
	xorl	%esi, %esi	#
	call	memset	#
.L771:
	movl	$65, %esi	#,
	movq	%r13, %rdi	# tmp535,
	call	explicit_bzero	#
	leaq	112(%rsp), %rsi	#, tmp589
	leaq	80(%rsp), %rdi	#, tmp590
	xorl	%edx, %edx	#
	call	secp256k1_scalar_set_b32	#
	leaq	80(%rsp), %rdx	#, tmp591
	leaq	144(%rsp), %rsi	#, tmp592
	movq	%r13, %rdi	# tmp535,
	call	secp256k1_scalar_mul_512	#
	leaq	144(%rsp), %rdi	#, tmp593
	movq	%r13, %rsi	# tmp535,
	call	secp256k1_scalar_reduce_512	#
	movq	152(%rsp), %rax	# t.d, t.d
	orq	160(%rsp), %rax	# t.d, tmp449
	orq	168(%rsp), %rax	# t.d, tmp451
	movq	144(%rsp), %rdx	# t.d, tmp452
	xorq	$1, %rdx	#, tmp452
	orq	%rdx, %rax	# tmp452, tmp451
	jne	.L904	#,
	leaq	48(%rsp), %rdx	#, tmp596
	leaq	80(%rsp), %rsi	#, tmp597
	leaq	576(%rsp), %rdi	#, tmp598
	call	secp256k1_scalar_mul_512	#
	leaq	576(%rsp), %rsi	#, tmp599
	leaq	176(%rsp), %rdi	#, tmp600
	call	secp256k1_scalar_reduce_512	#
	leaq	16(%rsp), %rdx	#,
	leaq	80(%rsp), %rsi	#, tmp601
	leaq	576(%rsp), %rdi	#, tmp602
	call	secp256k1_scalar_mul_512	#
	leaq	576(%rsp), %rsi	#, tmp603
	leaq	224(%rsp), %rdi	#, tmp604
	call	secp256k1_scalar_reduce_512	#
	movl	432(%rsp), %eax	# q.infinity, q.infinity
	leaq	176(%rsp), %r8	#, tmp605
	leaq	224(%rsp), %rcx	#, tmp606
	leaq	448(%rsp), %rdx	#, tmp607
	leaq	576(%rsp), %rsi	#, tmp608
	movq	%rbp, %rdi	# ctx,
	movq	$1, 528(%rsp)	#, MEM[(struct secp256k1_fe *)&pubkeyj + 80B].n
	movq	$0, 560(%rsp)	#, MEM[(struct secp256k1_fe *)&pubkeyj + 80B].n
	movl	%eax, 568(%rsp)	# q.infinity, pubkeyj.infinity
	movq	352(%rsp), %rax	# q.x, q.x
	movq	$0, 552(%rsp)	#, MEM[(struct secp256k1_fe *)&pubkeyj + 80B].n
	movq	$0, 544(%rsp)	#, MEM[(struct secp256k1_fe *)&pubkeyj + 80B].n
	movq	$0, 536(%rsp)	#, MEM[(struct secp256k1_fe *)&pubkeyj + 80B].n
	movq	%rax, 448(%rsp)	# q.x, pubkeyj.x
	movq	360(%rsp), %rax	# q.x, q.x
	movq	%rax, 456(%rsp)	# q.x, pubkeyj.x
	movq	368(%rsp), %rax	# q.x, q.x
	movq	%rax, 464(%rsp)	# q.x, pubkeyj.x
	movq	376(%rsp), %rax	# q.x, q.x
	movq	%rax, 472(%rsp)	# q.x, pubkeyj.x
	movq	384(%rsp), %rax	# q.x, q.x
	movq	%rax, 480(%rsp)	# q.x, pubkeyj.x
	movq	392(%rsp), %rax	# q.y, q.y
	movq	%rax, 488(%rsp)	# q.y, pubkeyj.y
	movq	400(%rsp), %rax	# q.y, q.y
	movq	%rax, 496(%rsp)	# q.y, pubkeyj.y
	movq	408(%rsp), %rax	# q.y, q.y
	movq	%rax, 504(%rsp)	# q.y, pubkeyj.y
	movq	416(%rsp), %rax	# q.y, q.y
	movq	%rax, 512(%rsp)	# q.y, pubkeyj.y
	movq	424(%rsp), %rax	# q.y, q.y
	movq	%rax, 520(%rsp)	# q.y, pubkeyj.y
	call	secp256k1_ecmult.constprop.14	#
	movl	696(%rsp), %eax	# MEM[(int *)&pr + 120B],
	testl	%eax, %eax	#
	jne	.L718	#,
	leaq	16(%rsp), %rsi	#,
	leaq	144(%rsp), %rdi	#, tmp609
	call	secp256k1_scalar_get_b32	#
	leaq	144(%rsp), %rsi	#, tmp610
	movq	%r13, %rdi	# tmp535,
	call	secp256k1_fe_set_b32	#
	leaq	576(%rsp), %rsi	#, tmp611
	movq	%r13, %rdi	# tmp535,
	call	secp256k1_gej_eq_x_var	#
	testl	%eax, %eax	# _91
	jne	.L769	#,
	cmpq	$0, 304(%rsp)	#, xr.n
	jne	.L718	#,
	cmpq	$0, 296(%rsp)	#, xr.n
	jne	.L718	#,
	cmpq	$21319971, 288(%rsp)	#, xr.n
	ja	.L718	#,
	jne	.L770	#,
	movabsq	$445351433356290, %rax	#, tmp486
	cmpq	%rax, 280(%rsp)	# tmp486, xr.n
	ja	.L718	#,
	jne	.L770	#,
	movq	272(%rsp), %rax	# xr.n, _93
	movabsq	$3836686497331950, %rdx	#, tmp488
	cmpq	%rdx, %rax	# tmp488, _93
	ja	.L718	#,
	cmpq	%rdx, %rax	# tmp489, _93
	je	.L718	#,
.L770:
	leaq	576(%rsp), %rsi	#, tmp617
	movabsq	$666908835070273, %rax	#, tmp520
	movq	%r13, %rdi	# tmp535,
	addq	%rax, 272(%rsp)	# tmp520, xr.n
	movabsq	$4058248194014205, %rax	#, tmp521
	addq	%rax, 280(%rsp)	# tmp521, xr.n
	movabsq	$4503599606050524, %rax	#, tmp522
	addq	%rax, 288(%rsp)	# tmp522, xr.n
	movabsq	$4503599627370495, %rax	#, tmp523
	addq	%rax, 296(%rsp)	# tmp523, xr.n
	movabsq	$281474976710655, %rax	#, tmp616
	movq	%rax, 304(%rsp)	# tmp616, xr.n
	call	secp256k1_gej_eq_x_var	#
	testl	%eax, %eax	# _107
	je	.L718	#,
.L769:
	movl	$1, %ebx	#, <retval>
	jmp	.L718	#
	.p2align 4,,10
	.p2align 3
.L898:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data
	xorl	%ebx, %ebx	# <retval>
	movl	$.LC19, %edi	#,
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].fn
	jmp	.L718	#
	.p2align 4,,10
	.p2align 3
.L899:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data
	xorl	%ebx, %ebx	# <retval>
	movl	$.LC20, %edi	#,
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].fn
	jmp	.L718	#
	.p2align 4,,10
	.p2align 3
.L900:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data
	movl	$.LC15, %edi	#,
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].fn
	jmp	.L718	#
	.p2align 4,,10
	.p2align 3
.L901:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data
	xorl	%ebx, %ebx	# <retval>
	movl	$.LC9, %edi	#,
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].fn
	jmp	.L718	#
	.p2align 4,,10
	.p2align 3
.L762:
	leaq	448(%rsp), %rdx	#, tmp588
	movl	$256, %esi	#,
	movq	%r13, %rdi	# tmp535,
	call	__gmpn_get_str	#
	movl	$32, %edx	#, tmp432
	movq	%rax, %r14	#, _126
	subl	%eax, %edx	# _126, _120
	testl	%eax, %eax	# _126
	jle	.L763	#,
	cmpb	$0, 272(%rsp)	#, tmp
	jne	.L793	#,
	leal	-1(%rax), %edx	#, tmp434
	movl	$1, %eax	#, ivtmp.1001
	addq	$1, %rdx	#, _154
	.p2align 4,,10
	.p2align 3
.L767:
	cmpq	%rax, %rdx	# ivtmp.1001, _154
	movl	%eax, %r12d	# ivtmp.1001, shift
	je	.L905	#,
	addq	$1, %rax	#, ivtmp.1001
	cmpb	$0, 271(%rsp,%rax)	#, MEM[symbol: tmp, index: ivtmp.1001_330, offset: -1B]
	je	.L767	#,
.L765:
	movl	%r12d, %eax	# shift, tmp491
	leaq	112(%rsp), %rdi	#, tmp613
	xorl	%esi, %esi	#
	subl	%r14d, %eax	# _126, tmp491
	leal	32(%rax), %edx	#, tmp494
	call	memset	#
	movslq	%r12d, %rax	# shift, _139
	movslq	%r14d, %rdx	# _126, len
	subl	%r12d, %r14d	# shift, tmp506
	movq	%rax, %rcx	# _139, tmp502
	leaq	0(%r13,%rax), %rsi	#, tmp509
	subq	%rdx, %rcx	# len, tmp502
	movslq	%r14d, %rdx	# tmp506, tmp507
	leaq	144(%rsp,%rcx), %rdi	#, tmp505
	call	memcpy	#
	jmp	.L771	#
	.p2align 4,,10
	.p2align 3
.L902:
	cmpl	$1, %eax	#, _191
	movl	%eax, 644(%rsp)	# _191, m.limbs
	movl	$0, 640(%rsp)	#, m.neg
	jle	.L736	#,
	leal	-1(%rax), %edx	#, _18
	movslq	%edx, %rcx	# _18, _18
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L739	#,
	cmpl	$1, %edx	#, _18
	je	.L737	#,
	leal	-2(%rax), %r12d	#, _401
	movslq	%r12d, %rcx	# _401, _401
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L782	#,
	cmpl	$1, %r12d	#, _401
	je	.L737	#,
	leal	-3(%rax), %edx	#, _405
	movslq	%edx, %rcx	# _405, _405
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L738	#,
	cmpl	$1, %edx	#, _405
	je	.L737	#,
	leal	-4(%rax), %r12d	#, _409
	movslq	%r12d, %rcx	# _409, _409
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L782	#,
	cmpl	$1, %r12d	#, _409
	je	.L737	#,
	leal	-5(%rax), %edx	#, _413
	movslq	%edx, %rcx	# _413, _413
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L738	#,
	cmpl	$1, %edx	#, _413
	je	.L737	#,
	leal	-6(%rax), %r12d	#, _417
	movslq	%r12d, %rcx	# _417, _417
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L782	#,
	cmpl	$1, %r12d	#, _417
	je	.L737	#,
	leal	-7(%rax), %edx	#, _421
	movslq	%edx, %rcx	# _421, _421
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L738	#,
	cmpl	$1, %edx	#, _421
	je	.L737	#,
	leal	-8(%rax), %r12d	#, _425
	movslq	%r12d, %rcx	# _425, _425
	cmpq	$0, 576(%rsp,%rcx,8)	#, m.data
	jne	.L782	#,
	cmpl	$1, %r12d	#, _425
	je	.L737	#,
	subl	$9, %eax	#, tmp373
	cltq
	cmpq	$0, 576(%rsp,%rax,8)	#, m.data
	jne	.L738	#,
.L737:
	movl	$1, 644(%rsp)	#, m.limbs
	movl	$1, %r12d	#, len
	jmp	.L739	#
	.p2align 4,,10
	.p2align 3
.L728:
	cmpl	$1, %eax	#, _199
	movl	%eax, 516(%rsp)	# _199, n.limbs
	movl	$0, 512(%rsp)	#, n.neg
	jle	.L729	#,
	leal	-1(%rax), %edx	#, n_limbs_lsm.995
	movslq	%edx, %rcx	# n_limbs_lsm.995, n_limbs_lsm.995
	cmpq	$0, 448(%rsp,%rcx,8)	#, n.data
	jne	.L729	#,
	cmpl	$1, %edx	#, n_limbs_lsm.995
	je	.L733	#,
	leal	-2(%rax), %ecx	#, _433
	movslq	%ecx, %rsi	# _433, _433
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L734	#,
	cmpl	$1, %ecx	#, _433
	je	.L733	#,
	leal	-3(%rax), %edx	#, n_limbs_lsm.995
	movslq	%edx, %rsi	# n_limbs_lsm.995, n_limbs_lsm.995
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L775	#,
	cmpl	$1, %edx	#, n_limbs_lsm.995
	je	.L733	#,
	leal	-4(%rax), %ecx	#, _441
	movslq	%ecx, %rsi	# _441, _441
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L734	#,
	cmpl	$1, %ecx	#, _441
	je	.L733	#,
	leal	-5(%rax), %edx	#, n_limbs_lsm.995
	movslq	%edx, %rsi	# n_limbs_lsm.995, n_limbs_lsm.995
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L775	#,
	cmpl	$1, %edx	#, n_limbs_lsm.995
	je	.L733	#,
	leal	-6(%rax), %esi	#, _449
	movslq	%esi, %rcx	# _449, _449
	cmpq	$0, 448(%rsp,%rcx,8)	#, n.data
	jne	.L734	#,
	cmpl	$1, %esi	#, _449
	je	.L733	#,
	leal	-7(%rax), %ecx	#, _453
	movslq	%ecx, %rdx	# _453, _453
	cmpq	$0, 448(%rsp,%rdx,8)	#, n.data
	jne	.L774	#,
	cmpl	$1, %ecx	#, _453
	je	.L733	#,
	leal	-8(%rax), %edx	#, n_limbs_lsm.995
	movslq	%edx, %rsi	# n_limbs_lsm.995, n_limbs_lsm.995
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L775	#,
	cmpl	$1, %edx	#, n_limbs_lsm.995
	je	.L733	#,
	subl	$9, %eax	#, tmp363
	cltq
	cmpq	$0, 448(%rsp,%rax,8)	#, n.data
	jne	.L734	#,
.L733:
	movl	$1, 516(%rsp)	#, n.limbs
	jmp	.L729	#
.L782:
	movl	%edx, %r12d	# _421, len
.L738:
	movl	%r12d, 644(%rsp)	# len, m.limbs
	jmp	.L739	#
.L775:
	movl	%ecx, %edx	# _453, n_limbs_lsm.995
.L734:
	movl	%edx, 516(%rsp)	# n_limbs_lsm.995, n.limbs
	jmp	.L729	#
.L905:
	subl	%r14d, %edx	# _126, tmp435
	addl	$32, %edx	#, _120
	jmp	.L763	#
.L903:
	leaq	448(%rsp), %rdx	#, tmp581
	movq	%r14, %r12	# sn.30_160, __gmp_j
	leaq	576(%rsp), %rsi	#, tmp582
	negq	%r12	# __gmp_j
	movslq	644(%rsp), %r15	# m.limbs, _162
	movq	%r12, %rcx	# __gmp_j,
	movq	%rdx, %rdi	# tmp581, tmp583
	call	__gmpn_sub_n	#
	testq	%rax, %rax	# _165
	je	.L756	#,
	cmpq	%r15, %r12	# _162, __gmp_j
	jge	.L754	#,
	leaq	0(,%r12,8), %rdx	#, tmp397
	movl	$1, %r12d	#, tmp398
	subq	%r14, %r12	# sn.30_160, __gmp_j
	movq	576(%rsp,%rdx), %rax	# *_11, __gmp_x
	leaq	-1(%rax), %rcx	#, tmp399
	testq	%rax, %rax	# __gmp_x
	movq	%rcx, 448(%rsp,%rdx)	# tmp399, *_5
	je	.L858	#,
	jmp	.L756	#
	.p2align 4,,10
	.p2align 3
.L894:
	movq	576(%rsp,%r12,8), %rax	# MEM[symbol: m, index: _233, step: 8, offset: 0B], __gmp_x
	addq	$1, %r12	#, __gmp_j
	leaq	-1(%rax), %rdx	#, tmp402
	testq	%rax, %rax	# __gmp_x
	movq	%rdx, 440(%rsp,%r12,8)	# tmp402, MEM[symbol: n, index: _376, step: 8, offset: -8B]
	jne	.L756	#,
.L858:
	cmpq	%r15, %r12	# _162, __gmp_j
	jl	.L894	#,
.L754:
	movl	644(%rsp), %eax	# m.limbs, _181
	cmpl	$1, %eax	#, _181
	movl	%eax, 516(%rsp)	# _181, n.limbs
	jle	.L759	#,
	leal	-1(%rax), %edx	#, n_limbs_lsm.991
	movslq	%edx, %rcx	# n_limbs_lsm.991, n_limbs_lsm.991
	cmpq	$0, 448(%rsp,%rcx,8)	#, n.data
	jne	.L759	#,
	cmpl	$1, %edx	#, n_limbs_lsm.991
	je	.L760	#,
	leal	-2(%rax), %ecx	#, _183
	movslq	%ecx, %rsi	# _183, _183
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L761	#,
	cmpl	$1, %ecx	#, _183
	je	.L760	#,
	leal	-3(%rax), %edx	#, n_limbs_lsm.991
	movslq	%edx, %rsi	# n_limbs_lsm.991, n_limbs_lsm.991
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L791	#,
	cmpl	$1, %edx	#, n_limbs_lsm.991
	je	.L760	#,
	leal	-4(%rax), %ecx	#, _113
	movslq	%ecx, %rsi	# _113, _113
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L761	#,
	cmpl	$1, %ecx	#, _113
	je	.L760	#,
	leal	-5(%rax), %edx	#, n_limbs_lsm.991
	movslq	%edx, %rsi	# n_limbs_lsm.991, n_limbs_lsm.991
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L791	#,
	cmpl	$1, %edx	#, n_limbs_lsm.991
	je	.L760	#,
	leal	-6(%rax), %esi	#, _241
	movslq	%esi, %rcx	# _241, _241
	cmpq	$0, 448(%rsp,%rcx,8)	#, n.data
	jne	.L761	#,
	cmpl	$1, %esi	#, _241
	je	.L760	#,
	leal	-7(%rax), %ecx	#, _197
	movslq	%ecx, %rdx	# _197, _197
	cmpq	$0, 448(%rsp,%rdx,8)	#, n.data
	jne	.L790	#,
	cmpl	$1, %ecx	#, _197
	je	.L760	#,
	leal	-8(%rax), %edx	#, n_limbs_lsm.991
	movslq	%edx, %rsi	# n_limbs_lsm.991, n_limbs_lsm.991
	cmpq	$0, 448(%rsp,%rsi,8)	#, n.data
	jne	.L791	#,
	cmpl	$1, %edx	#, n_limbs_lsm.991
	je	.L760	#,
	subl	$9, %eax	#, tmp423
	cltq
	cmpq	$0, 448(%rsp,%rax,8)	#, n.data
	jne	.L761	#,
.L760:
	movl	$1, 516(%rsp)	#, n.limbs
	jmp	.L759	#
.L756:
	cmpq	%r12, %r15	# __gmp_j, _162
	jle	.L754	#,
	leaq	0(,%r12,8), %rax	#, _56
	leaq	448(%rsp), %rcx	#, tmp584
	subq	%r12, %r15	# __gmp_j, tmp406
	leaq	0(,%r15,8), %rdx	#, tmp407
	leaq	(%rcx,%rax), %rdi	#, tmp404
	leaq	576(%rsp), %rcx	#, tmp585
	leaq	(%rcx,%rax), %rsi	#, tmp409
	call	memcpy	#
	jmp	.L754	#
.L904:
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC21, %r8d	#,
	movl	$277, %ecx	#,
	movl	$.LC22, %edx	#,
	movl	$.LC23, %esi	#,
	xorl	%eax, %eax	#
	call	fprintf	#
	call	abort	#
.L791:
	movl	%ecx, %edx	# _197, n_limbs_lsm.991
.L761:
	movl	%edx, 516(%rsp)	# n_limbs_lsm.991, n.limbs
	jmp	.L759	#
.L774:
	movl	%esi, %edx	# _449, n_limbs_lsm.995
	jmp	.L734	#
.L793:
	xorl	%r12d, %r12d	# shift
	jmp	.L765	#
.L790:
	movl	%esi, %edx	# _241, n_limbs_lsm.991
	jmp	.L761	#
.L736:
	testl	%eax, %eax	# _191
	jg	.L739	#,
	leaq	272(%rsp), %r13	#, tmp535
	jmp	.L749	#
	.cfi_endproc
.LFE210:
	.size	secp256k1_ecdsa_verify, .-secp256k1_ecdsa_verify
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"secp256k1_ecmult_gen_context_is_built(&ctx->ecmult_gen_ctx)"
	.section	.rodata.str1.1
.LC25:
	.string	"signature != NULL"
.LC26:
	.string	"seckey != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ecdsa_sign
	.type	secp256k1_ecdsa_sign, @function
secp256k1_ecdsa_sign:
.LFB212:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %rax	# ctx, ctx
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$616, %rsp	#,
	.cfi_def_cfa_offset 672
	cmpq	$0, 8(%rdi)	#, MEM[(struct secp256k1_ge_storage[64][16] * *)ctx_12(D) + 8B]
	movq	%rdi, (%rsp)	# ctx, %sfp
	movl	$0, 40(%rsp)	#, overflow
	je	.L934	#,
	testq	%rdx, %rdx	# msg32
	movq	%rdx, %r15	# msg32, msg32
	je	.L935	#,
	testq	%rsi, %rsi	# signature
	movq	%rsi, %rbx	# signature, signature
	je	.L936	#,
	testq	%rcx, %rcx	# seckey
	movq	%rcx, %r12	# seckey, seckey
	je	.L937	#,
	leaq	40(%rsp), %rdx	#, tmp508
	leaq	112(%rsp), %rdi	#, tmp509
	testq	%r8, %r8	# noncefp
	movq	%r8, %r14	# noncefp, noncefp
	movl	$nonce_function_rfc6979, %eax	#, tmp466
	movq	%rcx, %rsi	# seckey,
	cmove	%rax, %r14	# noncefp,, tmp466, noncefp
	movq	%r9, %rbp	# noncedata, noncedata
	call	secp256k1_scalar_set_b32	#
	movl	40(%rsp), %r10d	# overflow,
	testl	%r10d, %r10d	#
	jne	.L913	#,
	movq	112(%rsp), %rax	# sec.d, sec.d
	orq	120(%rsp), %rax	# sec.d, tmp275
	orq	128(%rsp), %rax	# sec.d, tmp277
	orq	136(%rsp), %rax	# sec.d, tmp277
	jne	.L938	#,
.L913:
	leaq	8(%rbx), %rdi	#, tmp436
	movq	$0, (%rbx)	#,* signature
	movq	$0, 56(%rbx)	#,
	xorl	%eax, %eax	# tmp432
	xorl	%ebp, %ebp	# <retval>
	andq	$-8, %rdi	#, tmp436
	subq	%rdi, %rbx	# tmp436, signature
	leal	64(%rbx), %ecx	#, tmp431
	shrl	$3, %ecx	#,
	rep stosq
.L906:
	addq	$616, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L934:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC24, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L906	#
	.p2align 4,,10
	.p2align 3
.L938:
	leaq	176(%rsp), %rdi	#, tmp511
	xorl	%edx, %edx	#
	movq	%r15, %rsi	# msg32,
	xorl	%r13d, %r13d	# count
	call	secp256k1_scalar_set_b32	#
	leaq	560(%rsp), %rax	#, tmp468
	movq	%rbx, 24(%rsp)	# signature, %sfp
	movq	%rbp, %rbx	# noncedata, noncedata
	movq	%rax, 8(%rsp)	# tmp468, %sfp
	leaq	424(%rsp), %rax	#, tmp470
	movq	%rax, 16(%rsp)	# tmp470, %sfp
	jmp	.L919	#
	.p2align 4,,10
	.p2align 3
.L915:
	addl	$1, %r13d	#, count
.L919:
	xorl	%ecx, %ecx	#
	movl	%r13d, %r9d	# count,
	movq	%rbx, %r8	# noncedata,
	movq	%r12, %rdx	# seckey,
	movq	%r15, %rsi	# msg32,
	leaq	208(%rsp), %rdi	#, tmp516
	call	*%r14	# noncefp
	testl	%eax, %eax	# <retval>
	movl	%eax, %ebp	#, <retval>
	je	.L914	#,
	leaq	40(%rsp), %rdx	#, tmp517
	leaq	208(%rsp), %rsi	#, tmp518
	leaq	144(%rsp), %rdi	#, tmp519
	call	secp256k1_scalar_set_b32	#
	movl	40(%rsp), %r9d	# overflow,
	testl	%r9d, %r9d	#
	jne	.L915	#,
	movq	144(%rsp), %rax	# non.d, non.d
	orq	152(%rsp), %rax	# non.d, tmp284
	orq	160(%rsp), %rax	# non.d, tmp286
	orq	168(%rsp), %rax	# non.d, tmp286
	je	.L915	#,
	movq	(%rsp), %rax	# %sfp, ctx
	leaq	144(%rsp), %rdx	#, tmp522
	leaq	480(%rsp), %rsi	#, tmp523
	movl	$0, 44(%rsp)	#, overflow
	leaq	8(%rax), %rdi	#, tmp290
	call	secp256k1_ecmult_gen	#
	movl	600(%rsp), %eax	# rp.infinity, rp.infinity
	movl	%eax, 464(%rsp)	# rp.infinity, r.infinity
	movq	8(%rsp), %rax	# %sfp, tmp468
	movq	%rax, %rsi	# tmp468,
	movq	%rax, %rdi	# tmp468,
	call	secp256k1_fe_inv	#
	movq	8(%rsp), %rsi	# %sfp,
	leaq	272(%rsp), %rdi	#, tmp524
	call	secp256k1_fe_sqr_inner	#
	movq	8(%rsp), %rsi	# %sfp,
	leaq	272(%rsp), %rdx	#, tmp525
	leaq	320(%rsp), %rdi	#, tmp526
	call	secp256k1_fe_mul_inner	#
	leaq	480(%rsp), %rsi	#, tmp528
	leaq	272(%rsp), %rdx	#, tmp527
	movq	%rsi, %rdi	# tmp528, tmp529
	call	secp256k1_fe_mul_inner	#
	leaq	520(%rsp), %rdi	#, tmp308
	leaq	320(%rsp), %rdx	#, tmp531
	movq	%rdi, %rsi	# tmp308,
	call	secp256k1_fe_mul_inner	#
	movq	480(%rsp), %rax	# rp.x, rp.x
	leaq	384(%rsp), %rdi	#, tmp532
	movq	$1, 560(%rsp)	#, MEM[(struct secp256k1_fe *)&rp + 80B].n
	movq	$0, 592(%rsp)	#, MEM[(struct secp256k1_fe *)&rp + 80B].n
	movq	$0, 584(%rsp)	#, MEM[(struct secp256k1_fe *)&rp + 80B].n
	movq	$0, 576(%rsp)	#, MEM[(struct secp256k1_fe *)&rp + 80B].n
	movq	$0, 568(%rsp)	#, MEM[(struct secp256k1_fe *)&rp + 80B].n
	movq	%rax, 384(%rsp)	# rp.x, r.x
	movq	488(%rsp), %rax	# rp.x, rp.x
	movq	%rax, 392(%rsp)	# rp.x, r.x
	movq	496(%rsp), %rax	# rp.x, rp.x
	movq	%rax, 400(%rsp)	# rp.x, r.x
	movq	504(%rsp), %rax	# rp.x, rp.x
	movq	%rax, 408(%rsp)	# rp.x, r.x
	movq	512(%rsp), %rax	# rp.x, rp.x
	movq	%rax, 416(%rsp)	# rp.x, r.x
	movq	520(%rsp), %rax	# rp.y, rp.y
	movq	%rax, 424(%rsp)	# rp.y, r.y
	movq	528(%rsp), %rax	# rp.y, rp.y
	movq	%rax, 432(%rsp)	# rp.y, r.y
	movq	536(%rsp), %rax	# rp.y, rp.y
	movq	%rax, 440(%rsp)	# rp.y, r.y
	movq	544(%rsp), %rax	# rp.y, rp.y
	movq	%rax, 448(%rsp)	# rp.y, r.y
	movq	552(%rsp), %rax	# rp.y, rp.y
	movq	%rax, 456(%rsp)	# rp.y, r.y
	call	secp256k1_fe_normalize	#
	movq	16(%rsp), %rdi	# %sfp,
	call	secp256k1_fe_normalize	#
	leaq	271(%rsp), %r10	#, ivtmp.1027
	movl	$1, %r8d	#, ivtmp.1025
	xorl	%edi, %edi	# ivtmp.1023
	movl	$1321528399, %r9d	#, tmp327
	.p2align 4,,10
	.p2align 3
.L916:
	movl	%r8d, %eax	# ivtmp.1025, tmp493
	leal	0(,%r8,4), %ecx	#, tmp331
	subq	$1, %r10	#, ivtmp.1027
	imull	%r9d	# tmp327
	movl	%r8d, %eax	# ivtmp.1025, tmp329
	addl	$2, %r8d	#, ivtmp.1025
	sarl	$31, %eax	#, tmp329
	sarl	$2, %edx	#, tmp328
	subl	%eax, %edx	# tmp329, limb
	movl	%ecx, %eax	# tmp331, tmp494
	movslq	%edx, %rsi	# limb, limb
	imull	%r9d	# tmp327
	movl	%ecx, %eax	# tmp331, tmp336
	movq	384(%rsp,%rsi,8), %rsi	# MEM[(const struct secp256k1_fe *)&r].n, tmp340
	sarl	$31, %eax	#, tmp336
	sarl	$4, %edx	#, tmp335
	subl	%eax, %edx	# tmp336, tmp332
	movl	%edi, %eax	# ivtmp.1023, tmp495
	imull	$52, %edx, %edx	#, tmp332, tmp337
	subl	%edx, %ecx	# tmp337, shift
	imull	%r9d	# tmp327
	shrq	%cl, %rsi	# shift, tmp339
	movl	%edi, %eax	# ivtmp.1023, tmp347
	leal	0(,%rdi,4), %ecx	#, tmp349
	sarl	$31, %eax	#, tmp347
	salq	$4, %rsi	#, tmp341
	movzbl	%sil, %esi	# tmp341, tmp342
	addl	$2, %edi	#, ivtmp.1023
	sarl	$2, %edx	#, tmp346
	subl	%eax, %edx	# tmp347, limb
	movl	%ecx, %eax	# tmp349, tmp496
	movslq	%edx, %r11	# limb, limb
	imull	%r9d	# tmp327
	movl	%ecx, %eax	# tmp349, tmp354
	sarl	$31, %eax	#, tmp354
	sarl	$4, %edx	#, tmp353
	subl	%eax, %edx	# tmp354, tmp350
	movq	384(%rsp,%r11,8), %rax	# MEM[(const struct secp256k1_fe *)&r].n, tmp358
	imull	$52, %edx, %edx	#, tmp350, tmp355
	subl	%edx, %ecx	# tmp355, shift
	shrq	%cl, %rax	# shift, tmp357
	andl	$15, %eax	#, tmp359
	orl	%esi, %eax	# tmp342, tmp360
	movb	%al, 1(%r10)	# tmp360, MEM[base: _237, offset: 0B]
	cmpl	$64, %edi	#, ivtmp.1023
	jne	.L916	#,
	leaq	44(%rsp), %rdx	#, tmp542
	leaq	240(%rsp), %rsi	#, tmp543
	leaq	48(%rsp), %rdi	#, tmp544
	call	secp256k1_scalar_set_b32	#
	leaq	112(%rsp), %rdx	#, tmp545
	leaq	48(%rsp), %rsi	#, tmp546
	leaq	320(%rsp), %rdi	#, tmp547
	call	secp256k1_scalar_mul_512	#
	leaq	320(%rsp), %rsi	#, tmp548
	leaq	272(%rsp), %rdi	#, tmp549
	call	secp256k1_scalar_reduce_512	#
	leaq	272(%rsp), %rsi	#, tmp551
	leaq	176(%rsp), %rdx	#, tmp550
	movq	%rsi, %rdi	# tmp551, tmp552
	call	secp256k1_scalar_add	#
	leaq	144(%rsp), %rsi	#, tmp553
	leaq	80(%rsp), %rdi	#, tmp554
	call	secp256k1_scalar_inverse	#
	leaq	272(%rsp), %rdx	#, tmp555
	leaq	80(%rsp), %rsi	#, tmp556
	leaq	320(%rsp), %rdi	#, tmp557
	call	secp256k1_scalar_mul_512	#
	leaq	320(%rsp), %rsi	#, tmp558
	leaq	80(%rsp), %rdi	#, tmp559
	call	secp256k1_scalar_reduce_512	#
	leaq	272(%rsp), %rdi	#, tmp560
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	480(%rsp), %rdi	#, tmp561
	movl	$128, %esi	#,
	call	explicit_bzero	#
	leaq	384(%rsp), %rdi	#, tmp562
	movl	$88, %esi	#,
	call	explicit_bzero	#
	movq	80(%rsp), %rsi	# s.d, _90
	movq	88(%rsp), %rdx	# s.d, _91
	movq	96(%rsp), %r8	# s.d, _93
	movq	104(%rsp), %rax	# s.d, _95
	movq	%rsi, %rcx	# _90, tmp382
	orq	%rdx, %rcx	# _91, tmp382
	orq	%r8, %rcx	# _93, tmp383
	orq	%rax, %rcx	# _95, tmp383
	je	.L915	#,
	movabsq	$9223372036854775806, %rcx	#, tmp386
	xorl	%r10d, %r10d	# tmp385
	movabsq	$6725966010171805724, %rdi	#, tmp394
	cmpq	%rcx, %rax	# tmp386, _95
	movq	%rax, %rcx	# _95, tmp389
	movq	24(%rsp), %rbx	# %sfp, signature
	setbe	%r10b	#, tmp385
	shrq	$63, %rcx	#, tmp389
	movl	%r10d, %r9d	# tmp385, tmp390
	notl	%r9d	# tmp390
	andl	%ecx, %r9d	# tmp389, _138
	cmpq	$-1, %r8	#, _93
	setne	%cl	#, tmp392
	cmpq	%rdi, %rdx	# tmp394, _91
	setbe	%dil	#, tmp395
	orl	%ecx, %edi	# tmp392, tmp396
	movzbl	%dil, %ecx	# tmp396, tmp397
	movl	%r9d, %edi	# _138, tmp398
	notl	%edi	# tmp398
	andl	%edi, %ecx	# tmp398, tmp399
	movabsq	$6725966010171805725, %rdi	#, tmp403
	orl	%r10d, %ecx	# tmp385, no
	cmpq	%rdi, %rdx	# tmp403, _91
	movabsq	$-2312264954237214560, %r10	#, tmp406
	seta	%dil	#, tmp404
	cmpq	%r10, %rsi	# tmp406, _90
	notl	%ecx	# tmp401
	seta	%r10b	#, tmp407
	orl	%r10d, %edi	# tmp407, tmp408
	movzbl	%dil, %edi	# tmp408, tmp409
	andl	%edi, %ecx	# tmp409, tmp410
	orl	%r9d, %ecx	# _138, tmp410
	je	.L918	#,
	notq	%rsi	# _90
	xorl	%edi, %edi	#
	xorl	%r10d, %r10d	#
	movq	%rsi, %r9	# _90, tmp413
	movabsq	$-4624529908474429118, %rsi	#, tmp414
	notq	%rdx	# _91
	addq	%rsi, %r9	# tmp414, t
	movabsq	$-4994812053365940165, %r11	#, tmp418
	movq	%rdx, %rsi	# _91, tmp416
	adcq	%rdi, %r10	#, t
	xorl	%r12d, %r12d	#
	xorl	%r14d, %r14d	# t
	xorl	%edi, %edi	#
	movq	%r10, %r13	# t, t
	addq	%r11, %rsi	# tmp418, tmp417
	adcq	%r12, %rdi	#,
	notq	%r8	# _93
	addq	%rsi, %r13	# tmp417, t
	adcq	%rdi, %r14	#, t
	movq	$-2, %r11	#, tmp422
	movq	%r8, %rsi	# _93, tmp420
	xorl	%ecx, %ecx	# t
	xorl	%edi, %edi	#
	xorl	%r12d, %r12d	#
	movq	%r14, %rdx	# t, t
	addq	%r11, %rsi	# tmp422, tmp421
	movq	%r9, (%rsp)	# t, %sfp
	adcq	%r12, %rdi	#,
	notq	%rax	# _95
	addq	%rsi, %rdx	# tmp421, t
	movq	(%rsp), %xmm0	# %sfp, tmp423
	adcq	%rdi, %rcx	#, t
	movq	%r13, (%rsp)	# t, %sfp
	movq	%rax, %r9	# _95, tmp426
	movq	$-1, %r11	#, tmp428
	movhps	(%rsp), %xmm0	# %sfp, tmp423
	movq	%rcx, %rsi	# t, t
	addq	%r11, %r9	# tmp428, tmp427
	movq	%rdx, (%rsp)	# t, %sfp
	addq	%r9, %rsi	# tmp427, t
	movaps	%xmm0, 80(%rsp)	# tmp423, MEM[(long unsigned int *)&s]
	movq	(%rsp), %xmm0	# %sfp, tmp424
	movq	%rsi, (%rsp)	# t, %sfp
	movhps	(%rsp), %xmm0	# %sfp, tmp424
	movaps	%xmm0, 96(%rsp)	# tmp424, MEM[(long unsigned int *)&s + 16B]
.L918:
	leaq	208(%rsp), %rdi	#, tmp582
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	176(%rsp), %rdi	#, tmp583
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	144(%rsp), %rdi	#, tmp584
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	112(%rsp), %rdi	#, tmp585
	movl	$32, %esi	#,
	call	explicit_bzero	#
	movq	48(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})signature_20(D)]
	movq	56(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})signature_20(D)]
	movq	64(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})signature_20(D)]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})&r]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&r], MEM[(char * {ref-all})signature_20(D)]
	movq	80(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})signature_20(D) + 32B]
	movq	88(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})signature_20(D) + 32B]
	movq	96(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})signature_20(D) + 32B]
	movq	104(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})signature_20(D) + 32B]
	jmp	.L906	#
	.p2align 4,,10
	.p2align 3
.L935:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC20, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L906	#
	.p2align 4,,10
	.p2align 3
.L914:
	leaq	208(%rsp), %rdi	#, tmp586
	movl	$32, %esi	#,
	movq	24(%rsp), %rbx	# %sfp, signature
	call	explicit_bzero	#
	leaq	176(%rsp), %rdi	#, tmp587
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	144(%rsp), %rdi	#, tmp588
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	112(%rsp), %rdi	#, tmp589
	movl	$32, %esi	#,
	call	explicit_bzero	#
	jmp	.L913	#
.L936:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC25, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L906	#
.L937:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC26, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L906	#
	.cfi_endproc
.LFE212:
	.size	secp256k1_ecdsa_sign, .-secp256k1_ecdsa_sign
	.p2align 4,,15
	.globl	secp256k1_ec_seckey_verify
	.type	secp256k1_ec_seckey_verify, @function
secp256k1_ec_seckey_verify:
.LFB213:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
	testq	%rsi, %rsi	# seckey
	je	.L945	#,
	leaq	12(%rsp), %rdx	#, tmp114
	leaq	16(%rsp), %rdi	#, tmp115
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %edx	# overflow,
	xorl	%eax, %eax	# _5
	testl	%edx, %edx	#
	je	.L946	#,
.L942:
	leaq	16(%rsp), %rdi	#, tmp117
	movl	$32, %esi	#,
	movzbl	%al, %ebx	# _5, <retval>
	call	explicit_bzero	#
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L946:
	.cfi_restore_state
	movq	16(%rsp), %rax	# sec.d, sec.d
	orq	24(%rsp), %rax	# sec.d, tmp105
	orq	32(%rsp), %rax	# sec.d, tmp107
	orq	40(%rsp), %rax	# sec.d, tmp107
	setne	%al	#, _5
	jmp	.L942	#
	.p2align 4,,10
	.p2align 3
.L945:
	movq	%rdi, %rax	# ctx, ctx
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	xorl	%ebx, %ebx	# <retval>
	movl	$.LC26, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	addq	$48, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE213:
	.size	secp256k1_ec_seckey_verify, .-secp256k1_ec_seckey_verify
	.p2align 4,,15
	.globl	secp256k1_ec_pubkey_create
	.type	secp256k1_ec_pubkey_create, @function
secp256k1_ec_pubkey_create:
.LFB214:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# ctx, ctx
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx	# pubkey, pubkey
	subq	$384, %rsp	#,
	.cfi_def_cfa_offset 416
	testq	%rsi, %rsi	# pubkey
	je	.L957	#,
	leaq	8(%rsi), %rdi	#, tmp119
	movq	%rsi, %rcx	# pubkey, pubkey
	xorl	%eax, %eax	# tmp115
	movq	$0, (%rsi)	#,* pubkey
	movq	$0, 56(%rsi)	#,
	andq	$-8, %rdi	#, tmp119
	subq	%rdi, %rcx	# tmp119, pubkey
	addl	$64, %ecx	#, tmp114
	shrl	$3, %ecx	#,
	rep stosq
	cmpq	$0, 8(%rbp)	#, MEM[(struct secp256k1_ge_storage[64][16] * *)ctx_8(D) + 8B]
	je	.L958	#,
	testq	%rdx, %rdx	# seckey
	movq	%rdx, %rsi	# seckey, seckey
	je	.L959	#,
	leaq	12(%rsp), %rdx	#, tmp184
	leaq	16(%rsp), %rdi	#, tmp185
	call	secp256k1_scalar_set_b32	#
	movq	16(%rsp), %rax	# sec.d, sec.d
	orq	24(%rsp), %rax	# sec.d, tmp128
	orq	32(%rsp), %rax	# sec.d, tmp130
	orq	40(%rsp), %rax	# sec.d, tmp130
	movl	12(%rsp), %eax	# overflow,
	setne	%dl	#, tmp133
	testl	%eax, %eax	#
	sete	%al	#, tmp135
	andl	%eax, %edx	# tmp135, _24
	testb	%dl, %dl	# _24
	movzbl	%dl, %r12d	# _24, <retval>
	jne	.L960	#,
.L952:
	leaq	16(%rsp), %rdi	#, tmp200
	movl	$32, %esi	#,
	call	explicit_bzero	#
.L947:
	addq	$384, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L960:
	.cfi_restore_state
	leaq	16(%rsp), %rdx	#, tmp187
	leaq	8(%rbp), %rdi	#, tmp138
	leaq	256(%rsp), %rsi	#, tmp188
	leaq	336(%rsp), %rbp	#, tmp141
	call	secp256k1_ecmult_gen	#
	movl	376(%rsp), %eax	# pj.infinity, pj.infinity
	movq	%rbp, %rsi	# tmp141,
	movq	%rbp, %rdi	# tmp141,
	movl	%eax, 240(%rsp)	# pj.infinity, p.infinity
	call	secp256k1_fe_inv	#
	leaq	48(%rsp), %rdi	#, tmp190
	movq	%rbp, %rsi	# tmp141,
	call	secp256k1_fe_sqr_inner	#
	leaq	48(%rsp), %rdx	#, tmp191
	leaq	96(%rsp), %rdi	#, tmp192
	movq	%rbp, %rsi	# tmp141,
	call	secp256k1_fe_mul_inner	#
	leaq	256(%rsp), %rsi	#, tmp194
	leaq	48(%rsp), %rdx	#, tmp193
	movq	%rsi, %rdi	# tmp194, tmp195
	call	secp256k1_fe_mul_inner	#
	leaq	296(%rsp), %rdi	#, tmp156
	leaq	96(%rsp), %rdx	#, tmp197
	movq	%rdi, %rsi	# tmp156,
	call	secp256k1_fe_mul_inner	#
	movq	256(%rsp), %rax	# pj.x, pj.x
	leaq	160(%rsp), %rsi	#, tmp198
	leaq	96(%rsp), %rdi	#, tmp199
	movq	$1, 336(%rsp)	#, MEM[(struct secp256k1_fe *)&pj + 80B].n
	movq	$0, 368(%rsp)	#, MEM[(struct secp256k1_fe *)&pj + 80B].n
	movq	$0, 360(%rsp)	#, MEM[(struct secp256k1_fe *)&pj + 80B].n
	movq	$0, 352(%rsp)	#, MEM[(struct secp256k1_fe *)&pj + 80B].n
	movq	%rax, 160(%rsp)	# pj.x, p.x
	movq	264(%rsp), %rax	# pj.x, pj.x
	movq	$0, 344(%rsp)	#, MEM[(struct secp256k1_fe *)&pj + 80B].n
	movq	%rax, 168(%rsp)	# pj.x, p.x
	movq	272(%rsp), %rax	# pj.x, pj.x
	movq	%rax, 176(%rsp)	# pj.x, p.x
	movq	280(%rsp), %rax	# pj.x, pj.x
	movq	%rax, 184(%rsp)	# pj.x, p.x
	movq	288(%rsp), %rax	# pj.x, pj.x
	movq	%rax, 192(%rsp)	# pj.x, p.x
	movq	296(%rsp), %rax	# pj.y, pj.y
	movq	%rax, 200(%rsp)	# pj.y, p.y
	movq	304(%rsp), %rax	# pj.y, pj.y
	movq	%rax, 208(%rsp)	# pj.y, p.y
	movq	312(%rsp), %rax	# pj.y, pj.y
	movq	%rax, 216(%rsp)	# pj.y, p.y
	movq	320(%rsp), %rax	# pj.y, pj.y
	movq	%rax, 224(%rsp)	# pj.y, p.y
	movq	328(%rsp), %rax	# pj.y, pj.y
	movq	%rax, 232(%rsp)	# pj.y, p.y
	call	secp256k1_ge_to_storage	#
	movq	96(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	104(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	112(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	120(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	128(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	136(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	144(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	movq	152(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_4(D)]
	jmp	.L952	#
	.p2align 4,,10
	.p2align 3
.L957:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	xorl	%r12d, %r12d	# <retval>
	movl	$.LC9, %edi	#,
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	addq	$384, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L958:
	.cfi_restore_state
	movq	184(%rbp), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC24, %edi	#,
	xorl	%r12d, %r12d	# <retval>
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	jmp	.L947	#
	.p2align 4,,10
	.p2align 3
.L959:
	movq	184(%rbp), %rsi	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].data
	movl	$.LC26, %edi	#,
	xorl	%r12d, %r12d	# <retval>
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_8(D) + 176B].fn
	jmp	.L947	#
	.cfi_endproc
.LFE214:
	.size	secp256k1_ec_pubkey_create, .-secp256k1_ec_pubkey_create
	.section	.rodata.str1.1
.LC27:
	.string	"tweak != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ec_privkey_tweak_add
	.type	secp256k1_ec_privkey_tweak_add, @function
secp256k1_ec_privkey_tweak_add:
.LFB215:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %rax	# ctx, ctx
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# seckey, seckey
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
	testq	%rsi, %rsi	# seckey
	movl	$0, 28(%rsp)	#, overflow
	je	.L971	#,
	testq	%rdx, %rdx	# tweak
	movq	%rdx, %rsi	# tweak, tweak
	je	.L972	#,
	leaq	28(%rsp), %rdx	#, tmp256
	leaq	32(%rsp), %rdi	#, tmp257
	call	secp256k1_scalar_set_b32	#
	leaq	64(%rsp), %rdi	#, tmp258
	xorl	%edx, %edx	#
	movq	%rbx, %rsi	# seckey,
	call	secp256k1_scalar_set_b32	#
	movl	28(%rsp), %ebp	# overflow, <retval>
	testl	%ebp, %ebp	# <retval>
	je	.L973	#,
	movq	$0, (%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 8(%rbx)	#, MEM[(void *)seckey_8(D)]
	xorl	%ebp, %ebp	# <retval>
	movq	$0, 16(%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 24(%rbx)	#, MEM[(void *)seckey_8(D)]
.L966:
	leaq	64(%rsp), %rdi	#, tmp277
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	32(%rsp), %rdi	#, tmp278
	movl	$32, %esi	#,
	call	explicit_bzero	#
.L961:
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L973:
	.cfi_restore_state
	movq	64(%rsp), %r13	# sec.d, sec.d
	movq	32(%rsp), %rax	# term.d, term.d
	xorl	%edx, %edx	# term.d
	xorl	%r14d, %r14d	# sec.d
	movq	40(%rsp), %rsi	# term.d, term.d
	movq	48(%rsp), %r9	# term.d, term.d
	movq	$0, (%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 8(%rbx)	#, MEM[(void *)seckey_8(D)]
	addq	%rax, %r13	# term.d, t
	movq	72(%rsp), %rax	# sec.d, sec.d
	movq	$0, 16(%rbx)	#, MEM[(void *)seckey_8(D)]
	adcq	%rdx, %r14	# term.d, t
	xorl	%r10d, %r10d	# t
	xorl	%edx, %edx	# sec.d
	xorl	%edi, %edi	# term.d
	movq	$0, 24(%rbx)	#, MEM[(void *)seckey_8(D)]
	addq	%rax, %rsi	# sec.d, tmp190
	movq	80(%rsp), %rax	# sec.d, sec.d
	adcq	%rdx, %rdi	# sec.d,
	addq	%r14, %rsi	# t, t
	adcq	%r10, %rdi	# t, t
	xorl	%r12d, %r12d	# t
	xorl	%r10d, %r10d	# term.d
	xorl	%edx, %edx	# sec.d
	addq	%r9, %rax	# term.d, tmp195
	movq	56(%rsp), %r9	# term.d, term.d
	adcq	%r10, %rdx	# term.d,
	addq	%rdi, %rax	# t, t
	adcq	%r12, %rdx	# t, t
	xorl	%r11d, %r11d	# t
	xorl	%r10d, %r10d	# term.d
	movq	%r11, %rcx	# t, t
	movq	88(%rsp), %r11	# sec.d, sec.d
	xorl	%r12d, %r12d	# sec.d
	addq	%r9, %r11	# term.d, tmp200
	adcq	%r10, %r12	# term.d,
	addq	%r11, %rdx	# tmp200, t
	movabsq	$-4624529908474429120, %r11	#, tmp209
	adcq	%r12, %rcx	#, t
	cmpq	$-1, %rdx	#, t
	setne	%r10b	#, tmp202
	cmpq	$-3, %rax	#, _63
	setbe	%r9b	#, tmp204
	orl	%r10d, %r9d	# tmp202, _75
	movabsq	$-4994812053365940165, %r10	#, tmp206
	cmpq	%r10, %rsi	# tmp206, _55
	movzbl	%r9b, %edi	# _75, no
	seta	%r10b	#, tmp207
	cmpq	%r11, %r13	# tmp209, t
	notl	%edi	# tmp223
	seta	%r11b	#, tmp210
	orl	%r11d, %r10d	# tmp210, tmp211
	movabsq	$-4994812053365940166, %r11	#, tmp214
	cmpq	%r11, %rsi	# tmp214, _55
	movzbl	%r10b, %r10d	# tmp211, tmp212
	setbe	%r8b	#, tmp215
	orl	%r9d, %r8d	# _75, tmp216
	movzbl	%r8b, %r8d	# tmp216, no
	notl	%r8d	# tmp218
	andl	%r10d, %r8d	# tmp212, tmp219
	xorl	%r10d, %r10d	# tmp220
	cmpq	$-1, %rax	#, _63
	sete	%r10b	#, tmp220
	xorl	%r12d, %r12d	#
	andl	%r10d, %edi	# tmp220, tmp224
	xorl	%r10d, %r10d	# t
	orl	%r8d, %edi	# tmp219, yes
	movq	%r13, %r8	# t, t
	movq	%r10, %r9	# t, t
	addl	%edi, %ecx	# yes, _98
	movabsq	$4624529908474429119, %rdi	#, tmp229
	movq	%rdi, %r14	# tmp229, tmp229
	movabsq	$4994812053365940164, %rdi	#, tmp232
	imulq	%rcx, %r14	# _98, tmp229
	movq	%rdi, %r10	# tmp232, tmp232
	addq	%r14, %r8	# tmp230, t
	adcq	%r12, %r9	#, t
	xorl	%r12d, %r12d	# t
	xorl	%r14d, %r14d	#
	imulq	%rcx, %r10	# _98, tmp232
	movq	%r9, %r11	# t, t
	movq	%r8, 8(%rsp)	# t, %sfp
	movq	8(%rsp), %xmm0	# %sfp, tmp242
	movq	%r8, %r15	# t, _102
	movq	%r10, %r13	# tmp232, tmp233
	xorl	%r10d, %r10d	# t
	addq	%rsi, %r13	# t, tmp235
	movq	%rax, %rsi	# t, t
	adcq	%r10, %r14	# t,
	addq	%r13, %r11	# tmp235, t
	adcq	%r14, %r12	#, t
	xorl	%r14d, %r14d	# t
	xorl	%edi, %edi	# t
	xorl	%r10d, %r10d	# _95
	movq	%r12, %r13	# t, t
	addq	%rcx, %rsi	# _95, tmp239
	movq	%r11, 8(%rsp)	# t, %sfp
	adcq	%r10, %rdi	# _95,
	addq	%rsi, %r13	# tmp239, t
	movhps	8(%rsp), %xmm0	# %sfp, tmp242
	adcq	%rdi, %r14	#, t
	movq	%rdx, %rsi	# t, t
	addq	%r14, %rsi	# t, t
	movq	%r13, 8(%rsp)	# t, %sfp
	orq	%r11, %r15	#, tmp244
	movq	%r13, %rax	# t, _115
	movq	%r11, (%rsp)	# t, %sfp
	movaps	%xmm0, 64(%rsp)	# tmp242, MEM[(long unsigned int *)&sec]
	orq	%r15, %rax	# tmp244, tmp245
	orq	%rsi, %rax	# _119, tmp245
	movq	8(%rsp), %xmm0	# %sfp, tmp243
	movq	%rsi, 8(%rsp)	# t, %sfp
	movhps	8(%rsp), %xmm0	# %sfp, tmp243
	movaps	%xmm0, 80(%rsp)	# tmp243, MEM[(long unsigned int *)&sec + 16B]
	je	.L966	#,
	leaq	64(%rsp), %rsi	#, tmp276
	movq	%rbx, %rdi	# seckey,
	movl	$1, %ebp	#, <retval>
	call	secp256k1_scalar_get_b32	#
	jmp	.L966	#
	.p2align 4,,10
	.p2align 3
.L971:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC26, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L961	#
	.p2align 4,,10
	.p2align 3
.L972:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC27, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L961	#
	.cfi_endproc
.LFE215:
	.size	secp256k1_ec_privkey_tweak_add, .-secp256k1_ec_privkey_tweak_add
	.p2align 4,,15
	.globl	secp256k1_ec_pubkey_tweak_add
	.type	secp256k1_ec_pubkey_tweak_add, @function
secp256k1_ec_pubkey_tweak_add:
.LFB216:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12	# ctx, ctx
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$400, %rsp	#,
	.cfi_def_cfa_offset 432
	cmpq	$0, (%rdi)	#, MEM[(const struct secp256k1_ecmult_context *)ctx_7(D)].pre_g
	movl	$0, 12(%rsp)	#, overflow
	je	.L983	#,
	testq	%rsi, %rsi	# pubkey
	movq	%rsi, %rbx	# pubkey, pubkey
	je	.L984	#,
	testq	%rdx, %rdx	# tweak
	movq	%rdx, %rsi	# tweak, tweak
	je	.L985	#,
	leaq	12(%rsp), %rdx	#, tmp184
	leaq	16(%rsp), %rdi	#, tmp185
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %ebp	# overflow, <retval>
	testl	%ebp, %ebp	# <retval>
	je	.L986	#,
.L979:
	leaq	8(%rbx), %rdi	#, tmp157
	movq	$0, (%rbx)	#,* pubkey
	movq	$0, 56(%rbx)	#,
	xorl	%eax, %eax	# tmp153
	xorl	%ebp, %ebp	# <retval>
	andq	$-8, %rdi	#, tmp157
	subq	%rdi, %rbx	# tmp157, pubkey
	leal	64(%rbx), %ecx	#, tmp152
	shrl	$3, %ecx	#,
	rep stosq
.L974:
	addq	$400, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L986:
	.cfi_restore_state
	leaq	176(%rsp), %rsi	#, tmp186
	movq	%rbx, %rdx	# pubkey,
	movq	%r12, %rdi	# ctx,
	call	secp256k1_pubkey_load	#
	testl	%eax, %eax	# _23
	je	.L979	#,
	leaq	8(%rbx), %rdi	#, tmp166
	movq	%rbx, %rcx	# pubkey, pubkey
	xorl	%eax, %eax	# tmp162
	movq	$0, (%rbx)	#,* pubkey
	movq	$0, 56(%rbx)	#,
	leaq	272(%rsp), %rdx	#, tmp201
	andq	$-8, %rdi	#, tmp166
	leaq	16(%rsp), %r8	#, tmp199
	subq	%rdi, %rcx	# tmp166, pubkey
	movq	%rdx, %rsi	# tmp201, tmp202
	addl	$64, %ecx	#, tmp161
	shrl	$3, %ecx	#,
	rep stosq
	leaq	48(%rsp), %rcx	#, tmp200
	movq	%r12, %rdi	# ctx,
	movq	$1, 352(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	$0, 384(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	$0, 376(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movl	256(%rsp), %eax	# p.infinity, p.infinity
	movq	$0, 368(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	$0, 360(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	$1, 48(%rsp)	#, one.d
	movq	$0, 56(%rsp)	#, one.d
	movl	%eax, 392(%rsp)	# p.infinity, pt.infinity
	movq	176(%rsp), %rax	# p.x, p.x
	movq	%rax, 272(%rsp)	# p.x, pt.x
	movq	184(%rsp), %rax	# p.x, p.x
	movq	%rax, 280(%rsp)	# p.x, pt.x
	movq	192(%rsp), %rax	# p.x, p.x
	movq	%rax, 288(%rsp)	# p.x, pt.x
	movq	200(%rsp), %rax	# p.x, p.x
	movq	%rax, 296(%rsp)	# p.x, pt.x
	movq	208(%rsp), %rax	# p.x, p.x
	movq	%rax, 304(%rsp)	# p.x, pt.x
	movq	216(%rsp), %rax	# p.y, p.y
	movq	%rax, 312(%rsp)	# p.y, pt.y
	movq	224(%rsp), %rax	# p.y, p.y
	movq	%rax, 320(%rsp)	# p.y, pt.y
	movq	232(%rsp), %rax	# p.y, p.y
	movq	%rax, 328(%rsp)	# p.y, pt.y
	movq	240(%rsp), %rax	# p.y, p.y
	movq	%rax, 336(%rsp)	# p.y, pt.y
	movq	248(%rsp), %rax	# p.y, p.y
	movq	%rax, 344(%rsp)	# p.y, pt.y
	movq	$0, 64(%rsp)	#, one.d
	movq	$0, 72(%rsp)	#, one.d
	call	secp256k1_ecmult.constprop.14	#
	movl	392(%rsp), %eax	# MEM[(int *)&pt + 120B],
	testl	%eax, %eax	#
	jne	.L974	#,
	leaq	352(%rsp), %rbp	#, tmp112
	movl	$0, 256(%rsp)	#, p.infinity
	movq	%rbp, %rsi	# tmp112,
	movq	%rbp, %rdi	# tmp112,
	call	secp256k1_fe_inv	#
	leaq	80(%rsp), %rdi	#, tmp188
	movq	%rbp, %rsi	# tmp112,
	call	secp256k1_fe_sqr_inner	#
	leaq	80(%rsp), %rdx	#, tmp189
	leaq	128(%rsp), %rdi	#, tmp190
	movq	%rbp, %rsi	# tmp112,
	movl	$1, %ebp	#, <retval>
	call	secp256k1_fe_mul_inner	#
	leaq	272(%rsp), %rsi	#, tmp192
	leaq	80(%rsp), %rdx	#, tmp191
	movq	%rsi, %rdi	# tmp192, tmp193
	call	secp256k1_fe_mul_inner	#
	leaq	312(%rsp), %rdi	#, tmp127
	leaq	128(%rsp), %rdx	#, tmp195
	movq	%rdi, %rsi	# tmp127,
	call	secp256k1_fe_mul_inner	#
	movq	272(%rsp), %rax	# pt.x, pt.x
	leaq	176(%rsp), %rsi	#, tmp196
	leaq	272(%rsp), %rdi	#, tmp197
	movq	%rax, 176(%rsp)	# pt.x, p.x
	movq	280(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 184(%rsp)	# pt.x, p.x
	movq	288(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 192(%rsp)	# pt.x, p.x
	movq	296(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 200(%rsp)	# pt.x, p.x
	movq	304(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 208(%rsp)	# pt.x, p.x
	movq	312(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 216(%rsp)	# pt.y, p.y
	movq	320(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 224(%rsp)	# pt.y, p.y
	movq	328(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 232(%rsp)	# pt.y, p.y
	movq	336(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 240(%rsp)	# pt.y, p.y
	movq	344(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 248(%rsp)	# pt.y, p.y
	call	secp256k1_ge_to_storage	#
	movq	272(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	280(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	288(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	296(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	304(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	312(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	320(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	328(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	addq	$400, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L983:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC19, %edi	#,
	call	*176(%r12)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	addq	$400, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L984:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC9, %edi	#,
	call	*176(%r12)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	jmp	.L974	#
	.p2align 4,,10
	.p2align 3
.L985:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC27, %edi	#,
	call	*176(%r12)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	jmp	.L974	#
	.cfi_endproc
.LFE216:
	.size	secp256k1_ec_pubkey_tweak_add, .-secp256k1_ec_pubkey_tweak_add
	.p2align 4,,15
	.globl	secp256k1_ec_privkey_tweak_mul
	.type	secp256k1_ec_privkey_tweak_mul, @function
secp256k1_ec_privkey_tweak_mul:
.LFB217:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rax	# ctx, ctx
	movq	%rsi, %rbx	# seckey, seckey
	subq	$144, %rsp	#,
	.cfi_def_cfa_offset 160
	testq	%rsi, %rsi	# seckey
	movl	$0, 12(%rsp)	#, overflow
	je	.L997	#,
	testq	%rdx, %rdx	# tweak
	movq	%rdx, %rsi	# tweak, tweak
	je	.L998	#,
	leaq	12(%rsp), %rdx	#, tmp126
	leaq	16(%rsp), %rdi	#, tmp127
	call	secp256k1_scalar_set_b32	#
	leaq	48(%rsp), %rdi	#, tmp128
	xorl	%edx, %edx	#
	movq	%rbx, %rsi	# seckey,
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %eax	# overflow,
	testl	%eax, %eax	#
	je	.L999	#,
.L991:
	movq	$0, (%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 8(%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 16(%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 24(%rbx)	#, MEM[(void *)seckey_8(D)]
	xorl	%ebx, %ebx	# <retval>
.L992:
	leaq	48(%rsp), %rdi	#, tmp136
	movl	$32, %esi	#,
	call	explicit_bzero	#
	leaq	16(%rsp), %rdi	#, tmp137
	movl	$32, %esi	#,
	call	explicit_bzero	#
.L987:
	addq	$144, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L999:
	.cfi_restore_state
	movq	16(%rsp), %rax	# factor.d, factor.d
	orq	24(%rsp), %rax	# factor.d, tmp110
	orq	32(%rsp), %rax	# factor.d, tmp112
	orq	40(%rsp), %rax	# factor.d, tmp112
	je	.L991	#,
	leaq	16(%rsp), %rdx	#, tmp130
	leaq	48(%rsp), %rsi	#, tmp131
	leaq	80(%rsp), %rdi	#, tmp132
	call	secp256k1_scalar_mul_512	#
	leaq	80(%rsp), %rsi	#, tmp133
	leaq	48(%rsp), %rdi	#, tmp134
	call	secp256k1_scalar_reduce_512	#
	leaq	48(%rsp), %rsi	#, tmp135
	movq	$0, (%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 8(%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 16(%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	$0, 24(%rbx)	#, MEM[(void *)seckey_8(D)]
	movq	%rbx, %rdi	# seckey,
	call	secp256k1_scalar_get_b32	#
	movl	$1, %ebx	#, <retval>
	jmp	.L992	#
	.p2align 4,,10
	.p2align 3
.L997:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	movl	$.LC26, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	addq	$144, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L998:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].data
	xorl	%ebx, %ebx	# <retval>
	movl	$.LC27, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_12(D) + 176B].fn
	jmp	.L987	#
	.cfi_endproc
.LFE217:
	.size	secp256k1_ec_privkey_tweak_mul, .-secp256k1_ec_privkey_tweak_mul
	.p2align 4,,15
	.globl	secp256k1_ec_pubkey_tweak_mul
	.type	secp256k1_ec_pubkey_tweak_mul, @function
secp256k1_ec_pubkey_tweak_mul:
.LFB218:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12	# ctx, ctx
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$400, %rsp	#,
	.cfi_def_cfa_offset 432
	cmpq	$0, (%rdi)	#, MEM[(const struct secp256k1_ecmult_context *)ctx_7(D)].pre_g
	movl	$0, 12(%rsp)	#, overflow
	je	.L1009	#,
	testq	%rsi, %rsi	# pubkey
	movq	%rsi, %rbx	# pubkey, pubkey
	je	.L1010	#,
	testq	%rdx, %rdx	# tweak
	movq	%rdx, %rsi	# tweak, tweak
	je	.L1011	#,
	leaq	12(%rsp), %rdx	#, tmp199
	leaq	16(%rsp), %rdi	#, tmp200
	call	secp256k1_scalar_set_b32	#
	movl	12(%rsp), %ebp	# overflow, <retval>
	testl	%ebp, %ebp	# <retval>
	je	.L1012	#,
.L1005:
	leaq	8(%rbx), %rdi	#, tmp182
	movq	$0, (%rbx)	#,* pubkey
	movq	$0, 56(%rbx)	#,
	xorl	%eax, %eax	# tmp178
	xorl	%ebp, %ebp	# <retval>
	andq	$-8, %rdi	#, tmp182
	subq	%rdi, %rbx	# tmp182, pubkey
	leal	64(%rbx), %ecx	#, tmp177
	shrl	$3, %ecx	#,
	rep stosq
.L1000:
	addq	$400, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1012:
	.cfi_restore_state
	leaq	176(%rsp), %rsi	#, tmp201
	movq	%rbx, %rdx	# pubkey,
	movq	%r12, %rdi	# ctx,
	call	secp256k1_pubkey_load	#
	testl	%eax, %eax	# _23
	je	.L1005	#,
	leaq	8(%rbx), %rdi	#, tmp191
	movq	%rbx, %rcx	# pubkey, pubkey
	xorl	%eax, %eax	# tmp187
	movq	$0, (%rbx)	#,* pubkey
	movq	$0, 56(%rbx)	#,
	andq	$-8, %rdi	#, tmp191
	subq	%rdi, %rcx	# tmp191, pubkey
	addl	$64, %ecx	#, tmp186
	shrl	$3, %ecx	#,
	rep stosq
	movq	16(%rsp), %rax	# factor.d, factor.d
	orq	24(%rsp), %rax	# factor.d, tmp194
	orq	32(%rsp), %rax	# factor.d, tmp196
	orq	40(%rsp), %rax	# factor.d, tmp196
	je	.L1000	#,
	movl	256(%rsp), %eax	# p.infinity, p.infinity
	pxor	%xmm0, %xmm0	# tmp118
	leaq	272(%rsp), %rdx	#, tmp203
	leaq	48(%rsp), %r8	#,
	leaq	16(%rsp), %rcx	#, tmp202
	movq	%r12, %rdi	# ctx,
	leaq	352(%rsp), %rbp	#, tmp137
	movq	$1, 352(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movl	%eax, 392(%rsp)	# p.infinity, pt.infinity
	movq	176(%rsp), %rax	# p.x, p.x
	movq	%rdx, %rsi	# tmp203, tmp204
	movaps	%xmm0, 48(%rsp)	# tmp118, MEM[(long unsigned int *)&zero]
	movq	$0, 384(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	$0, 376(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movaps	%xmm0, 64(%rsp)	# tmp118, MEM[(long unsigned int *)&zero + 16B]
	movq	%rax, 272(%rsp)	# p.x, pt.x
	movq	184(%rsp), %rax	# p.x, p.x
	movq	$0, 368(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	$0, 360(%rsp)	#, MEM[(struct secp256k1_fe *)&pt + 80B].n
	movq	%rax, 280(%rsp)	# p.x, pt.x
	movq	192(%rsp), %rax	# p.x, p.x
	movq	%rax, 288(%rsp)	# p.x, pt.x
	movq	200(%rsp), %rax	# p.x, p.x
	movq	%rax, 296(%rsp)	# p.x, pt.x
	movq	208(%rsp), %rax	# p.x, p.x
	movq	%rax, 304(%rsp)	# p.x, pt.x
	movq	216(%rsp), %rax	# p.y, p.y
	movq	%rax, 312(%rsp)	# p.y, pt.y
	movq	224(%rsp), %rax	# p.y, p.y
	movq	%rax, 320(%rsp)	# p.y, pt.y
	movq	232(%rsp), %rax	# p.y, p.y
	movq	%rax, 328(%rsp)	# p.y, pt.y
	movq	240(%rsp), %rax	# p.y, p.y
	movq	%rax, 336(%rsp)	# p.y, pt.y
	movq	248(%rsp), %rax	# p.y, p.y
	movq	%rax, 344(%rsp)	# p.y, pt.y
	call	secp256k1_ecmult.constprop.14	#
	movl	392(%rsp), %eax	# pt.infinity, pt.infinity
	movq	%rbp, %rsi	# tmp137,
	movq	%rbp, %rdi	# tmp137,
	movl	%eax, 256(%rsp)	# pt.infinity, p.infinity
	call	secp256k1_fe_inv	#
	leaq	80(%rsp), %rdi	#, tmp206
	movq	%rbp, %rsi	# tmp137,
	call	secp256k1_fe_sqr_inner	#
	leaq	80(%rsp), %rdx	#, tmp207
	leaq	128(%rsp), %rdi	#, tmp208
	movq	%rbp, %rsi	# tmp137,
	movl	$1, %ebp	#, <retval>
	call	secp256k1_fe_mul_inner	#
	leaq	272(%rsp), %rsi	#, tmp210
	leaq	80(%rsp), %rdx	#, tmp209
	movq	%rsi, %rdi	# tmp210, tmp211
	call	secp256k1_fe_mul_inner	#
	leaq	312(%rsp), %rdi	#, tmp152
	leaq	128(%rsp), %rdx	#, tmp213
	movq	%rdi, %rsi	# tmp152,
	call	secp256k1_fe_mul_inner	#
	movq	272(%rsp), %rax	# pt.x, pt.x
	leaq	176(%rsp), %rsi	#, tmp214
	leaq	272(%rsp), %rdi	#, tmp215
	movq	%rax, 176(%rsp)	# pt.x, p.x
	movq	280(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 184(%rsp)	# pt.x, p.x
	movq	288(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 192(%rsp)	# pt.x, p.x
	movq	296(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 200(%rsp)	# pt.x, p.x
	movq	304(%rsp), %rax	# pt.x, pt.x
	movq	%rax, 208(%rsp)	# pt.x, p.x
	movq	312(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 216(%rsp)	# pt.y, p.y
	movq	320(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 224(%rsp)	# pt.y, p.y
	movq	328(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 232(%rsp)	# pt.y, p.y
	movq	336(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 240(%rsp)	# pt.y, p.y
	movq	344(%rsp), %rax	# pt.y, pt.y
	movq	%rax, 248(%rsp)	# pt.y, p.y
	call	secp256k1_ge_to_storage	#
	movq	272(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, (%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	280(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 8(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	288(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 16(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	296(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 24(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	304(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	312(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	320(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	movq	328(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbx)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubkey_12(D)]
	addq	$400, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1009:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC19, %edi	#,
	call	*176(%r12)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	addq	$400, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1010:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC9, %edi	#,
	call	*176(%r12)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	jmp	.L1000	#
	.p2align 4,,10
	.p2align 3
.L1011:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].data
	xorl	%ebp, %ebp	# <retval>
	movl	$.LC27, %edi	#,
	call	*176(%r12)	# MEM[(const struct secp256k1_callback *)ctx_7(D) + 176B].fn
	jmp	.L1000	#
	.cfi_endproc
.LFE218:
	.size	secp256k1_ec_pubkey_tweak_mul, .-secp256k1_ec_pubkey_tweak_mul
	.p2align 4,,15
	.globl	secp256k1_context_randomize
	.type	secp256k1_context_randomize, @function
secp256k1_context_randomize:
.LFB219:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	cmpq	$0, 8(%rdi)	#, MEM[(struct secp256k1_ge_storage[64][16] * *)ctx_3(D) + 8B]
	movq	%rdi, %rax	# ctx, ctx
	je	.L1017	#,
	leaq	8(%rdi), %rdi	#, tmp96
	call	secp256k1_ecmult_gen_blind	#
	movl	$1, %eax	#, <retval>
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1017:
	.cfi_restore_state
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].data
	movl	$.LC24, %edi	#,
	call	*176(%rax)	# MEM[(const struct secp256k1_callback *)ctx_3(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE219:
	.size	secp256k1_context_randomize, .-secp256k1_context_randomize
	.section	.rodata.str1.1
.LC28:
	.string	"pubnonce != NULL"
.LC29:
	.string	"n >= 1"
.LC30:
	.string	"pubnonces != NULL"
	.text
	.p2align 4,,15
	.globl	secp256k1_ec_pubkey_combine
	.type	secp256k1_ec_pubkey_combine, @function
secp256k1_ec_pubkey_combine:
.LFB220:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r9	# ctx, ctx
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$360, %rsp	#,
	.cfi_def_cfa_offset 416
	testq	%rsi, %rsi	# pubnonce
	je	.L1028	#,
	leaq	8(%rsi), %rdi	#, tmp151
	movq	%rcx, %rbx	# n, n
	movq	%rsi, %rcx	# pubnonce, pubnonce
	xorl	%eax, %eax	# tmp147
	movq	$0, (%rsi)	#,* pubnonce
	movq	$0, 56(%rsi)	#,
	andq	$-8, %rdi	#, tmp151
	subq	%rdi, %rcx	# tmp151, pubnonce
	addl	$64, %ecx	#, tmp146
	shrl	$3, %ecx	#,
	testq	%rbx, %rbx	# n
	rep stosq
	je	.L1029	#,
	testq	%rdx, %rdx	# pubnonces
	movq	%rdx, %r12	# pubnonces, pubnonces
	je	.L1030	#,
	movl	$1, 344(%rsp)	#, Qj.infinity
	movq	$0, 224(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj].n
	xorl	%r14d, %r14d	# i
	movq	$0, 232(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj].n
	movq	$0, 240(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj].n
	movabsq	$4503599627370495, %r13	#, tmp158
	movq	$0, 248(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj].n
	movq	$0, 256(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj].n
	movq	%r9, %rbp	# ctx, ctx
	movq	$0, 264(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 40B].n
	movq	$0, 272(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 40B].n
	movq	$0, 280(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 40B].n
	movq	$0, 288(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 40B].n
	movq	$0, 296(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 40B].n
	movq	$0, 304(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 312(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 320(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 328(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 336(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	%rsi, 8(%rsp)	# pubnonce, %sfp
	jmp	.L1024	#
	.p2align 4,,10
	.p2align 3
.L1023:
	leaq	224(%rsp), %rsi	#, tmp263
	leaq	128(%rsp), %rdx	#, tmp262
	addq	$1, %r14	#, i
	movq	%rsi, %rdi	# tmp263, tmp264
	call	secp256k1_gej_add_ge	#
	cmpq	%r14, %rbx	# i, n
	je	.L1031	#,
.L1024:
	movq	(%r12,%r14,8), %rax	# MEM[base: pubnonces_18(D), index: i_7, step: 8, offset: 0B], _25
	movq	8(%rax), %rdx	# MEM[(char * {ref-all})_25 + 8B], s$n$1
	movq	(%rax), %rcx	# MEM[(char * {ref-all})_25], s$n$0
	movq	16(%rax), %r8	# MEM[(char * {ref-all})_25 + 16B], s$n$2
	movq	24(%rax), %rdi	# MEM[(char * {ref-all})_25 + 24B], s$n$3
	movq	32(%rax), %r15	# MEM[(char * {ref-all})_25 + 32B], s$32$n$0
	movq	40(%rax), %r11	# MEM[(char * {ref-all})_25 + 40B], s$32$n$1
	movq	%rdx, %rsi	# s$n$1, tmp159
	movq	48(%rax), %r10	# MEM[(char * {ref-all})_25 + 48B], s$32$n$2
	movq	56(%rax), %r9	# MEM[(char * {ref-all})_25 + 56B], s$32$n$3
	salq	$12, %rsi	#, tmp159
	movq	%rcx, %rax	# s$n$0, _91
	shrq	$52, %rcx	#, tmp162
	andq	%r13, %rsi	# tmp158, tmp160
	shrq	$40, %rdx	#, tmp166
	andq	%r13, %rax	# tmp158, _91
	orq	%rcx, %rsi	# tmp162, _96
	movq	%r8, %rcx	# s$n$2, tmp163
	shrq	$28, %r8	#, tmp170
	salq	$24, %rcx	#, tmp163
	movq	%rax, 128(%rsp)	# _91, MEM[(struct secp256k1_fe *)&Q].n
	movq	%rsi, 136(%rsp)	# _96, MEM[(struct secp256k1_fe *)&Q].n
	andq	%r13, %rcx	# tmp158, tmp164
	movl	$0, 208(%rsp)	#, Q.infinity
	orq	%rdx, %rcx	# tmp166, _101
	movq	%rdi, %rdx	# s$n$3, tmp167
	shrq	$16, %rdi	#, _107
	salq	$36, %rdx	#, tmp167
	orq	%rdi, %rax	# _107, tmp189
	movq	%rcx, 144(%rsp)	# _101, MEM[(struct secp256k1_fe *)&Q].n
	andq	%r13, %rdx	# tmp158, tmp168
	orq	%rax, %rsi	# tmp189, tmp190
	movq	%rdi, 160(%rsp)	# _107, MEM[(struct secp256k1_fe *)&Q].n
	orq	%r8, %rdx	# tmp170, _106
	movq	%r15, %r8	# s$32$n$0, tmp172
	shrq	$52, %r15	#, tmp176
	andq	%r13, %r8	# tmp158, tmp172
	orq	%rsi, %rcx	# tmp190, tmp191
	movq	%rdx, 152(%rsp)	# _106, MEM[(struct secp256k1_fe *)&Q].n
	movq	%r8, 168(%rsp)	# tmp172, MEM[(struct secp256k1_fe *)&Q + 40B].n
	movq	%r11, %r8	# s$32$n$1, tmp173
	shrq	$40, %r11	#, tmp181
	salq	$12, %r8	#, tmp173
	andq	%r13, %r8	# tmp158, tmp174
	orq	%r8, %r15	# tmp174, tmp177
	movq	%r10, %r8	# s$32$n$2, tmp178
	shrq	$28, %r10	#, tmp186
	salq	$24, %r8	#, tmp178
	movq	%r15, 176(%rsp)	# tmp177, MEM[(struct secp256k1_fe *)&Q + 40B].n
	andq	%r13, %r8	# tmp158, tmp179
	orq	%r8, %r11	# tmp179, tmp182
	movq	%r9, %r8	# s$32$n$3, tmp183
	shrq	$16, %r9	#, tmp188
	salq	$36, %r8	#, tmp183
	movq	%r11, 184(%rsp)	# tmp182, MEM[(struct secp256k1_fe *)&Q + 40B].n
	movq	%r9, 200(%rsp)	# tmp188, MEM[(struct secp256k1_fe *)&Q + 40B].n
	andq	%r13, %r8	# tmp158, tmp184
	orq	%r8, %r10	# tmp184, tmp187
	orq	%rdx, %rcx	# _106, tmp191
	movq	%r10, 192(%rsp)	# tmp187, MEM[(struct secp256k1_fe *)&Q + 40B].n
	jne	.L1023	#,
	movq	184(%rbp), %rsi	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data
	movl	$.LC7, %edi	#,
	call	*176(%rbp)	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].fn
	jmp	.L1023	#
	.p2align 4,,10
	.p2align 3
.L1031:
	movl	344(%rsp), %edx	# MEM[(int *)&Qj + 120B],
	xorl	%eax, %eax	# <retval>
	movq	8(%rsp), %rbp	# %sfp, pubnonce
	testl	%edx, %edx	#
	je	.L1032	#,
.L1018:
	addq	$360, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1032:
	.cfi_restore_state
	leaq	304(%rsp), %rbx	#, tmp199
	movl	$0, 208(%rsp)	#, Q.infinity
	movq	%rbx, %rsi	# tmp199,
	movq	%rbx, %rdi	# tmp199,
	call	secp256k1_fe_inv	#
	leaq	16(%rsp), %rdi	#,
	movq	%rbx, %rsi	# tmp199,
	call	secp256k1_fe_sqr_inner	#
	leaq	16(%rsp), %rdx	#,
	leaq	64(%rsp), %rdi	#, tmp266
	movq	%rbx, %rsi	# tmp199,
	call	secp256k1_fe_mul_inner	#
	leaq	224(%rsp), %rsi	#, tmp267
	leaq	16(%rsp), %rdx	#,
	movq	%rsi, %rdi	# tmp267, tmp268
	call	secp256k1_fe_mul_inner	#
	leaq	264(%rsp), %rdi	#, tmp214
	leaq	64(%rsp), %rdx	#, tmp270
	movq	%rdi, %rsi	# tmp214,
	call	secp256k1_fe_mul_inner	#
	movq	224(%rsp), %rax	# Qj.x, Qj.x
	leaq	128(%rsp), %rsi	#, tmp271
	leaq	64(%rsp), %rdi	#, tmp272
	movq	$1, 304(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 336(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 328(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	$0, 320(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	%rax, 128(%rsp)	# Qj.x, Q.x
	movq	232(%rsp), %rax	# Qj.x, Qj.x
	movq	$0, 312(%rsp)	#, MEM[(struct secp256k1_fe *)&Qj + 80B].n
	movq	%rax, 136(%rsp)	# Qj.x, Q.x
	movq	240(%rsp), %rax	# Qj.x, Qj.x
	movq	%rax, 144(%rsp)	# Qj.x, Q.x
	movq	248(%rsp), %rax	# Qj.x, Qj.x
	movq	%rax, 152(%rsp)	# Qj.x, Q.x
	movq	256(%rsp), %rax	# Qj.x, Qj.x
	movq	%rax, 160(%rsp)	# Qj.x, Q.x
	movq	264(%rsp), %rax	# Qj.y, Qj.y
	movq	%rax, 168(%rsp)	# Qj.y, Q.y
	movq	272(%rsp), %rax	# Qj.y, Qj.y
	movq	%rax, 176(%rsp)	# Qj.y, Q.y
	movq	280(%rsp), %rax	# Qj.y, Qj.y
	movq	%rax, 184(%rsp)	# Qj.y, Q.y
	movq	288(%rsp), %rax	# Qj.y, Qj.y
	movq	%rax, 192(%rsp)	# Qj.y, Q.y
	movq	296(%rsp), %rax	# Qj.y, Qj.y
	movq	%rax, 200(%rsp)	# Qj.y, Q.y
	call	secp256k1_ge_to_storage	#
	movq	64(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 0(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	72(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 8(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	80(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 16(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	88(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 24(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	96(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 32(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	104(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 40(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	112(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 48(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movq	120(%rsp), %rax	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})&s]
	movq	%rax, 56(%rbp)	# MEM[(char * {ref-all})&s], MEM[(char * {ref-all})pubnonce_5(D)]
	movl	$1, %eax	#, <retval>
	jmp	.L1018	#
	.p2align 4,,10
	.p2align 3
.L1028:
	movq	184(%rdi), %rsi	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data
	movl	$.LC28, %edi	#,
	call	*176(%r9)	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L1018	#
	.p2align 4,,10
	.p2align 3
.L1029:
	movq	184(%r9), %rsi	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data
	movl	$.LC29, %edi	#,
	call	*176(%r9)	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L1018	#
	.p2align 4,,10
	.p2align 3
.L1030:
	movq	184(%r9), %rsi	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data, MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].data
	movl	$.LC30, %edi	#,
	call	*176(%r9)	# MEM[(const struct secp256k1_callback *)ctx_9(D) + 176B].fn
	xorl	%eax, %eax	# <retval>
	jmp	.L1018	#
	.cfi_endproc
.LFE220:
	.size	secp256k1_ec_pubkey_combine, .-secp256k1_ec_pubkey_combine
	.section	.rodata
	.align 32
	.type	order.5397, @object
	.size	order.5397, 32
order.5397:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-70
	.byte	-82
	.byte	-36
	.byte	-26
	.byte	-81
	.byte	72
	.byte	-96
	.byte	59
	.byte	-65
	.byte	-46
	.byte	94
	.byte	-116
	.byte	-48
	.byte	54
	.byte	65
	.byte	65
	.type	zero.6229, @object
	.size	zero.6229, 1
zero.6229:
	.zero	1
	.align 32
	.type	pad.6185, @object
	.size	pad.6185, 64
pad.6185:
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	one.6223, @object
	.size	one.6223, 1
one.6223:
	.byte	1
	.type	zero.6222, @object
	.size	zero.6222, 1
zero.6222:
	.zero	1
	.globl	secp256k1_nonce_function_default
	.align 8
	.type	secp256k1_nonce_function_default, @object
	.size	secp256k1_nonce_function_default, 8
secp256k1_nonce_function_default:
	.quad	nonce_function_rfc6979
	.globl	secp256k1_nonce_function_rfc6979
	.align 8
	.type	secp256k1_nonce_function_rfc6979, @object
	.size	secp256k1_nonce_function_rfc6979, 8
secp256k1_nonce_function_rfc6979:
	.quad	nonce_function_rfc6979
	.align 32
	.type	secp256k1_ecmult_static_context, @object
	.size	secp256k1_ecmult_static_context, 65536
secp256k1_ecmult_static_context:
# x:
# n:
	.quad	-302052024465994827
	.quad	6233398732480474320
	.quad	-7283628191095896494
	.quad	4224045993255845612
# y:
# n:
	.quad	-3296070825059838134
	.quad	-6091936976957600063
	.quad	-2322058913281775255
	.quad	8920602993431789603
# x:
# n:
	.quad	6935398631271559000
	.quad	6694184098068993809
	.quad	5625906337315506940
	.quad	-1995808811687139241
# y:
# n:
	.quad	-5379748095978636469
	.quad	-8330302394330832733
	.quad	1831514157015395872
	.quad	2719248592269094114
# x:
# n:
	.quad	3697495546211944304
	.quad	-7977176000399580560
	.quad	-1799146742830226146
	.quad	7699634345251182191
# y:
# n:
	.quad	62800920062999275
	.quad	2080063794147298311
	.quad	-6870315061753300347
	.quad	-4452688193354696585
# x:
# n:
	.quad	-1341697573051738301
	.quad	5730541550215796177
	.quad	-5111327650104096130
	.quad	47651633020423675
# y:
# n:
	.quad	-1337261439898613725
	.quad	4707804015387569167
	.quad	1578286355523830887
	.quad	9174949482135212175
# x:
# n:
	.quad	2350050821676376783
	.quad	1487840999294021429
	.quad	-4372463384295593861
	.quad	-5290947462268373388
# y:
# n:
	.quad	-457078407069392693
	.quad	-4929723908573918137
	.quad	-8967261489015288158
	.quad	-5653056471430219617
# x:
# n:
	.quad	6885524085309316105
	.quad	4980180597768168502
	.quad	5166602875940768446
	.quad	7574992182409911125
# y:
# n:
	.quad	1874220607583104413
	.quad	-4670524170082369578
	.quad	7848634440151831903
	.quad	-8163339894698003904
# x:
# n:
	.quad	-3403543521337798180
	.quad	-5600877028282128169
	.quad	1267399561548966091
	.quad	8087162098193802355
# y:
# n:
	.quad	-1158980565034575780
	.quad	-4763287516797238947
	.quad	5576005112790520700
	.quad	6834017452850050752
# x:
# n:
	.quad	3151470286169196661
	.quad	3983351400543073125
	.quad	-1937749476170513332
	.quad	3006412544484175265
# y:
# n:
	.quad	-1505092159142257717
	.quad	7751725611127892738
	.quad	-587962588719039404
	.quad	-8617301193659320129
# x:
# n:
	.quad	3242248887263656208
	.quad	7746020458278532217
	.quad	3656340990052357828
	.quad	4920753986360383177
# y:
# n:
	.quad	-5479410832457918257
	.quad	8159287864824590477
	.quad	8629268207170565978
	.quad	3316984894309880320
# x:
# n:
	.quad	-4330030000769101535
	.quad	1035774210989956774
	.quad	-765521234984894888
	.quad	-2243529789154726436
# y:
# n:
	.quad	-7556943038731869188
	.quad	7353285714472309432
	.quad	1989006358522761642
	.quad	-6889485609049015361
# x:
# n:
	.quad	-428881893627858163
	.quad	1557689472149685290
	.quad	-956439082795354471
	.quad	-7234674248130535182
# y:
# n:
	.quad	7893571637751141629
	.quad	-8055069895688117424
	.quad	4417843632380431734
	.quad	4604928438161396483
# x:
# n:
	.quad	-3555224303886728117
	.quad	-5350579154978480202
	.quad	-4465790066868712271
	.quad	5786461046140684315
# y:
# n:
	.quad	8821380700763559631
	.quad	-590933103197364407
	.quad	-3665725707507859820
	.quad	-3759365364207504439
# x:
# n:
	.quad	799910060632536827
	.quad	-9034489381249465863
	.quad	-5952913365999229693
	.quad	-2455575962457413974
# y:
# n:
	.quad	7305889952290549409
	.quad	-8106318394976352355
	.quad	8315675431938711116
	.quad	3688436764634187870
# x:
# n:
	.quad	7269972474982654657
	.quad	5410210682750073387
	.quad	4739232604888702257
	.quad	-2570696755751672722
# y:
# n:
	.quad	-6990843335834162806
	.quad	550782446950324470
	.quad	-8394183983807213858
	.quad	6214366686510671145
# x:
# n:
	.quad	-6606291708489824397
	.quad	-4565876052265775087
	.quad	8648469580209791315
	.quad	8504157357395005746
# y:
# n:
	.quad	5738393586678714537
	.quad	-5515179289778440349
	.quad	7201135673228417434
	.quad	4088728252911305732
# x:
# n:
	.quad	-6442637084461331078
	.quad	-7941024067687157223
	.quad	-728812096227981557
	.quad	-3780376868437227479
# y:
# n:
	.quad	-2920626955277692781
	.quad	-5146474176813845953
	.quad	-7490261309291185904
	.quad	6273744603395526143
# x:
# n:
	.quad	677207298953006977
	.quad	-6122713375846246717
	.quad	-5172613764632939399
	.quad	1982818497889957810
# y:
# n:
	.quad	-6642501556836200411
	.quad	-1950441162888166510
	.quad	6187493060944035123
	.quad	445688505933728029
# x:
# n:
	.quad	-8985286185554896035
	.quad	5053957820624536591
	.quad	-5894063630036878649
	.quad	-650123624268071277
# y:
# n:
	.quad	4619878372393653310
	.quad	-1544175735656166717
	.quad	-5167112091840962975
	.quad	6766060628812470568
# x:
# n:
	.quad	-9091913984657702188
	.quad	4574924137245800072
	.quad	-6164358009670219345
	.quad	-3494693973195639788
# y:
# n:
	.quad	-8081955837762654101
	.quad	8979774475459643309
	.quad	-377199081205258380
	.quad	-840547950770599332
# x:
# n:
	.quad	1325660274768929907
	.quad	-2411700397854780350
	.quad	7974966357840165711
	.quad	5250029095618736173
# y:
# n:
	.quad	6957735351627752912
	.quad	-1573467665847284860
	.quad	-2039599559387005551
	.quad	-7340747385359705834
# x:
# n:
	.quad	-8610802754062417708
	.quad	-7167593036332396125
	.quad	-5949553225647501774
	.quad	-3552386300451915981
# y:
# n:
	.quad	6893170996170900469
	.quad	2265042096117850607
	.quad	8332514715065948025
	.quad	7704918543370303154
# x:
# n:
	.quad	-7627249437048272360
	.quad	8287386245040392339
	.quad	7051355037025027913
	.quad	-8556596702269935699
# y:
# n:
	.quad	-4516144376603189507
	.quad	6801631152221618214
	.quad	-8374986255672949725
	.quad	-2184008607724026491
# x:
# n:
	.quad	371102271753439712
	.quad	4120082230875910178
	.quad	6597568049071610112
	.quad	-6182382583656493842
# y:
# n:
	.quad	8321591712083230447
	.quad	2755130797354904222
	.quad	2473576966861746936
	.quad	-1604881581078596999
# x:
# n:
	.quad	7493204922339040042
	.quad	-1198924960559505431
	.quad	-7850233184009501614
	.quad	4175846608704218214
# y:
# n:
	.quad	388696523102503873
	.quad	6002180856313308656
	.quad	-4202523618383146831
	.quad	-8112773847750709477
# x:
# n:
	.quad	-3694804535157222451
	.quad	-2144627440408686128
	.quad	-6846876521147182484
	.quad	7432580572295724791
# y:
# n:
	.quad	-2839351135613726923
	.quad	-6282772460346125374
	.quad	-5377378157553369048
	.quad	7636165071694965981
# x:
# n:
	.quad	-532729618188133350
	.quad	-1287065943978329530
	.quad	-3294764113800600682
	.quad	267712593757689332
# y:
# n:
	.quad	-5061622137536969805
	.quad	-4177660284925775177
	.quad	-6984990004991658412
	.quad	8509197479036476226
# x:
# n:
	.quad	-2754882417246933834
	.quad	-7899565385547173833
	.quad	1905920007900420396
	.quad	-6681395961202463519
# y:
# n:
	.quad	9065091167382425344
	.quad	7945958868536096663
	.quad	7465246581815572776
	.quad	5350233682610162938
# x:
# n:
	.quad	-4081752679683999852
	.quad	-5223440746786823744
	.quad	4515496222766163973
	.quad	-8197546882650083158
# y:
# n:
	.quad	3780368191673207501
	.quad	-3735166942467430818
	.quad	-6453244252715563635
	.quad	3734542450398501972
# x:
# n:
	.quad	-453865891046157885
	.quad	-3033353470049220674
	.quad	8549524891721023124
	.quad	-5606674296335592817
# y:
# n:
	.quad	1690549621019016973
	.quad	-5863283680424503845
	.quad	8390306210909686251
	.quad	4242897372198187325
# x:
# n:
	.quad	-7780771425001786662
	.quad	-777606702870094529
	.quad	4901989673248983474
	.quad	-8431899388776883855
# y:
# n:
	.quad	850966448490345000
	.quad	2685157958152816844
	.quad	-3277611702702773421
	.quad	-2107290854626817999
# x:
# n:
	.quad	8101527530379573591
	.quad	-1826221603924525258
	.quad	-5704699417670620331
	.quad	117766254177617931
# y:
# n:
	.quad	-4315732062847818434
	.quad	-5494187267898705927
	.quad	8886846271522448748
	.quad	4117878134170991653
# x:
# n:
	.quad	2803289949149762246
	.quad	7890921549703603532
	.quad	-109843071898964705
	.quad	3880003815295151705
# y:
# n:
	.quad	-8182396000612650210
	.quad	7750546873411107957
	.quad	8236004213758461537
	.quad	-2417039558558264952
# x:
# n:
	.quad	-6165011372333740269
	.quad	-4424301169015151367
	.quad	99107021700590450
	.quad	7703849020669659977
# y:
# n:
	.quad	3466585670779900223
	.quad	2848470124595968870
	.quad	-1942497101380300429
	.quad	9144560255646270706
# x:
# n:
	.quad	-2257020018566945179
	.quad	-1466468895680483937
	.quad	6597845909338252627
	.quad	2456251590981326228
# y:
# n:
	.quad	-8174624450613630058
	.quad	-1448485916614139490
	.quad	-3325749181936912461
	.quad	-103802437216247164
# x:
# n:
	.quad	-6013186027870540914
	.quad	7398661246949448691
	.quad	1138362481669251362
	.quad	-6746376786052532264
# y:
# n:
	.quad	3340741591553785621
	.quad	4581288228351520831
	.quad	-5438855423621187865
	.quad	-3454383369750693789
# x:
# n:
	.quad	-6562740747075461347
	.quad	-5845115407801477739
	.quad	-5214530399519525285
	.quad	4068316139567949761
# y:
# n:
	.quad	7526322923597526223
	.quad	-4512576516913957846
	.quad	8822061014332296513
	.quad	4880939647980485721
# x:
# n:
	.quad	5301438400537820455
	.quad	-3939398529218871124
	.quad	-6423049402966333291
	.quad	6274121863534746030
# y:
# n:
	.quad	-296974422749492372
	.quad	4419506126199169915
	.quad	-7051653420920509457
	.quad	-4391940897903885460
# x:
# n:
	.quad	-2081231392233313057
	.quad	5899127667685626429
	.quad	2627790409662778957
	.quad	8895251135968251667
# y:
# n:
	.quad	6988216859623489473
	.quad	4220350112971481440
	.quad	-6617991606795270012
	.quad	3346267932823085479
# x:
# n:
	.quad	6167789028045713256
	.quad	5763413121138662545
	.quad	3984239717658674253
	.quad	2107410164645786075
# y:
# n:
	.quad	8324847959567165540
	.quad	-6211800197898791245
	.quad	-616213200833481810
	.quad	1894898287290690673
# x:
# n:
	.quad	-8434646036917366671
	.quad	-9046251057596481261
	.quad	6125325477048924227
	.quad	5002050683253269802
# y:
# n:
	.quad	152937786021979196
	.quad	263306863303857943
	.quad	-685444785826715994
	.quad	-6407465255366147042
# x:
# n:
	.quad	-4276712153845894948
	.quad	1883085676812831089
	.quad	-5542486327775604036
	.quad	-5145099041427498786
# y:
# n:
	.quad	-4946543010457888600
	.quad	-4726760509674000336
	.quad	6206201448833538344
	.quad	-8239141864416525288
# x:
# n:
	.quad	-3853581865553132397
	.quad	-5173300701139423683
	.quad	-4470545541748020855
	.quad	-5245858046260796803
# y:
# n:
	.quad	-7423620986106696295
	.quad	8560545077315244093
	.quad	-2952690306354384065
	.quad	-7973858940943931676
# x:
# n:
	.quad	-289703791385872176
	.quad	-3010843338443233926
	.quad	-6517520848809139815
	.quad	-7637596883753106506
# y:
# n:
	.quad	5910292606873509976
	.quad	-5689513245275160844
	.quad	-55652066675332363
	.quad	-2376019681086873126
# x:
# n:
	.quad	5918028071488093125
	.quad	-3429252873975912556
	.quad	3901677021895787015
	.quad	-6244217879214659725
# y:
# n:
	.quad	-3678956615658760269
	.quad	1262859262731980778
	.quad	7104421548669954598
	.quad	3015129934581089024
# x:
# n:
	.quad	264560726323923238
	.quad	-5080492411263072124
	.quad	-5867596512324754307
	.quad	-3219173024054910149
# y:
# n:
	.quad	-3325194564339797117
	.quad	-1857641614109973032
	.quad	-5360854096712403423
	.quad	-2180292978554639850
# x:
# n:
	.quad	4880755496168335489
	.quad	-4602398537635364165
	.quad	-687478993459042146
	.quad	5694228101180727273
# y:
# n:
	.quad	-2675530822047291132
	.quad	5918498079362766287
	.quad	-2705429970135537556
	.quad	-2457192798489836264
# x:
# n:
	.quad	-4380053144159816053
	.quad	7502088553567599602
	.quad	-6266756456069623835
	.quad	1875444475513527489
# y:
# n:
	.quad	4658202533859586591
	.quad	-4267240152444432937
	.quad	2052463247706403205
	.quad	7162445717345906065
# x:
# n:
	.quad	-1903455474529034009
	.quad	4003626592831036636
	.quad	-1675715287445824258
	.quad	-2111796825106764472
# y:
# n:
	.quad	2847291829799645315
	.quad	516670704682531392
	.quad	-6821080945161919852
	.quad	3491870177394392853
# x:
# n:
	.quad	4270946366156396166
	.quad	-1383626973970183417
	.quad	3240999502744061943
	.quad	7243206589980019268
# y:
# n:
	.quad	-4583924083084398644
	.quad	-4884339414021655904
	.quad	-6808461076640050955
	.quad	8962071803877318395
# x:
# n:
	.quad	8778102880780581581
	.quad	-612638711281570692
	.quad	-8915680683241897642
	.quad	5403521655154349059
# y:
# n:
	.quad	7822518456483853009
	.quad	-5633124129644783410
	.quad	100700579612222910
	.quad	4626434085640438864
# x:
# n:
	.quad	-6736870655478392421
	.quad	-5116938180776039424
	.quad	8794565742008331095
	.quad	-859298845923365763
# y:
# n:
	.quad	-8496719255849767639
	.quad	3846576373015541240
	.quad	645762559835762881
	.quad	7739099881023286513
# x:
# n:
	.quad	-193921145734306572
	.quad	-921974509703934458
	.quad	6464646462152094772
	.quad	1904009799336766994
# y:
# n:
	.quad	2198256550819856462
	.quad	7471347221388463237
	.quad	3243685181171960237
	.quad	-5313245155928420930
# x:
# n:
	.quad	-5218499683478820579
	.quad	-6651934556728429970
	.quad	2358230108120532578
	.quad	4250957343981772020
# y:
# n:
	.quad	-5849810638603213678
	.quad	7633844858731145191
	.quad	-35994441425868082
	.quad	617782486382019984
# x:
# n:
	.quad	8022316794326750489
	.quad	8829789193740684736
	.quad	-1805027846790222624
	.quad	2931789690224052125
# y:
# n:
	.quad	-1838630839896433695
	.quad	-4447816759058716573
	.quad	3721155719265172928
	.quad	-5202740671879465595
# x:
# n:
	.quad	-5404464843361825947
	.quad	4154909430483861990
	.quad	7909996093774404895
	.quad	1411889025973220068
# y:
# n:
	.quad	68254979217344321
	.quad	4944725222728053532
	.quad	-7009974231899350288
	.quad	4009179037481481604
# x:
# n:
	.quad	-6840134634087183445
	.quad	-2572548402916783205
	.quad	-6192258759742162830
	.quad	-5208601515813054565
# y:
# n:
	.quad	-2925848791090208781
	.quad	3202850617728366700
	.quad	1897251721713908467
	.quad	-3868290876711186577
# x:
# n:
	.quad	4496357415254060491
	.quad	5587336686898552100
	.quad	7326777603303080171
	.quad	-5091412381754624366
# y:
# n:
	.quad	-2976550577677158343
	.quad	4247989991158941086
	.quad	2530474883584825414
	.quad	5136147117475037847
# x:
# n:
	.quad	8313209180400641205
	.quad	-524239439128512614
	.quad	-470662797763361629
	.quad	6048960315458577958
# y:
# n:
	.quad	520264499839030619
	.quad	97180056361517235
	.quad	6756050294685026273
	.quad	1887499812383087869
# x:
# n:
	.quad	-7929683565963050290
	.quad	-5820961233852842499
	.quad	3991029139353252696
	.quad	3600708430748288522
# y:
# n:
	.quad	-1386135899474351765
	.quad	4201009232440907862
	.quad	7336485942134510096
	.quad	1955439913067668111
# x:
# n:
	.quad	1153109760139150863
	.quad	-165015794787049213
	.quad	2455459699900758786
	.quad	8636366211850150515
# y:
# n:
	.quad	775961477798723740
	.quad	-3914422361812618718
	.quad	-3176875828727472646
	.quad	-8733107789822832593
# x:
# n:
	.quad	-216868463209594102
	.quad	-555909506454499832
	.quad	-8354123690340036305
	.quad	-3304898277652519774
# y:
# n:
	.quad	863760879231663618
	.quad	6768224584717216044
	.quad	8499094479400445039
	.quad	3277914960761168523
# x:
# n:
	.quad	8690376597454368333
	.quad	8256825206665759041
	.quad	-8462845969759626696
	.quad	-1998723469406131645
# y:
# n:
	.quad	-6882097757754309632
	.quad	8218755912034254792
	.quad	5715328600468587440
	.quad	8578905592164348611
# x:
# n:
	.quad	-6824018085052930741
	.quad	-440992689660042685
	.quad	8649509230273183883
	.quad	124776913169415019
# y:
# n:
	.quad	-6271518043173951164
	.quad	-536156704160826046
	.quad	-73881934870207022
	.quad	-2751910877356577506
# x:
# n:
	.quad	-7884808615910489547
	.quad	8078954489947509556
	.quad	-2997958204942438152
	.quad	-6270024435770636693
# y:
# n:
	.quad	-2848807354074399593
	.quad	-287450573164727173
	.quad	-5534769890561211625
	.quad	-5420123905878930409
# x:
# n:
	.quad	3594780566821871245
	.quad	-2075042701218864214
	.quad	9082905434450417977
	.quad	-7920932800826635175
# y:
# n:
	.quad	-3536375372914705201
	.quad	3216899042115427873
	.quad	-8656341479895810268
	.quad	384674624752670622
# x:
# n:
	.quad	-1570489650318739141
	.quad	7901357532418797613
	.quad	-8552510714889836142
	.quad	1994450408795568649
# y:
# n:
	.quad	-2772722470754069332
	.quad	-3645099276633181562
	.quad	-4972287770713687076
	.quad	7577246245699081289
# x:
# n:
	.quad	5290079808571651999
	.quad	8167369896433324515
	.quad	-858478190094156214
	.quad	-2599611980381530120
# y:
# n:
	.quad	7690559195429757522
	.quad	-1287449322583269639
	.quad	-4702163678632908836
	.quad	2221264141808295925
# x:
# n:
	.quad	7812960376076867998
	.quad	8521417848796342272
	.quad	1376776669096661069
	.quad	6714797679172495171
# y:
# n:
	.quad	-6650834521491128035
	.quad	4635170832504574896
	.quad	4708193331374965435
	.quad	-578551364603791820
# x:
# n:
	.quad	-5331343428513359168
	.quad	-1594173158388970925
	.quad	3751412443506581216
	.quad	8510144615932430295
# y:
# n:
	.quad	5801827543254785146
	.quad	2083476866883992793
	.quad	1197471196934267787
	.quad	-9029160074333376560
# x:
# n:
	.quad	4353956274882683439
	.quad	8331168046261106840
	.quad	5390809653669809755
	.quad	-1569087761174310215
# y:
# n:
	.quad	8184084988070535220
	.quad	3198085190546402584
	.quad	6514854239828358993
	.quad	2641497122555078160
# x:
# n:
	.quad	-3042200493225333119
	.quad	1896725031146286786
	.quad	-8959891330253856147
	.quad	4449610546407715514
# y:
# n:
	.quad	-5237711368058252453
	.quad	2819174976806851295
	.quad	-7033930015163961980
	.quad	-5227368302911178835
# x:
# n:
	.quad	7679371614358264453
	.quad	2217875263981050242
	.quad	8499686669825013147
	.quad	5312431088379607995
# y:
# n:
	.quad	2126344010917241614
	.quad	-4156589969174526154
	.quad	-2611577291354562763
	.quad	-4566863906238875872
# x:
# n:
	.quad	2368668204703455978
	.quad	-5026343197790109278
	.quad	9187793365811876714
	.quad	8675434596900488405
# y:
# n:
	.quad	5733784088746811592
	.quad	1440891914711830570
	.quad	3546437448717812411
	.quad	-873620673649847397
# x:
# n:
	.quad	6937503929553793109
	.quad	5432068757420759934
	.quad	1406785147934951318
	.quad	4697916279678580332
# y:
# n:
	.quad	2739372453288457437
	.quad	-7467222016929492741
	.quad	-5477583036346125937
	.quad	-6366356612087039953
# x:
# n:
	.quad	-4386234147483173662
	.quad	1077290952442428647
	.quad	2108495995810717430
	.quad	7246897862707596412
# y:
# n:
	.quad	4853503886651203583
	.quad	6958689292443367178
	.quad	9115792153810159420
	.quad	-8882198160025198040
# x:
# n:
	.quad	-7701344313819079343
	.quad	-6917038908318249998
	.quad	6856554972114186132
	.quad	3661590714144592347
# y:
# n:
	.quad	6138078669642503456
	.quad	-3385391953960434934
	.quad	-4404541465636845115
	.quad	9195141100152379491
# x:
# n:
	.quad	-1824456544987074742
	.quad	-1790968051045833034
	.quad	-3362609521444548841
	.quad	2605339658833335947
# y:
# n:
	.quad	6480245165882478516
	.quad	-4987493220223779072
	.quad	-7209661655355272015
	.quad	2235836643045526060
# x:
# n:
	.quad	4039720572904226356
	.quad	-3530603830332817908
	.quad	-5412264922819940482
	.quad	-6344627846865482522
# y:
# n:
	.quad	-6823376461906654765
	.quad	-8412350876484401549
	.quad	-1324120725830016375
	.quad	9027462102671507755
# x:
# n:
	.quad	8783407394128560818
	.quad	7376789004300468467
	.quad	-7578887013212246597
	.quad	-6097225252617577493
# y:
# n:
	.quad	-1325406231608479886
	.quad	-2348166216598129770
	.quad	7389386308814358917
	.quad	5608255613246490068
# x:
# n:
	.quad	6403645278478157638
	.quad	-2357058197722565161
	.quad	-2547803976032059072
	.quad	1111024561602945001
# y:
# n:
	.quad	2432255908554763514
	.quad	-6611053558329495724
	.quad	-7393319093166061962
	.quad	-6508988405978419994
# x:
# n:
	.quad	5232320859062687363
	.quad	3479671194084536318
	.quad	7077079605406571487
	.quad	-5881788928630625088
# y:
# n:
	.quad	-5576780748433639786
	.quad	4755468591659384375
	.quad	1793652357267231714
	.quad	-1772106618628131146
# x:
# n:
	.quad	2002481364842221156
	.quad	-5831275295112479221
	.quad	3893952012202605622
	.quad	-6564724576835502613
# y:
# n:
	.quad	2292111287753376048
	.quad	-8451466960094392192
	.quad	-8929670788814888233
	.quad	-6409040990877199084
# x:
# n:
	.quad	-7855233217754798840
	.quad	-4591243596471132025
	.quad	-2230722642212522956
	.quad	3349699306132604268
# y:
# n:
	.quad	-4379884921522405141
	.quad	-3291575053126204858
	.quad	-2559446834933900538
	.quad	-8340804358060158942
# x:
# n:
	.quad	4685192244712893266
	.quad	8152945899361001156
	.quad	8309831141764221990
	.quad	-370507996456974773
# y:
# n:
	.quad	-5992532916496275656
	.quad	3888939138149047738
	.quad	1767872823081287582
	.quad	-4845724939649511561
# x:
# n:
	.quad	-7781892169793918194
	.quad	7907428950850796852
	.quad	-4181826361503389295
	.quad	5378487373964104269
# y:
# n:
	.quad	3360139800351271421
	.quad	-5359177700618470276
	.quad	4706497263134029400
	.quad	6089662865027515793
# x:
# n:
	.quad	3800400766436878927
	.quad	-8447006988393223435
	.quad	9072146654478038625
	.quad	3322695798049740207
# y:
# n:
	.quad	-1625253557020365363
	.quad	-4030978795565487058
	.quad	-7736227022250817221
	.quad	-5286217603968675630
# x:
# n:
	.quad	-3301531680286555923
	.quad	-1862695601231864817
	.quad	2928772303161817458
	.quad	7201968779164057534
# y:
# n:
	.quad	4247298654028266951
	.quad	5562319814897726247
	.quad	1190428671371189184
	.quad	-708006228955386861
# x:
# n:
	.quad	4944884043382224429
	.quad	977170545639712042
	.quad	-3865207241266541217
	.quad	6299415593100323534
# y:
# n:
	.quad	-2153981372967525187
	.quad	7570296976747407863
	.quad	-475758407680140220
	.quad	-6721259508104068909
# x:
# n:
	.quad	8447431120659968558
	.quad	-4272910225435254882
	.quad	-1237383252360473969
	.quad	-8688854090401777686
# y:
# n:
	.quad	2519823017521713415
	.quad	2625076634301967961
	.quad	-5563705207632251380
	.quad	-1998125852050794954
# x:
# n:
	.quad	-8149688178789540293
	.quad	-8772236807989352602
	.quad	-5130321941521698600
	.quad	6497744711134191629
# y:
# n:
	.quad	578843012365604353
	.quad	1150178301468873650
	.quad	-7062148565580498821
	.quad	1710857952379646677
# x:
# n:
	.quad	-2445089347098714382
	.quad	-1076439149726881550
	.quad	521919482130222274
	.quad	5114884441865251284
# y:
# n:
	.quad	-5936608031857509256
	.quad	-2726825548769187397
	.quad	2594201466013274615
	.quad	7079953108054157411
# x:
# n:
	.quad	-6038555427233115517
	.quad	5008482373598278056
	.quad	5088194821823962044
	.quad	4719623519657011609
# y:
# n:
	.quad	4136896827029757688
	.quad	-6477766126826807552
	.quad	1684247120465969538
	.quad	1899974713668470154
# x:
# n:
	.quad	7488903193117496244
	.quad	-2208981635327227248
	.quad	-3967338856152210340
	.quad	-7969006553141606078
# y:
# n:
	.quad	-6078298314789125733
	.quad	-3540786754224941733
	.quad	-3016033890828907105
	.quad	-4065520059252948060
# x:
# n:
	.quad	-3288358924567646901
	.quad	3907092080766314969
	.quad	-8332074906685476589
	.quad	-4367633784652723400
# y:
# n:
	.quad	-465986379387954976
	.quad	2133345616503933282
	.quad	-2107863330897952083
	.quad	6307492288984839681
# x:
# n:
	.quad	-3359150703487422951
	.quad	5555184262559098587
	.quad	-7564197111420785709
	.quad	7277078017830154524
# y:
# n:
	.quad	-5750045231752949664
	.quad	-2264423641008423408
	.quad	3467292976229035385
	.quad	4021216384034214595
# x:
# n:
	.quad	6047003499781451841
	.quad	5123433071225523383
	.quad	8533132189090115609
	.quad	3456777560435806181
# y:
# n:
	.quad	-2545049288944488808
	.quad	-1375598926027276478
	.quad	7557562569243865025
	.quad	-7344323763746678568
# x:
# n:
	.quad	-8736514918854837573
	.quad	-4212654716992946957
	.quad	-2378130970944192124
	.quad	8659679478646059566
# y:
# n:
	.quad	6153397943937329926
	.quad	2000595630492214035
	.quad	7239023581025269074
	.quad	2863063842414179218
# x:
# n:
	.quad	9002295034341326933
	.quad	-3734676349373211032
	.quad	529657094605988736
	.quad	7567188304155609931
# y:
# n:
	.quad	4023152606645418007
	.quad	1848726497259665715
	.quad	2794347239316313511
	.quad	-1977900343049861607
# x:
# n:
	.quad	7584258928630344442
	.quad	-3868835058405331265
	.quad	6327120641501330830
	.quad	-3455030538113270710
# y:
# n:
	.quad	6500425717718563407
	.quad	1603839471186946220
	.quad	1731127711564524115
	.quad	-1450475235998632109
# x:
# n:
	.quad	1208463300520881122
	.quad	4374855677100975238
	.quad	8880268743968475071
	.quad	-7333353994142037845
# y:
# n:
	.quad	2084423847180531572
	.quad	-8573543492633404765
	.quad	-2387757608559252551
	.quad	9128699002604539552
# x:
# n:
	.quad	275559899187236864
	.quad	-6802226300759016519
	.quad	-7141209195567878041
	.quad	-503682706235239767
# y:
# n:
	.quad	-7241301274768551462
	.quad	-5194617231283630843
	.quad	3033720824376320215
	.quad	-6398368793681750301
# x:
# n:
	.quad	-3716096667659052017
	.quad	2835654655424732189
	.quad	1416622932426787397
	.quad	-1748207998899630233
# y:
# n:
	.quad	2082418805505183997
	.quad	-4437180272671614779
	.quad	6536010080592136527
	.quad	-7551827341764711288
# x:
# n:
	.quad	-3431396393690887142
	.quad	-5456505332342497624
	.quad	2935545530221557609
	.quad	-2830356093709995490
# y:
# n:
	.quad	-1707389661442682697
	.quad	2737806369105049637
	.quad	-8967069755143152540
	.quad	-8387666442967550491
# x:
# n:
	.quad	5418732900711126990
	.quad	-5809126453910681891
	.quad	-1831669113361088960
	.quad	4466128589326600679
# y:
# n:
	.quad	-5783298367384400732
	.quad	-3060679570975330082
	.quad	-2128964096530281937
	.quad	-7620170169594002307
# x:
# n:
	.quad	11273427939761747
	.quad	-2623484531857261039
	.quad	-2221125855227355368
	.quad	351549896615025027
# y:
# n:
	.quad	8172066932815662022
	.quad	2000624809479922038
	.quad	-4675732999895510624
	.quad	229783548966413231
# x:
# n:
	.quad	-2987338699303249033
	.quad	-9024485917485340503
	.quad	-680111026512962762
	.quad	-2932284478707122461
# y:
# n:
	.quad	7785623330045208394
	.quad	-1659887353376633497
	.quad	-214799719271988389
	.quad	5107013459833364192
# x:
# n:
	.quad	2951887269666552936
	.quad	3761085318991065317
	.quad	-8951875884454856425
	.quad	-3319276931934853956
# y:
# n:
	.quad	-6557228310989895743
	.quad	-1752778038320159262
	.quad	-7216175105044961670
	.quad	7837994546075106474
# x:
# n:
	.quad	-6261411755762636011
	.quad	4403348581068611331
	.quad	-2829921497721314526
	.quad	7225311479234567879
# y:
# n:
	.quad	1916811286342534712
	.quad	-5468775282958344482
	.quad	8413916328160840566
	.quad	2552599320340219974
# x:
# n:
	.quad	6177712423777023244
	.quad	-2797738164478254815
	.quad	2037986155297586815
	.quad	-767952367615720580
# y:
# n:
	.quad	-7732525302196654545
	.quad	1439144668633039590
	.quad	6792000778248605447
	.quad	-1161119556138094594
# x:
# n:
	.quad	4888468091264704203
	.quad	-8792414724728266360
	.quad	2099889632107209549
	.quad	-839113921682536296
# y:
# n:
	.quad	-2533243027659134600
	.quad	8579350875524493217
	.quad	7613617127139809896
	.quad	1063514383288956018
# x:
# n:
	.quad	4282569914598178149
	.quad	6937719741188398964
	.quad	-1657284834161092720
	.quad	-2083309168118984067
# y:
# n:
	.quad	794863679688857102
	.quad	-5398894850976220131
	.quad	-8636200853136321824
	.quad	-3496204697496437356
# x:
# n:
	.quad	-514655708343932821
	.quad	7327802349344843066
	.quad	1882928400523767767
	.quad	-4859081700628216131
# y:
# n:
	.quad	7826800120096847972
	.quad	-8854806551816707187
	.quad	1614501905080211627
	.quad	753478650252546377
# x:
# n:
	.quad	7162396772005206859
	.quad	-631502131097051633
	.quad	37714062108240949
	.quad	-1458856407872221446
# y:
# n:
	.quad	-3248017694092523002
	.quad	5958109034882186931
	.quad	-3631291175934642463
	.quad	1745876658861224369
# x:
# n:
	.quad	-8932933290299790160
	.quad	-7696046744017193955
	.quad	7528829537219497121
	.quad	8999494173143166860
# y:
# n:
	.quad	9110220046847087717
	.quad	7845554836341214327
	.quad	-2685860933215011359
	.quad	1512791638560492758
# x:
# n:
	.quad	2454889919282399963
	.quad	7991354617290269367
	.quad	-4659204444797949420
	.quad	5919618931658868614
# y:
# n:
	.quad	4845217261279329040
	.quad	-8467481402694614026
	.quad	926457349816021795
	.quad	-3790607444343179167
# x:
# n:
	.quad	9011022573767180347
	.quad	859821898783764773
	.quad	-5876753316758635786
	.quad	2432001160659481161
# y:
# n:
	.quad	-547616567461866336
	.quad	-6117046041382723518
	.quad	1004108471123769110
	.quad	6570187709332571812
# x:
# n:
	.quad	-1167211169361087370
	.quad	-1552205579364254187
	.quad	7312000013265710434
	.quad	-9013534915856115268
# y:
# n:
	.quad	7521621864626294053
	.quad	-4157926977943065851
	.quad	-8571024983118530093
	.quad	9180531503051471194
# x:
# n:
	.quad	624363391289095058
	.quad	-3888128614244998972
	.quad	1226545167618299745
	.quad	7782973210416881599
# y:
# n:
	.quad	3680621111633581161
	.quad	1414550673052507301
	.quad	3902073617602775382
	.quad	5645246777577538346
# x:
# n:
	.quad	6073341845641140847
	.quad	-8194578032314704506
	.quad	2953853119158818076
	.quad	-8487464339302927794
# y:
# n:
	.quad	4126676508963535910
	.quad	4800941746730420277
	.quad	3442548447367680151
	.quad	-5566611351056564188
# x:
# n:
	.quad	-8920359443706520842
	.quad	-9069341142196428873
	.quad	1272953831656187529
	.quad	-4484580163212393064
# y:
# n:
	.quad	8234715639106376486
	.quad	1597322131868724038
	.quad	-2700600340541445057
	.quad	8030210439396376229
# x:
# n:
	.quad	865869368833897925
	.quad	-1129422428951931748
	.quad	3366173816255141029
	.quad	-1446274115111485349
# y:
# n:
	.quad	-4692516107462572330
	.quad	-1553469466105308340
	.quad	-4576238390334916016
	.quad	3130287454370380242
# x:
# n:
	.quad	1688041476558654402
	.quad	8997664688593788035
	.quad	-1296700508686586772
	.quad	-4780858223515100592
# y:
# n:
	.quad	1691939997053185929
	.quad	-3464234509501890241
	.quad	3577491976519391326
	.quad	-8639027526221870867
# x:
# n:
	.quad	-3815896548202857150
	.quad	4688672174730654969
	.quad	3575482312729264055
	.quad	-661125705714863704
# y:
# n:
	.quad	4447946776523043531
	.quad	5330156588088600819
	.quad	-2227184659511175077
	.quad	-5671086605037328853
# x:
# n:
	.quad	556906785019387324
	.quad	-206977785649964243
	.quad	8789074833514828324
	.quad	888766881109531731
# y:
# n:
	.quad	6934076887774991869
	.quad	1655972953454030630
	.quad	392790363136558268
	.quad	-1870465292655206064
# x:
# n:
	.quad	-8065484606472159351
	.quad	2931795415555445396
	.quad	-1084790948406462544
	.quad	-2627641309004072039
# y:
# n:
	.quad	7318792600160222490
	.quad	-289423717504094811
	.quad	-1654363528029635075
	.quad	-2222853990814606729
# x:
# n:
	.quad	7491087025921201404
	.quad	6799030957625075642
	.quad	-5682765536374871827
	.quad	1247540660261630523
# y:
# n:
	.quad	-3547681867572313087
	.quad	-875302161616817522
	.quad	-1221905992184243624
	.quad	8419610174746058897
# x:
# n:
	.quad	-7165779600080433117
	.quad	-7325964686138204308
	.quad	-2271615751628953702
	.quad	2017082076881383226
# y:
# n:
	.quad	7851048788761476544
	.quad	3657327592777318941
	.quad	-6665636386035774629
	.quad	-5938886079228263218
# x:
# n:
	.quad	6124849752548025877
	.quad	9098510956594664401
	.quad	-8543488250483840657
	.quad	-7887141673247522107
# y:
# n:
	.quad	8349242701525828312
	.quad	-5281447635422239302
	.quad	284154765501773075
	.quad	5832961781422757991
# x:
# n:
	.quad	68663930493498846
	.quad	7712450781746040670
	.quad	6658251659111319106
	.quad	-4878601648019431265
# y:
# n:
	.quad	1586117325687843591
	.quad	-3549505929210725709
	.quad	-5087777360299574263
	.quad	6705301921280320236
# x:
# n:
	.quad	4461985182444287920
	.quad	2862112469084200727
	.quad	-8072366623087998063
	.quad	-4669371549533334019
# y:
# n:
	.quad	-1444237570603216312
	.quad	-8938524721388960786
	.quad	-7182382186496042403
	.quad	-7845542604498338827
# x:
# n:
	.quad	-104433905237680955
	.quad	-6557622777397019535
	.quad	-3755294904325474360
	.quad	233538803956687269
# y:
# n:
	.quad	-2895009906736226452
	.quad	3965465696623476663
	.quad	-1402256859175842307
	.quad	-8426878519911034591
# x:
# n:
	.quad	9078309165693473747
	.quad	7029673584856734067
	.quad	7673916582081707222
	.quad	-1225657694394369573
# y:
# n:
	.quad	-5246929286010867176
	.quad	-6337373224155277127
	.quad	1738876262164812735
	.quad	-2926128306190913188
# x:
# n:
	.quad	-5893190725334034411
	.quad	3776207907904802669
	.quad	8116350005969745673
	.quad	5242331339343231925
# y:
# n:
	.quad	-537262260147507418
	.quad	-6732162137395469314
	.quad	4130321136285199923
	.quad	2979165738286473905
# x:
# n:
	.quad	-7334872778209660313
	.quad	1598157383936324355
	.quad	-3200371883104949913
	.quad	7549751396205862587
# y:
# n:
	.quad	5080959455206960361
	.quad	8141131919223659100
	.quad	-2452910852023079558
	.quad	-7083363096345411413
# x:
# n:
	.quad	400097971447655800
	.quad	-8752626705374966145
	.quad	1635801414338444928
	.quad	-7372420723199536316
# y:
# n:
	.quad	-8047236141856813188
	.quad	-3455767458509057049
	.quad	-4885266955818194586
	.quad	-6447842001906296273
# x:
# n:
	.quad	-8791620783200658469
	.quad	8058403466014190968
	.quad	-1827077315308466451
	.quad	4506192828514421632
# y:
# n:
	.quad	658734808454293589
	.quad	3164722034598831001
	.quad	8554479631180532035
	.quad	-3223773132091147921
# x:
# n:
	.quad	-5289596390327573205
	.quad	-2414794766473375934
	.quad	730003568740911156
	.quad	-2189050081879589276
# y:
# n:
	.quad	5750730668782817240
	.quad	3674905003546379980
	.quad	-6065397116783552746
	.quad	-3496740359257395425
# x:
# n:
	.quad	-7763625101013660346
	.quad	-6887226281352602721
	.quad	-2079013969060444466
	.quad	5824637326166394929
# y:
# n:
	.quad	4878370320924461515
	.quad	1691907356377060787
	.quad	1835318671356100383
	.quad	-6297407789206595156
# x:
# n:
	.quad	-8745943289749651021
	.quad	-1462045387211859712
	.quad	2077587024326044327
	.quad	-2067159597204069788
# y:
# n:
	.quad	-4609933093527732346
	.quad	-5644809415765110930
	.quad	3526248037645529838
	.quad	4993882372186764828
# x:
# n:
	.quad	8436173286664087318
	.quad	-8919307982390430282
	.quad	1495494128625136626
	.quad	5811245123645306040
# y:
# n:
	.quad	7226120136436269997
	.quad	-1629225529743289333
	.quad	3415253081642314415
	.quad	7834849757298514901
# x:
# n:
	.quad	-640742141844852532
	.quad	1307818630442040996
	.quad	1071774757606847202
	.quad	819512179623082013
# y:
# n:
	.quad	-148624438863095027
	.quad	-8519406783593759142
	.quad	6377437999072108414
	.quad	4135576546609253654
# x:
# n:
	.quad	-5026551655709427726
	.quad	4362289367311776911
	.quad	7562879471413065908
	.quad	5632450018296857038
# y:
# n:
	.quad	4545593440652726391
	.quad	354716656349016287
	.quad	1037875356310878525
	.quad	767960994871072946
# x:
# n:
	.quad	-3886209590456967474
	.quad	-4800688163700572340
	.quad	2299690677404124013
	.quad	4050376845405329602
# y:
# n:
	.quad	584270318185564700
	.quad	-7269247811417042540
	.quad	1721851061804867800
	.quad	-2351545172251726377
# x:
# n:
	.quad	-4457335630006280442
	.quad	3095655280803183271
	.quad	-2894933536261944236
	.quad	-9059790867685566466
# y:
# n:
	.quad	-753894646842092884
	.quad	-8464754952576292774
	.quad	2958228451432507037
	.quad	-4603402694726966329
# x:
# n:
	.quad	-8618901727531988752
	.quad	938825586484693527
	.quad	2249367039011000634
	.quad	-3970602765562984173
# y:
# n:
	.quad	-8212140620254190186
	.quad	3185498800829599792
	.quad	6639326522812587393
	.quad	-6328416565072777453
# x:
# n:
	.quad	4523676257647217146
	.quad	8112530575255547223
	.quad	7774480466224410204
	.quad	174975778402501475
# y:
# n:
	.quad	6900005156504603975
	.quad	-1528721735008217515
	.quad	5862508651253465036
	.quad	-7538137929374095176
# x:
# n:
	.quad	542693261926252117
	.quad	-307088809831460146
	.quad	-5548660382116562105
	.quad	5910474397228016194
# y:
# n:
	.quad	-37451210362460130
	.quad	6657995214381310267
	.quad	-8640127297846022865
	.quad	940401911242446883
# x:
# n:
	.quad	2334346170733762039
	.quad	-1089439360219665457
	.quad	-2659866860395783381
	.quad	-5809089517702143369
# y:
# n:
	.quad	-3017701497098388634
	.quad	-2661787926058212748
	.quad	-8368939323905690604
	.quad	5930003920034953530
# x:
# n:
	.quad	-8594154231703433466
	.quad	-8331722282835538536
	.quad	-2540761877803444269
	.quad	4171804813640849563
# y:
# n:
	.quad	-3627871585764485108
	.quad	-5126098415880429780
	.quad	5020476805735368658
	.quad	-5871504537030601956
# x:
# n:
	.quad	8411547508536860209
	.quad	4800453365607613931
	.quad	-585144074959585755
	.quad	-5294014002330928384
# y:
# n:
	.quad	8321450614760895674
	.quad	6113516715941367276
	.quad	868934142480734235
	.quad	1167529305178823533
# x:
# n:
	.quad	7262826763676909993
	.quad	2659830840416527908
	.quad	-2614850715872893821
	.quad	5483121466193859432
# y:
# n:
	.quad	5220777449186488345
	.quad	-3582047040848503627
	.quad	-6837422991546296808
	.quad	2177459494837073268
# x:
# n:
	.quad	5295773204128580727
	.quad	-7132052621034266578
	.quad	-8108516835349261250
	.quad	-4936988484390389089
# y:
# n:
	.quad	-5541073318365807486
	.quad	-3643003422626595748
	.quad	-8747238621057139979
	.quad	747378715980981882
# x:
# n:
	.quad	7022038390619456712
	.quad	5042823249373168056
	.quad	8238984119687752281
	.quad	4258380464190433098
# y:
# n:
	.quad	-1436875604572459488
	.quad	9213063695493367053
	.quad	5919509588800366619
	.quad	-3102953199728812810
# x:
# n:
	.quad	-4817944199732361553
	.quad	1477686052349125569
	.quad	790658224908178572
	.quad	-5300394683660536051
# y:
# n:
	.quad	3082205834148728812
	.quad	1141483309928407661
	.quad	330668473356103417
	.quad	5357275470087406468
# x:
# n:
	.quad	4026878427797357660
	.quad	-8378028473722563012
	.quad	-3013226997642786147
	.quad	-3844567812304555253
# y:
# n:
	.quad	3564713542797456401
	.quad	6233753435472520583
	.quad	-7874096161109415344
	.quad	-632169780417606621
# x:
# n:
	.quad	-1975600131592237153
	.quad	5577216517797620675
	.quad	5870106684468034026
	.quad	2771669083272365320
# y:
# n:
	.quad	3139465585407043355
	.quad	-8159984886275163073
	.quad	7455824907699106319
	.quad	-160951048878202800
# x:
# n:
	.quad	7881886517593900521
	.quad	-8696686799949572821
	.quad	5524627999766958985
	.quad	-3596142543336131498
# y:
# n:
	.quad	9085782195099730115
	.quad	5126004319793464190
	.quad	5864166551457944148
	.quad	-7710953349529610757
# x:
# n:
	.quad	-6782733787606234059
	.quad	-7938717313128199333
	.quad	4719083118854998002
	.quad	301682028489654552
# y:
# n:
	.quad	-3815443111007571286
	.quad	-7531145271801715908
	.quad	-4957893740038396032
	.quad	-6897573806500565179
# x:
# n:
	.quad	7648499017674136339
	.quad	-5976811607112300039
	.quad	-7638306161776828336
	.quad	-7380724587092390644
# y:
# n:
	.quad	5130572920107658070
	.quad	-3554147722034698008
	.quad	5366184422608968903
	.quad	7224749643295916779
# x:
# n:
	.quad	5482763964981841299
	.quad	7201490474420425285
	.quad	792419882306956210
	.quad	4415587735644465292
# y:
# n:
	.quad	3092273787891900730
	.quad	1277988963462976977
	.quad	104328012474015029
	.quad	1598591144858048153
# x:
# n:
	.quad	-7120450041645125256
	.quad	-6215971487820155829
	.quad	4546359258026793834
	.quad	5325298321648614393
# y:
# n:
	.quad	32586292488736767
	.quad	-4571229846168592052
	.quad	-7483289756515980239
	.quad	-27481210145577058
# x:
# n:
	.quad	2339606884784918702
	.quad	-6656802079681939150
	.quad	8450876697528754546
	.quad	2097718206594496210
# y:
# n:
	.quad	-2486375730544584780
	.quad	7852380090497107695
	.quad	4500691897605459332
	.quad	6741166025451507092
# x:
# n:
	.quad	6711655640163224385
	.quad	-2509108352508830717
	.quad	-8261802337946847072
	.quad	6987557391858464036
# y:
# n:
	.quad	1259801864032549969
	.quad	-2700315549808170294
	.quad	-4693770278087160405
	.quad	8957249616985239861
# x:
# n:
	.quad	6303150313222052204
	.quad	514837997503937657
	.quad	4710205999333945884
	.quad	-4110238727837784701
# y:
# n:
	.quad	4813651294640939848
	.quad	7938704239855969359
	.quad	-1905882276140293283
	.quad	2842593170702010441
# x:
# n:
	.quad	6516202929313709482
	.quad	634257692969193483
	.quad	-1904746133209988448
	.quad	3992145286067218435
# y:
# n:
	.quad	6109229936707293256
	.quad	1843402693310637350
	.quad	2834455770832501798
	.quad	-1279412514055593673
# x:
# n:
	.quad	2433604779298262271
	.quad	566247126422540889
	.quad	-6299240945954116179
	.quad	2368342593418428593
# y:
# n:
	.quad	-293425177718282653
	.quad	-3268906233552002926
	.quad	4607138659133057872
	.quad	-5296018880718163145
# x:
# n:
	.quad	-1524489831427993464
	.quad	-8330986372283339311
	.quad	-6025701441580482643
	.quad	-3246976332053623371
# y:
# n:
	.quad	-6089997592420382213
	.quad	7742043366922266974
	.quad	-5947968234783843360
	.quad	-7418004557206292193
# x:
# n:
	.quad	2502438985699049953
	.quad	-3377638530462896802
	.quad	-2825873960632201069
	.quad	-4214281971395972432
# y:
# n:
	.quad	-9090302988160705813
	.quad	-1366618078135293421
	.quad	8900873989030577032
	.quad	-2794185649995968259
# x:
# n:
	.quad	-7328679017944023208
	.quad	8173283090755836049
	.quad	-1124445671141962461
	.quad	-9154098781369851775
# y:
# n:
	.quad	-3907887590976772126
	.quad	-2933315940206898387
	.quad	-1800711206718281106
	.quad	-5125375384154834582
# x:
# n:
	.quad	-8530799975287611364
	.quad	-3605585258204346234
	.quad	7960353013030526742
	.quad	5395685486853800562
# y:
# n:
	.quad	8087682902149332085
	.quad	6185248350564858432
	.quad	-3542875844291631597
	.quad	-1196136047869221813
# x:
# n:
	.quad	-4703838899906144553
	.quad	25624615490337536
	.quad	8533672656664076783
	.quad	2396966146494251448
# y:
# n:
	.quad	4420261299667472362
	.quad	6326411273403215856
	.quad	-7604025306988257747
	.quad	9064359338427930342
# x:
# n:
	.quad	-4418015372609036629
	.quad	-3147075272394777859
	.quad	-6758376468919037467
	.quad	6632540822619899347
# y:
# n:
	.quad	-8456141921718092056
	.quad	-4102963424998328193
	.quad	8386292690763329656
	.quad	1587699818836884094
# x:
# n:
	.quad	3375789108768023011
	.quad	-598030318250583690
	.quad	-3776857016793581085
	.quad	-663064812258475918
# y:
# n:
	.quad	-4294148452068484182
	.quad	-6418694192881211921
	.quad	5784560502150371153
	.quad	-5866608068428466798
# x:
# n:
	.quad	-1975027659906428756
	.quad	878563958536848876
	.quad	604959409638137526
	.quad	-3107640035149141708
# y:
# n:
	.quad	-7618736678139315147
	.quad	-4975380691742949807
	.quad	3354343992767094823
	.quad	1714449277103140286
# x:
# n:
	.quad	1913277855804345177
	.quad	788279282532512431
	.quad	6533435367344303898
	.quad	4965256514131179969
# y:
# n:
	.quad	417843590083192781
	.quad	6831584506943967773
	.quad	-7855657503332504431
	.quad	5447989964621877586
# x:
# n:
	.quad	4541941475841918427
	.quad	2722958850556362282
	.quad	-7568667183494823689
	.quad	-7498331809515443196
# y:
# n:
	.quad	8286366989243810346
	.quad	-3196478909002733762
	.quad	-1889280500768609649
	.quad	1364665560204379242
# x:
# n:
	.quad	680126050866774026
	.quad	8553530572624126506
	.quad	-2338143770474968282
	.quad	-7341509785182527791
# y:
# n:
	.quad	-4135573498601083054
	.quad	6119704216824424121
	.quad	4997638921448179066
	.quad	-2061651567350381307
# x:
# n:
	.quad	-4562840973367267706
	.quad	-2135187847611879104
	.quad	-4429683241043219818
	.quad	6531582662784529434
# y:
# n:
	.quad	2740783376206190801
	.quad	2381621932797220738
	.quad	-7826899293538220117
	.quad	-6988563274440911691
# x:
# n:
	.quad	4226583414173765879
	.quad	-1828820116521458546
	.quad	107484897394802687
	.quad	-7957563731462411454
# y:
# n:
	.quad	-6058911065222545617
	.quad	6925029499492297663
	.quad	-1756802447832647307
	.quad	-1614943226743475055
# x:
# n:
	.quad	-8894180113257298023
	.quad	6049801041556529996
	.quad	4622041948554525718
	.quad	-5352676386766048875
# y:
# n:
	.quad	7542990332328237518
	.quad	8552715102862767786
	.quad	6716955555929479738
	.quad	7831164702957463316
# x:
# n:
	.quad	8030802722560909743
	.quad	-8564746998872814066
	.quad	-1982042349995833025
	.quad	-8406903901731534121
# y:
# n:
	.quad	-6442601031706695668
	.quad	-8483295034328326273
	.quad	3971289713014338774
	.quad	-321258196667845342
# x:
# n:
	.quad	-1712415465659319765
	.quad	-5013490460271749897
	.quad	-8333837513099583783
	.quad	-5437700357798935753
# y:
# n:
	.quad	1899940000473345969
	.quad	-5893601597702733503
	.quad	-7178132792421292930
	.quad	3522384751938411137
# x:
# n:
	.quad	-3264241560250362197
	.quad	-5963196899236040906
	.quad	4704651075945948133
	.quad	6612353199632378751
# y:
# n:
	.quad	8396550619957833456
	.quad	-4605570915269696862
	.quad	9072977165255147337
	.quad	5619946515596438777
# x:
# n:
	.quad	5370803570637503796
	.quad	2796392830544300362
	.quad	-1040675102204223726
	.quad	2525373748671607109
# y:
# n:
	.quad	2717653398847589414
	.quad	1116339450779409830
	.quad	2781670129443849107
	.quad	3681543951367064610
# x:
# n:
	.quad	8693659679260588223
	.quad	-3163118534859254936
	.quad	3458961600939758937
	.quad	-8118422156846962890
# y:
# n:
	.quad	-5377181096798460863
	.quad	4846445227342373406
	.quad	2609187885834982319
	.quad	-7711382236229402861
# x:
# n:
	.quad	4172746983974483963
	.quad	8938898771566146576
	.quad	8510393631523484154
	.quad	-3004219039139952701
# y:
# n:
	.quad	-4587786410562204771
	.quad	-5041222101671739942
	.quad	-9024600679918728095
	.quad	-3004770377698925229
# x:
# n:
	.quad	2768707272281404990
	.quad	8879542560380652242
	.quad	2730413278468764825
	.quad	-6115051425337790726
# y:
# n:
	.quad	1987232791784503165
	.quad	-1036406105706299025
	.quad	1060645043719218954
	.quad	2878956404135843225
# x:
# n:
	.quad	7424261032800963030
	.quad	6778139773930414261
	.quad	-4126104818317026531
	.quad	4197530529565874233
# y:
# n:
	.quad	-1601594089611201947
	.quad	3956191842949686613
	.quad	7673029231278969915
	.quad	2378020785993110945
# x:
# n:
	.quad	665602724459519824
	.quad	1885344137280324440
	.quad	7160338826649624284
	.quad	392663876172332627
# y:
# n:
	.quad	-6506066706753635601
	.quad	8165594458616342350
	.quad	-5981298464522190212
	.quad	-5534524331481146860
# x:
# n:
	.quad	-3517919782563164254
	.quad	129919541658051979
	.quad	1782434939751212843
	.quad	-3042317229675268394
# y:
# n:
	.quad	-2505661218217538934
	.quad	3533996973132887829
	.quad	-2405607423650591387
	.quad	-3338660155793496130
# x:
# n:
	.quad	-2607353183369609682
	.quad	1516518185006337872
	.quad	-1246279101846212683
	.quad	1414229249536141299
# y:
# n:
	.quad	8078857760318044455
	.quad	-6317026081254026333
	.quad	-1338901406776701372
	.quad	-7733963646388784598
# x:
# n:
	.quad	3288013736723877877
	.quad	-7795256579540043389
	.quad	6933249741531774390
	.quad	4494649596810893981
# y:
# n:
	.quad	260517084449667319
	.quad	-7355084176730350740
	.quad	-8532814547607534841
	.quad	8519391192592973361
# x:
# n:
	.quad	-3422641513364162560
	.quad	6545405418263716065
	.quad	-7441303813917709569
	.quad	5822360567859215685
# y:
# n:
	.quad	-3476629082745900229
	.quad	7206528767187775627
	.quad	616885265163744762
	.quad	995748773072965015
# x:
# n:
	.quad	-1234207459968520889
	.quad	-8027623410442090499
	.quad	-4121547868778257109
	.quad	5657373308852347536
# y:
# n:
	.quad	-1115606082275833361
	.quad	7628687544665887471
	.quad	2247501583981872567
	.quad	6204333158785397412
# x:
# n:
	.quad	3036713937356915713
	.quad	7897843213416792705
	.quad	792083756822907925
	.quad	5526045722402837615
# y:
# n:
	.quad	4878784198536905730
	.quad	5968039817862236238
	.quad	4790554708854130022
	.quad	7851651627553276928
# x:
# n:
	.quad	-7412896148445315675
	.quad	-5706696048276993039
	.quad	1954661785125259562
	.quad	-6671907433624417945
# y:
# n:
	.quad	9082595160767586145
	.quad	-9086805432936182449
	.quad	-6689849224164333189
	.quad	6510143184393016950
# x:
# n:
	.quad	-7083232711144633206
	.quad	6991082109980549825
	.quad	-5577838412821108225
	.quad	8746407963372957113
# y:
# n:
	.quad	-2915483625026051695
	.quad	2959470173754959882
	.quad	-5240975197572878918
	.quad	-1857165579545369103
# x:
# n:
	.quad	-6554113606753920821
	.quad	-582958308351078076
	.quad	4091304895291194515
	.quad	7658172134359900617
# y:
# n:
	.quad	2927032822859855870
	.quad	-2626991515634152956
	.quad	-5199659315370009568
	.quad	6657502815610459011
# x:
# n:
	.quad	-320123816552340530
	.quad	3418346889341749099
	.quad	-3597209487266609151
	.quad	8916204131647227430
# y:
# n:
	.quad	1769785191299460576
	.quad	3042778791003115406
	.quad	5412616589836087696
	.quad	-5654434669289601062
# x:
# n:
	.quad	-6728443863773366715
	.quad	3326589609582447790
	.quad	1870792750679029294
	.quad	6678471432562491940
# y:
# n:
	.quad	-7523155100619103690
	.quad	-2962836524366314008
	.quad	2851586058891122735
	.quad	-5146221434034535148
# x:
# n:
	.quad	-3833084793704266469
	.quad	8423877136712514631
	.quad	4237652749496587285
	.quad	-6274569228489833604
# y:
# n:
	.quad	4505254567507733067
	.quad	-3064019211942655980
	.quad	-5508803289429949959
	.quad	-1207837132228845985
# x:
# n:
	.quad	8683111362138336633
	.quad	-4248859399603013088
	.quad	-2230631039309077102
	.quad	8235495093235679114
# y:
# n:
	.quad	1311823829660304168
	.quad	7988906707285801767
	.quad	6357564695789543953
	.quad	5227395586142087672
# x:
# n:
	.quad	-5865148289354402717
	.quad	9165332682104243259
	.quad	8494077139843890359
	.quad	2097190996167164726
# y:
# n:
	.quad	-6694596093752245935
	.quad	-4219238241426806737
	.quad	-6000132771232077238
	.quad	-3471097513392991065
# x:
# n:
	.quad	-447979063590718254
	.quad	-904005126949030938
	.quad	-1566172730986546815
	.quad	-7444117747108748240
# y:
# n:
	.quad	-2739424714556228714
	.quad	3822563063264637915
	.quad	-6598146864049744067
	.quad	5721124151950934593
# x:
# n:
	.quad	4077509626259255920
	.quad	5041353048808078818
	.quad	7673678137345371180
	.quad	6402627034937615501
# y:
# n:
	.quad	-8796844227027638940
	.quad	-5993346045831149905
	.quad	-1858851711927240267
	.quad	-1886820592349798555
# x:
# n:
	.quad	-2312476864021791869
	.quad	-856135878060435307
	.quad	-9204412558723553565
	.quad	4746711933826595775
# y:
# n:
	.quad	-2646189435307306291
	.quad	8679544402136328089
	.quad	-2782961384328627234
	.quad	1475616876830245665
# x:
# n:
	.quad	5995490537502443140
	.quad	6727285050584952509
	.quad	-1487981042059057820
	.quad	-2938086779570169124
# y:
# n:
	.quad	6712280525725336211
	.quad	6534961284137080348
	.quad	-3812329750720174933
	.quad	6993899445515509174
# x:
# n:
	.quad	-2142171257910723761
	.quad	451041252101317251
	.quad	-8085693155980661444
	.quad	-538273171886689378
# y:
# n:
	.quad	2231329439207511662
	.quad	1231296865709274097
	.quad	-73490990752769441
	.quad	-7719679157237015722
# x:
# n:
	.quad	4250468590040173159
	.quad	-4248193925992543728
	.quad	-3817125191565289388
	.quad	5463542261137737849
# y:
# n:
	.quad	-2336425540415322013
	.quad	-8029334408863174191
	.quad	6523307929987761481
	.quad	-6600788188223352336
# x:
# n:
	.quad	7819698005051587870
	.quad	5571241420625399378
	.quad	-8005777689167699673
	.quad	99024601618034833
# y:
# n:
	.quad	-7345365870868719704
	.quad	-1286814869884030246
	.quad	-2710141513826842896
	.quad	-5377657321123060834
# x:
# n:
	.quad	2772031168101928827
	.quad	4871045547860906627
	.quad	5758237884153947252
	.quad	-3177939973562682850
# y:
# n:
	.quad	192216205220164293
	.quad	-3550148732169421503
	.quad	2795855253663962177
	.quad	3086674912459734629
# x:
# n:
	.quad	4046278661375808695
	.quad	7859548661183424621
	.quad	-6198007781137622243
	.quad	1243049394245684507
# y:
# n:
	.quad	2508229979283300081
	.quad	-5209059179406518947
	.quad	868492964011101036
	.quad	-7074073614730485661
# x:
# n:
	.quad	-6572533219653458548
	.quad	-3276799346808300327
	.quad	-4691813796471286257
	.quad	-6759677419948855350
# y:
# n:
	.quad	4165223478037938896
	.quad	-2155176157723604887
	.quad	-403389132033823625
	.quad	6330266246545264445
# x:
# n:
	.quad	-5677253252604223858
	.quad	6854239184928555696
	.quad	-249341489863175410
	.quad	6430636993623535563
# y:
# n:
	.quad	4281104908127996739
	.quad	-252392329244312364
	.quad	6908751233627416749
	.quad	1568578227785038315
# x:
# n:
	.quad	-3313564437453742395
	.quad	-3091579722089784025
	.quad	-2176523124491129353
	.quad	3995425815223491075
# y:
# n:
	.quad	-538595558638867421
	.quad	2346082849488898049
	.quad	149298054635455941
	.quad	-2320530616123106151
# x:
# n:
	.quad	-4040921511562654819
	.quad	-3238809278429581104
	.quad	3635030107916838270
	.quad	5105049134800865723
# y:
# n:
	.quad	897654722319616559
	.quad	7140588509925119503
	.quad	2183720766279182340
	.quad	-4881346188108375583
# x:
# n:
	.quad	7397782905152604323
	.quad	-18925274664411310
	.quad	-4389106701304538007
	.quad	-132336356277305697
# y:
# n:
	.quad	1290405883966776068
	.quad	-8386084130360391576
	.quad	6018366296572650226
	.quad	3715083506167989248
# x:
# n:
	.quad	-3083036274954352081
	.quad	4932126320576510330
	.quad	8693297158786116254
	.quad	-7359460624731667021
# y:
# n:
	.quad	-8173405365513695670
	.quad	7026272317639605497
	.quad	-4451836898984588958
	.quad	-392223608781989544
# x:
# n:
	.quad	-3105390347887692579
	.quad	-3785673543809912386
	.quad	2256742105900482224
	.quad	1498005239197853567
# y:
# n:
	.quad	-6307671634742401728
	.quad	-962208089241551888
	.quad	-6535810100092215307
	.quad	-7417408971322999164
# x:
# n:
	.quad	4981944010573800925
	.quad	5896868447968832093
	.quad	-4905961582714279193
	.quad	4380123591766206543
# y:
# n:
	.quad	-26217031210890282
	.quad	8282272172893824079
	.quad	4965157127353725713
	.quad	3375892576539553548
# x:
# n:
	.quad	-5758716693041715439
	.quad	7233698390371258899
	.quad	-7665360468192156826
	.quad	-6930818416831076303
# y:
# n:
	.quad	-240166560338440009
	.quad	-7777196594507914768
	.quad	4936472343738646156
	.quad	-8361012047796401562
# x:
# n:
	.quad	-8827258813823372552
	.quad	-7616939034691309400
	.quad	-4790580405773673367
	.quad	-5602982257464525489
# y:
# n:
	.quad	-1436150514833498075
	.quad	-7675753943105415231
	.quad	-2579084162486591515
	.quad	-884532747928976493
# x:
# n:
	.quad	-6629172103476439637
	.quad	-4716175254161694657
	.quad	-8608239026584416788
	.quad	-7248742389731638690
# y:
# n:
	.quad	1427888685729326058
	.quad	6306732994321050991
	.quad	-2446818755866833428
	.quad	5800950212357375076
# x:
# n:
	.quad	3088297724546254933
	.quad	3409115398934684240
	.quad	2387297453117283171
	.quad	3232739908547583189
# y:
# n:
	.quad	7899349690038613822
	.quad	-4565558225828495278
	.quad	7408339710555356901
	.quad	6109763238428387226
# x:
# n:
	.quad	-359346463259776257
	.quad	2322820893498653534
	.quad	-3774705040308056104
	.quad	150833595136075998
# y:
# n:
	.quad	1277941044497376493
	.quad	7492188700908454328
	.quad	-7985355173709119098
	.quad	-4072417620334125469
# x:
# n:
	.quad	-7550385384191261438
	.quad	2099314538288107900
	.quad	8255313467049537191
	.quad	8761773655854708476
# y:
# n:
	.quad	7897319699692238078
	.quad	-4981774633273516240
	.quad	-6332057835555709707
	.quad	4690754388945653796
# x:
# n:
	.quad	-4060447925907554131
	.quad	6105440607724579835
	.quad	-2353477766636420132
	.quad	-8365451351089213701
# y:
# n:
	.quad	-2143157078104074908
	.quad	7877343845581327119
	.quad	-8015685559336688214
	.quad	494052002669338882
# x:
# n:
	.quad	-747440622921136622
	.quad	-4751341494359421361
	.quad	5722591095440302359
	.quad	-4847521782092764400
# y:
# n:
	.quad	-4334498932502418554
	.quad	5418573012248954576
	.quad	-7371593252053645803
	.quad	-1668499800409073370
# x:
# n:
	.quad	5146933640893764629
	.quad	3202724138119665168
	.quad	-7972615118100963906
	.quad	-5901296927958545014
# y:
# n:
	.quad	-3203108531355721294
	.quad	-2278688411463453533
	.quad	5166673240058519934
	.quad	-2164493904904005084
# x:
# n:
	.quad	-4227988303620142698
	.quad	-4616237213935871074
	.quad	4739386207532035150
	.quad	-6782304596001950080
# y:
# n:
	.quad	8288752302329058010
	.quad	3024870004183651819
	.quad	-1035831277545574422
	.quad	-3741903460474205759
# x:
# n:
	.quad	-8326792575811097754
	.quad	-6670379979822750126
	.quad	-4775036055694847029
	.quad	-1854576755147820594
# y:
# n:
	.quad	5970232614593674890
	.quad	-4514664659336008737
	.quad	5187163623102213279
	.quad	157369504793854436
# x:
# n:
	.quad	-8401567993633068129
	.quad	8345457505146844948
	.quad	-561773299228509100
	.quad	-5994392765621283646
# y:
# n:
	.quad	-2496562860790060002
	.quad	3838529973307393428
	.quad	-4730975311709793106
	.quad	-6048782723936208532
# x:
# n:
	.quad	-6976218548774385372
	.quad	4973685561880183077
	.quad	8917626806765420770
	.quad	945786809574092721
# y:
# n:
	.quad	-6087170911930634717
	.quad	4896390525655542688
	.quad	6655595210029417600
	.quad	5077704573446932048
# x:
# n:
	.quad	8740979402881610549
	.quad	-124900678119963993
	.quad	685717022563743627
	.quad	7355129465889723434
# y:
# n:
	.quad	2508540133720102789
	.quad	-4569676980711994284
	.quad	-2118682097986282946
	.quad	-3651275966317171598
# x:
# n:
	.quad	-3702096400894175459
	.quad	-8671282493133797796
	.quad	-9210466487106772645
	.quad	3869074460789821865
# y:
# n:
	.quad	-1374548772873075110
	.quad	-1599750878185201953
	.quad	-2614338453191101044
	.quad	-1232871604997234210
# x:
# n:
	.quad	-4324066795187883598
	.quad	-7436683364869833907
	.quad	7370044509803585152
	.quad	-4064249992177100123
# y:
# n:
	.quad	-6088105462650526830
	.quad	583896066647748533
	.quad	-3849696911884186380
	.quad	5041922320375012131
# x:
# n:
	.quad	-8270622177198890286
	.quad	-3968801828113878691
	.quad	5714351280121939369
	.quad	260537876936882140
# y:
# n:
	.quad	6555739256745693805
	.quad	-2676431039229958615
	.quad	-7720143153952895024
	.quad	7206902369779223089
# x:
# n:
	.quad	-4158709263038706703
	.quad	-3293430380692887951
	.quad	5241427265383293819
	.quad	-6262666229353340110
# y:
# n:
	.quad	7206899198767316837
	.quad	-8072961715920636209
	.quad	2856815051765698447
	.quad	7980668731035785750
# x:
# n:
	.quad	-4984058093809522957
	.quad	-6754005404654078124
	.quad	4430139768375057194
	.quad	-8594791068694523316
# y:
# n:
	.quad	-3808750409750736403
	.quad	-6853239966232793162
	.quad	-2922424190110350011
	.quad	-694022764748368525
# x:
# n:
	.quad	-6612877096605866518
	.quad	-118044822391053589
	.quad	7486782898789758285
	.quad	7817950374655209676
# y:
# n:
	.quad	-6611210984246428820
	.quad	-3781027833863212988
	.quad	3736360814079229327
	.quad	4650320672985670994
# x:
# n:
	.quad	4552448707167632326
	.quad	7032924463178922251
	.quad	-2219725719858957031
	.quad	8510865692442403317
# y:
# n:
	.quad	-1148503052933808751
	.quad	-4762636221666634813
	.quad	3847721721825931281
	.quad	-1080174654352974784
# x:
# n:
	.quad	3305726486813281948
	.quad	5866887498196670173
	.quad	-8425380776177161510
	.quad	750963034196146858
# y:
# n:
	.quad	-7752913424276261661
	.quad	-8367525471998727396
	.quad	2969078375273849511
	.quad	-5166779973435608332
# x:
# n:
	.quad	394219438524167477
	.quad	-3017472430254864558
	.quad	79605843057483922
	.quad	5559710288918145334
# y:
# n:
	.quad	-4837206265778396910
	.quad	2713324822310055459
	.quad	3293171580176389415
	.quad	-1005965261012090960
# x:
# n:
	.quad	-809790412916463863
	.quad	167634336647776915
	.quad	-3996728812952729777
	.quad	-283747955962444841
# y:
# n:
	.quad	-6738995575610371121
	.quad	7982599884918112332
	.quad	-8660043266668866099
	.quad	4503760642295695277
# x:
# n:
	.quad	3226189190168435389
	.quad	-572285827014212650
	.quad	-4738985113502201503
	.quad	-4362744431340795259
# y:
# n:
	.quad	1846736991259413367
	.quad	233618877951865312
	.quad	-6060816851713078315
	.quad	4047167327554304212
# x:
# n:
	.quad	-6291742096414366632
	.quad	-2678110490165857692
	.quad	2965563785671170906
	.quad	-1912741859560369152
# y:
# n:
	.quad	-7294879445821851826
	.quad	-201391774117521169
	.quad	1984815003330814811
	.quad	4092661996476457299
# x:
# n:
	.quad	-7785546701408538418
	.quad	2130359929055858913
	.quad	-7377478635304743733
	.quad	-3222820854655947547
# y:
# n:
	.quad	-3643052467399259003
	.quad	447989519617735175
	.quad	4757142184635667196
	.quad	-1462878569564434528
# x:
# n:
	.quad	4652730398442006753
	.quad	9009410228772755781
	.quad	1490653897858107335
	.quad	704967154406974063
# y:
# n:
	.quad	-3995411078201741447
	.quad	-7891836354745978682
	.quad	-8765638666240462389
	.quad	1915217561037672907
# x:
# n:
	.quad	976810347425368489
	.quad	2349654830709276768
	.quad	-8717892967598314129
	.quad	8635834248248377673
# y:
# n:
	.quad	7213736316674482083
	.quad	415407244606090484
	.quad	-3692610656240905632
	.quad	7739765459518712776
# x:
# n:
	.quad	-685958978624618103
	.quad	2396449729673445352
	.quad	368920092314330382
	.quad	7254594460404089466
# y:
# n:
	.quad	4594273448488520987
	.quad	5173008877449265966
	.quad	-5007083312070428051
	.quad	-6399393180995675029
# x:
# n:
	.quad	2905391959645963785
	.quad	1925792834027372968
	.quad	559656778210560130
	.quad	8006329859126709230
# y:
# n:
	.quad	589797307862090552
	.quad	-1193065220792039012
	.quad	-452358924505087905
	.quad	-1382179742090864487
# x:
# n:
	.quad	-422160703531446699
	.quad	-6610398844179808582
	.quad	-1099856020743452297
	.quad	-9144874712903557146
# y:
# n:
	.quad	5154117272399671805
	.quad	2075419527947899622
	.quad	-480381775423556085
	.quad	-8309636506402796796
# x:
# n:
	.quad	7038189327233724299
	.quad	-62717079084144612
	.quad	-1844378808691104528
	.quad	97173847636339886
# y:
# n:
	.quad	-398279080035240122
	.quad	-5068654021868455111
	.quad	8816974028889352402
	.quad	4367715913000030340
# x:
# n:
	.quad	7434089735490673190
	.quad	1216729953184399232
	.quad	8797192067288244
	.quad	5466968596141148442
# y:
# n:
	.quad	-1719468985675533189
	.quad	519912775939782981
	.quad	3563625519048589554
	.quad	-4447017995476648885
# x:
# n:
	.quad	-6225925438905121164
	.quad	9173370794174816537
	.quad	-3698904977747532836
	.quad	-2284196310857193782
# y:
# n:
	.quad	-8077811601217668727
	.quad	7562457259313315468
	.quad	2253386264790559001
	.quad	1107388451928255142
# x:
# n:
	.quad	-4276726888387915375
	.quad	5794825977206981763
	.quad	-6010355103067393307
	.quad	-2086036902909925477
# y:
# n:
	.quad	-6931030818924972973
	.quad	-1946155799119894858
	.quad	-1832876266642971723
	.quad	-2797243013232221376
# x:
# n:
	.quad	495839629667064442
	.quad	4553129241789666581
	.quad	-1762131050750769513
	.quad	6967086658744186909
# y:
# n:
	.quad	5072754911046571755
	.quad	6710640035842384892
	.quad	589685422298085496
	.quad	7083264496716489145
# x:
# n:
	.quad	-3880365771370038637
	.quad	-6431723320525419926
	.quad	6345404587429460233
	.quad	4473929652729553722
# y:
# n:
	.quad	3082934517734243502
	.quad	-1827081443776269878
	.quad	8227918329711538906
	.quad	-2816504688810273391
# x:
# n:
	.quad	4488989578136328369
	.quad	3552008344756295205
	.quad	8146146566295714165
	.quad	-6556479484596477031
# y:
# n:
	.quad	3055596704041536567
	.quad	7628804670665900395
	.quad	3060829732507371904
	.quad	-9129313415278096545
# x:
# n:
	.quad	4268952740488259457
	.quad	-8581185718892148119
	.quad	3979494448870140437
	.quad	8146254878988234638
# y:
# n:
	.quad	2812033233572836103
	.quad	-3801323092656771647
	.quad	-8011408547102804826
	.quad	-4352422395779563332
# x:
# n:
	.quad	5204274641820529070
	.quad	1537968624619938465
	.quad	9059686102799255693
	.quad	-7550880377321877708
# y:
# n:
	.quad	-6047736354973639934
	.quad	-1499291143710241608
	.quad	4690996956597235144
	.quad	-7251353956061619590
# x:
# n:
	.quad	-3579827813134954326
	.quad	-1447785140191786482
	.quad	8850632215642863347
	.quad	282259551048542137
# y:
# n:
	.quad	5367926128353702017
	.quad	-6931639469699068021
	.quad	8672281161762174640
	.quad	3347794934712307881
# x:
# n:
	.quad	3382831439577010205
	.quad	9138381809746170373
	.quad	5973237781346936906
	.quad	-6370433543511337557
# y:
# n:
	.quad	4986809567248545834
	.quad	3492970348577868238
	.quad	7771504683027002069
	.quad	3674313760885475086
# x:
# n:
	.quad	4453670547086302901
	.quad	-6482644569938535882
	.quad	8948830993113118944
	.quad	-1607687119738594252
# y:
# n:
	.quad	-7660797443695606141
	.quad	-4755420922455095401
	.quad	-7901063979588991145
	.quad	6094733276304126387
# x:
# n:
	.quad	-2100913097102696722
	.quad	3515939206895862738
	.quad	-6207787199194367583
	.quad	-8154672370645581805
# y:
# n:
	.quad	5807965495855288514
	.quad	-3978083510640271441
	.quad	-3074118615600921541
	.quad	341488270455646108
# x:
# n:
	.quad	-5791423837325604568
	.quad	3365297339618362355
	.quad	796726734257301444
	.quad	1451004631014559023
# y:
# n:
	.quad	-64880364662859446
	.quad	7104272599718200331
	.quad	5539374944957473837
	.quad	5192016962191270867
# x:
# n:
	.quad	-1685410485600652466
	.quad	3250887364918213733
	.quad	3593489711213442032
	.quad	4782736105543227660
# y:
# n:
	.quad	-5388572681986996453
	.quad	-1433681203467507139
	.quad	-8303847748676958004
	.quad	3326491938078724162
# x:
# n:
	.quad	7773484721441527448
	.quad	-5765640603042141629
	.quad	-8641970387883782133
	.quad	-5385013462920928423
# y:
# n:
	.quad	8965424250574695106
	.quad	1377420837366356356
	.quad	6349364616754902043
	.quad	294790902919747337
# x:
# n:
	.quad	2614154338214110722
	.quad	540874151860331969
	.quad	-1235756694357052715
	.quad	-1317207765611178418
# y:
# n:
	.quad	-4216967968909770822
	.quad	1247003708604755316
	.quad	-2355499347223745949
	.quad	6264187355108307299
# x:
# n:
	.quad	-5547071566967557082
	.quad	2312354224551948245
	.quad	3664687933244601954
	.quad	1002100304509969088
# y:
# n:
	.quad	-5748631594411060899
	.quad	8605477159439248551
	.quad	-1455360564577771913
	.quad	645479160939579649
# x:
# n:
	.quad	3306506407090291220
	.quad	3352907957304405794
	.quad	4886706277451079335
	.quad	9112176432684197746
# y:
# n:
	.quad	-6004228668786752474
	.quad	3365456593638033130
	.quad	-3938891085127594076
	.quad	2988299499036051070
# x:
# n:
	.quad	4234892057569876086
	.quad	3962540783402614027
	.quad	5133798791351827327
	.quad	-7397065942311177551
# y:
# n:
	.quad	3717431793555585302
	.quad	9068578525642780583
	.quad	-6150179136706859436
	.quad	7142113478801824001
# x:
# n:
	.quad	8092778173349627472
	.quad	-7930767191005795686
	.quad	9141438890537818948
	.quad	-6410891917146039179
# y:
# n:
	.quad	-2475564244884902766
	.quad	-3944751522474559479
	.quad	-4603705141061000613
	.quad	-943674011842149228
# x:
# n:
	.quad	-8868285003565638531
	.quad	4348197272075272599
	.quad	-7080758196179671032
	.quad	-1841792758933104795
# y:
# n:
	.quad	855465807635486787
	.quad	3690014707326309821
	.quad	-3368414907759262835
	.quad	-2351314518222605243
# x:
# n:
	.quad	3107035508014067099
	.quad	4122540527573624838
	.quad	6523543572054020129
	.quad	8438202069268994058
# y:
# n:
	.quad	6677577365746393535
	.quad	7859663753684775691
	.quad	4781946905132144568
	.quad	2784375460688937525
# x:
# n:
	.quad	-3685140540853254151
	.quad	5171350048903863865
	.quad	-7752147554166879967
	.quad	-1133514370921774379
# y:
# n:
	.quad	8381049471529777474
	.quad	-6972173672049987192
	.quad	-1158341776386214737
	.quad	7558294407782441218
# x:
# n:
	.quad	-1644185164992090286
	.quad	-2430003085678721290
	.quad	301682426671127102
	.quad	2603225792938528729
# y:
# n:
	.quad	-7303195451618211767
	.quad	-8874453134009908958
	.quad	1532623534785250088
	.quad	-5656803720255784539
# x:
# n:
	.quad	-6770130627655096193
	.quad	409318150324843990
	.quad	7176979760735775185
	.quad	7705246568286275278
# y:
# n:
	.quad	-4964809590918718176
	.quad	-5931523400189834283
	.quad	-56624817440132187
	.quad	4905932568223782831
# x:
# n:
	.quad	178014520666422029
	.quad	-4256626564875174415
	.quad	2344913143254061630
	.quad	-5687464431863922186
# y:
# n:
	.quad	4517735547304005045
	.quad	827672178775476384
	.quad	3102946497082804924
	.quad	-3008652233475248591
# x:
# n:
	.quad	8670958497801363495
	.quad	-8774459249466406392
	.quad	-4898077177425832986
	.quad	8416177057657902668
# y:
# n:
	.quad	7872852695328157291
	.quad	6050783829524227169
	.quad	4214930316804450571
	.quad	4881956379479194658
# x:
# n:
	.quad	-6226952080985696821
	.quad	-1473036051596352823
	.quad	2585459045264847103
	.quad	-6757073486909154595
# y:
# n:
	.quad	8226391517510439779
	.quad	4852945637197127292
	.quad	16363112371290855
	.quad	7413202738715853578
# x:
# n:
	.quad	-6189250187169236798
	.quad	-798238791095748572
	.quad	6537529233584834133
	.quad	-1581714523440941461
# y:
# n:
	.quad	7782297611014013226
	.quad	-6519502008870243413
	.quad	9075481596709109114
	.quad	-3747064857591284683
# x:
# n:
	.quad	8409123611451075767
	.quad	2508158173375681817
	.quad	-7684897830670746585
	.quad	-1563975261638405862
# y:
# n:
	.quad	5699207028361634843
	.quad	-8594412702974565152
	.quad	5577452930798627697
	.quad	5354136566348829795
# x:
# n:
	.quad	-706227959671416149
	.quad	3519372536973708426
	.quad	1905007939212133509
	.quad	-7810701211022285673
# y:
# n:
	.quad	6183224996443264156
	.quad	-7873239777781035855
	.quad	-2058957130895012901
	.quad	-7316603192307978226
# x:
# n:
	.quad	-7762339206952874766
	.quad	5058331994245201762
	.quad	4083790462671255924
	.quad	-985007221211204140
# y:
# n:
	.quad	-3096763475426328556
	.quad	1489639659402887036
	.quad	3579836311179831509
	.quad	9104112583410518915
# x:
# n:
	.quad	7698146716531918575
	.quad	8427634025604419047
	.quad	7237677381349288326
	.quad	-6623266808100218451
# y:
# n:
	.quad	4581586493097269945
	.quad	6430277256154125403
	.quad	-4056427082840473526
	.quad	-1407430919799184694
# x:
# n:
	.quad	-2724986180722279343
	.quad	-7769215442252885720
	.quad	2927454522364149258
	.quad	1321615488751214941
# y:
# n:
	.quad	4076155795437002789
	.quad	-4770526054105593924
	.quad	6429518051173129958
	.quad	-4811354169747592698
# x:
# n:
	.quad	5782311079261971826
	.quad	-5930491899405357950
	.quad	-8052613003796442695
	.quad	-5465639168758164720
# y:
# n:
	.quad	4034765207015270021
	.quad	3120561688679751427
	.quad	1302197570942152172
	.quad	-7387370528482126989
# x:
# n:
	.quad	5512277650006299256
	.quad	-1219159615699597214
	.quad	853847744886314180
	.quad	7997697362599670329
# y:
# n:
	.quad	-6284515164945909353
	.quad	-6743580980506240337
	.quad	-6187353010941065590
	.quad	8407283898254119687
# x:
# n:
	.quad	-2719739325705984786
	.quad	-8107096444577983286
	.quad	-2928295579653142561
	.quad	-2705096352574239341
# y:
# n:
	.quad	-138042683350309513
	.quad	4265914841124090246
	.quad	1658116927805432516
	.quad	-8442765311881212986
# x:
# n:
	.quad	-5578582354837766869
	.quad	-4935792655684842858
	.quad	7223363111347815324
	.quad	3007434051593574995
# y:
# n:
	.quad	-8402830551474368502
	.quad	-3537162296387083850
	.quad	2836055817704704462
	.quad	5338738181197208483
# x:
# n:
	.quad	-6135028705807965526
	.quad	239339612916049698
	.quad	4024299429780717494
	.quad	870855268590605584
# y:
# n:
	.quad	-3210331597506492688
	.quad	1925163563319645536
	.quad	2123515536664370180
	.quad	-5618044362262923562
# x:
# n:
	.quad	5839729006154662336
	.quad	8263401236085425042
	.quad	-8886790316136564705
	.quad	-7317352319800545977
# y:
# n:
	.quad	-8480305421292819115
	.quad	7095775615435416711
	.quad	9085305699849513847
	.quad	2541195386202554900
# x:
# n:
	.quad	-1971667023109860092
	.quad	2548199790100124642
	.quad	3684195408298955187
	.quad	3932402419159510213
# y:
# n:
	.quad	-5582865915646349593
	.quad	1795246703102616011
	.quad	8880075373071075161
	.quad	-6025320635475158258
# x:
# n:
	.quad	6502653353429806943
	.quad	-6190673687083810112
	.quad	7030525687373434842
	.quad	-2499464115367836978
# y:
# n:
	.quad	5236736790699685406
	.quad	-7552657310495747027
	.quad	-3293158659490383054
	.quad	2358225669544044155
# x:
# n:
	.quad	-6512700585747573502
	.quad	5579068310194179352
	.quad	8424876056168473553
	.quad	-584363878046615826
# y:
# n:
	.quad	-2605718994316337483
	.quad	-8387045478370029816
	.quad	1124155219838901924
	.quad	-6727530311749926122
# x:
# n:
	.quad	-4061367921910081020
	.quad	2591080067577755610
	.quad	5600937125460280890
	.quad	2890656241241932895
# y:
# n:
	.quad	-7177292122789463626
	.quad	-8850999773805850640
	.quad	-8362267032283589894
	.quad	1367307957358555228
# x:
# n:
	.quad	617743998962718772
	.quad	-2602798299842840698
	.quad	712532366035044232
	.quad	-8222660365433206862
# y:
# n:
	.quad	-8585470710136747055
	.quad	-5160457350868378453
	.quad	-8497816312486908536
	.quad	1917462780633197020
# x:
# n:
	.quad	-7547368054875326640
	.quad	-2813599898754588332
	.quad	8485251811245314197
	.quad	-957064384289302899
# y:
# n:
	.quad	2738171132209399939
	.quad	5861837570710365708
	.quad	-9213207008343312051
	.quad	-1453986615380616912
# x:
# n:
	.quad	-4457082621740696939
	.quad	7980232490903963823
	.quad	571344996495485891
	.quad	-9130805510749232072
# y:
# n:
	.quad	-1371185831700692118
	.quad	-7298026657577458044
	.quad	-3812026286732014226
	.quad	6420553042899688817
# x:
# n:
	.quad	-3561094486220284278
	.quad	6678182369708412357
	.quad	-7674725075128266975
	.quad	-42637888721298608
# y:
# n:
	.quad	-2028407294502051378
	.quad	8500730971462617491
	.quad	7714007193982582005
	.quad	4022960509834742104
# x:
# n:
	.quad	-3199076693514446879
	.quad	-7408383994658917047
	.quad	-1935213623881302553
	.quad	-1230444323826919782
# y:
# n:
	.quad	-5703679822550783844
	.quad	3705819293054359620
	.quad	-6092045322782208739
	.quad	7261169787411833853
# x:
# n:
	.quad	-3063550119533379704
	.quad	-5847392937506572605
	.quad	4831924020619880263
	.quad	4262119290374195439
# y:
# n:
	.quad	-1700278222177237960
	.quad	-5575390440275810464
	.quad	5400502444816888855
	.quad	-1822623408481983151
# x:
# n:
	.quad	4704668293373524688
	.quad	-6030121928952189767
	.quad	7248667421085812129
	.quad	6849675110437991487
# y:
# n:
	.quad	-254105521501436753
	.quad	4366197797890939645
	.quad	5314332680924088848
	.quad	-9108541767813118668
# x:
# n:
	.quad	1776038306278666408
	.quad	-7467041183149695321
	.quad	3924860369175095544
	.quad	3310003234017824575
# y:
# n:
	.quad	-4138150332765452468
	.quad	-6545568587862771471
	.quad	-3214168362555938777
	.quad	7280783187600245542
# x:
# n:
	.quad	6884227528236435712
	.quad	-7210534245301731401
	.quad	3499333805649178894
	.quad	1659071434095879099
# y:
# n:
	.quad	-2513788542296584748
	.quad	-5968165012667432617
	.quad	3158558218077370187
	.quad	-5257700872125335212
# x:
# n:
	.quad	7400932049522704584
	.quad	-7692189707703628050
	.quad	9023639609967966649
	.quad	-3823166589670231192
# y:
# n:
	.quad	526586718491212104
	.quad	3560000315130559298
	.quad	1689888106874939767
	.quad	-7643723599890999490
# x:
# n:
	.quad	-562569884839216142
	.quad	3741828552662694203
	.quad	8809859277965592278
	.quad	-2512666115083193886
# y:
# n:
	.quad	-6097343514814251345
	.quad	-4229853154703167947
	.quad	-4577413902162681589
	.quad	2856423034232783740
# x:
# n:
	.quad	66127985523544232
	.quad	-1308670388796474275
	.quad	5476484662740507176
	.quad	6732105639627444920
# y:
# n:
	.quad	1708966671904794062
	.quad	-5532090287972205362
	.quad	-4585147928181132625
	.quad	-4965918566201733859
# x:
# n:
	.quad	-1849454920777791251
	.quad	-975724619371845736
	.quad	-8437536627289937974
	.quad	4464791291564908301
# y:
# n:
	.quad	-5052471553866762383
	.quad	-4579113772185654089
	.quad	4079709322948174435
	.quad	-4275491568148003607
# x:
# n:
	.quad	5185925919159033451
	.quad	1397016921090582806
	.quad	-1596478675594714683
	.quad	-3128220844046750809
# y:
# n:
	.quad	-6487579747196494215
	.quad	-1214367613659759847
	.quad	7359465100282498125
	.quad	-1062544863722580677
# x:
# n:
	.quad	-3883633361504630971
	.quad	3654176546883619863
	.quad	4409425628169303724
	.quad	-339387656602045623
# y:
# n:
	.quad	-1015211431371127324
	.quad	-8964797302687054728
	.quad	6686214606464892578
	.quad	-3126222702182530504
# x:
# n:
	.quad	-8179053379480214611
	.quad	5559562643452714342
	.quad	-9018465696031277668
	.quad	195336711711913590
# y:
# n:
	.quad	-4827474230837483018
	.quad	2401238579528467626
	.quad	7649209991501292354
	.quad	5799359405663726934
# x:
# n:
	.quad	-8927305234003214330
	.quad	8573643207539804175
	.quad	-5548179796705414067
	.quad	386775717145478839
# y:
# n:
	.quad	-2229051371883212605
	.quad	8293013201610134848
	.quad	-7257724342283847123
	.quad	-580196944223998835
# x:
# n:
	.quad	4379389748946486700
	.quad	-5340240744817629832
	.quad	152939649630040033
	.quad	173853326463619986
# y:
# n:
	.quad	2773284933571368650
	.quad	-6042399362253849227
	.quad	-2389106368782419661
	.quad	4046434503857331743
# x:
# n:
	.quad	-7041741366118176264
	.quad	-3480705198263742004
	.quad	-8177125089498403863
	.quad	1029320899386707042
# y:
# n:
	.quad	-2760704148090031348
	.quad	5616322163877659802
	.quad	-58788675157616191
	.quad	-5843060865778642015
# x:
# n:
	.quad	-2706728012288133107
	.quad	-3001440109906353650
	.quad	504862837766104359
	.quad	531758586767985955
# y:
# n:
	.quad	-5266335321813906416
	.quad	-7373925474521999476
	.quad	-6094005344989559566
	.quad	-6767440266308458295
# x:
# n:
	.quad	4477615668615451119
	.quad	2283034515529701535
	.quad	481306750468748229
	.quad	3780238474505747274
# y:
# n:
	.quad	-5233277882996370527
	.quad	-4637439953933710604
	.quad	636516147096122130
	.quad	5821100097947357977
# x:
# n:
	.quad	-6790739178392637847
	.quad	-4851481126563495152
	.quad	7082707231583329256
	.quad	-8189869777078020215
# y:
# n:
	.quad	6799558477652538696
	.quad	2905763045730393572
	.quad	-3985973906534910601
	.quad	-8237224854242377701
# x:
# n:
	.quad	-5353548564506547493
	.quad	2814677253401382376
	.quad	152158145850664347
	.quad	-5061096869970335491
# y:
# n:
	.quad	-8111283525124834840
	.quad	3125202007815554334
	.quad	1011763511909257063
	.quad	3337287306644926839
# x:
# n:
	.quad	5949045897301936634
	.quad	3462257164311843249
	.quad	-4986531914907153648
	.quad	-7564405322230760148
# y:
# n:
	.quad	8077250202133601176
	.quad	-4188455928441068407
	.quad	-246152241499010986
	.quad	-4233525411408040229
# x:
# n:
	.quad	760069985570005120
	.quad	1073961326742671502
	.quad	-6056209997976847336
	.quad	2283598745684732024
# y:
# n:
	.quad	5347761370042055494
	.quad	-7220304267037730595
	.quad	-5437060554409633344
	.quad	-8109273711426102594
# x:
# n:
	.quad	9066694335678535272
	.quad	245244677371235787
	.quad	-6002102818931560137
	.quad	5368426172842585254
# y:
# n:
	.quad	-1681860565137301768
	.quad	-4072942336591781370
	.quad	-3996793650435580492
	.quad	6995761865026400855
# x:
# n:
	.quad	-2979649260241286442
	.quad	-5169848418096095818
	.quad	1531508000816617470
	.quad	2921345221809967884
# y:
# n:
	.quad	-230847060758180024
	.quad	-445568464428938381
	.quad	-4560642480423463830
	.quad	-4694634170029918693
# x:
# n:
	.quad	8976702996756831123
	.quad	-692147135699141942
	.quad	-7467367016630384784
	.quad	2497197376578525490
# y:
# n:
	.quad	-2924340530537737584
	.quad	-7747164188586131391
	.quad	-3429119029097961110
	.quad	7284337791568278685
# x:
# n:
	.quad	4713708198778844669
	.quad	-6529472672365680008
	.quad	8503589286145777136
	.quad	4931584785038584983
# y:
# n:
	.quad	8960968483506705428
	.quad	-4079945291124218481
	.quad	-5768099519506645792
	.quad	122141445836437762
# x:
# n:
	.quad	2017391210355796650
	.quad	-2902821146405827255
	.quad	-6618781930994773451
	.quad	-4669007451873631981
# y:
# n:
	.quad	-7675837023064785890
	.quad	7509681261206802618
	.quad	-8533433906192730683
	.quad	-8463625333840545139
# x:
# n:
	.quad	5194221566999294226
	.quad	5016298725991618876
	.quad	-457155288846231681
	.quad	-7159081458043721584
# y:
# n:
	.quad	-2938815270317647706
	.quad	-3738294551369153968
	.quad	1111869055961871021
	.quad	-9182911933966286637
# x:
# n:
	.quad	8863240502505874067
	.quad	6481364983370044534
	.quad	-6716117253510903665
	.quad	5565190807100397688
# y:
# n:
	.quad	8730824801544015680
	.quad	3756823771910823382
	.quad	5044830042309556609
	.quad	1056285318731065593
# x:
# n:
	.quad	-268334124211070359
	.quad	7129257721473211598
	.quad	7600576669686422410
	.quad	3165924283449862729
# y:
# n:
	.quad	-6262390268702519933
	.quad	8887134170382218789
	.quad	-5226645602034062545
	.quad	-5504937370109764823
# x:
# n:
	.quad	-193007070640066254
	.quad	-1137913425006228177
	.quad	4321930842580772164
	.quad	8403955345174176399
# y:
# n:
	.quad	6347484653956871619
	.quad	-1506652392300696709
	.quad	5315049848353611676
	.quad	-3186359267795200190
# x:
# n:
	.quad	-1346319091802647053
	.quad	7886779133387905667
	.quad	-1123874241652737714
	.quad	3725093065692557519
# y:
# n:
	.quad	-8674272896100355947
	.quad	1545197902116189846
	.quad	-6559067013714971430
	.quad	-5759712330659151268
# x:
# n:
	.quad	7586181081931031668
	.quad	1328875733787322448
	.quad	6819929711525116026
	.quad	-6603881549809516236
# y:
# n:
	.quad	6429953654451139635
	.quad	-6470183703330550836
	.quad	-646077737602920281
	.quad	-4962005315465372093
# x:
# n:
	.quad	6813191135145345719
	.quad	5756637920076333037
	.quad	3985961806695509043
	.quad	-314374558549753309
# y:
# n:
	.quad	-5089934132886772282
	.quad	5260779281822944801
	.quad	-3043868244989498611
	.quad	-2965350139098878832
# x:
# n:
	.quad	8767533694293536699
	.quad	-6312484245887453530
	.quad	1805636235718895528
	.quad	-8476916479509993321
# y:
# n:
	.quad	-4817904624135536964
	.quad	-7042301961967718255
	.quad	-3307938996374709262
	.quad	7176567311050579449
# x:
# n:
	.quad	8624230523019863031
	.quad	-5158452264648497334
	.quad	-3620987254405705336
	.quad	4889490517413791482
# y:
# n:
	.quad	7528228154801445024
	.quad	-6679294832504218739
	.quad	-1859651662428889450
	.quad	-3244032193104358473
# x:
# n:
	.quad	5345045832146642594
	.quad	181062815405042354
	.quad	-5008173731330781530
	.quad	6568410728821485737
# y:
# n:
	.quad	-8461898675756987581
	.quad	6709145757827002149
	.quad	-6111639260230884747
	.quad	4404298730076793886
# x:
# n:
	.quad	-7339800575792737679
	.quad	8122558554964664164
	.quad	-2140984933282414200
	.quad	5129087062561089972
# y:
# n:
	.quad	-3670312513362067791
	.quad	3654535164506768486
	.quad	-3935416035461075584
	.quad	-8033815920847298206
# x:
# n:
	.quad	-8959390657260440527
	.quad	1789698676223189422
	.quad	-571290282293862438
	.quad	-1598547746642639567
# y:
# n:
	.quad	3146223582537601770
	.quad	1545865094696799332
	.quad	-7955453234342376015
	.quad	-2163609452717057942
# x:
# n:
	.quad	3106764973619588173
	.quad	8550622200925714392
	.quad	7016857814654558343
	.quad	-1985646797963769584
# y:
# n:
	.quad	-6928278635865101029
	.quad	-3250108155197550354
	.quad	-5832894018784505615
	.quad	5812928047743184805
# x:
# n:
	.quad	-1958808139106242933
	.quad	2184746532930304926
	.quad	597881103762205551
	.quad	-2486901716163150695
# y:
# n:
	.quad	6079851292578037342
	.quad	7986562380350239669
	.quad	-653481058461161268
	.quad	-6978481656954218451
# x:
# n:
	.quad	-8872648668327109235
	.quad	-783222147061733558
	.quad	-9177093049361452499
	.quad	7946133930792399389
# y:
# n:
	.quad	6344525140025473544
	.quad	3421350375426052254
	.quad	1025727375631029761
	.quad	1660182495293263195
# x:
# n:
	.quad	-3322056304817642687
	.quad	-7104664003417672624
	.quad	-2238479139412737368
	.quad	-3401115437675744063
# y:
# n:
	.quad	5987011328453299038
	.quad	-5648941761026956724
	.quad	6699928120475545472
	.quad	-5347738779567147205
# x:
# n:
	.quad	-3468359925647301312
	.quad	-124078726501153120
	.quad	3757736198454385627
	.quad	-8649205902784488718
# y:
# n:
	.quad	-1619451748307182833
	.quad	57532200851550963
	.quad	-5527883431234441005
	.quad	3943320304857740909
# x:
# n:
	.quad	-1653478712574304443
	.quad	-6661734594936298535
	.quad	4603659443404900442
	.quad	-95494486407931270
# y:
# n:
	.quad	-3262338006323742855
	.quad	1751129211294086394
	.quad	-4493584429444757959
	.quad	-1032836262826889388
# x:
# n:
	.quad	8255646842188499813
	.quad	-2288388798180604146
	.quad	-4735537160618162415
	.quad	-2645111501842853388
# y:
# n:
	.quad	7124768848956004050
	.quad	5395864711590426428
	.quad	-4715727857417767190
	.quad	5887773229097606200
# x:
# n:
	.quad	-8103405685126727861
	.quad	1005300838579308186
	.quad	8223523278032130895
	.quad	-673642954770466052
# y:
# n:
	.quad	-6203606699741483849
	.quad	4863806309799074718
	.quad	-7313901371653563392
	.quad	-3092854105132142644
# x:
# n:
	.quad	-9088387551701464393
	.quad	5980385736956880788
	.quad	-2246997557523711775
	.quad	-7483760175348559315
# y:
# n:
	.quad	4049645015540836806
	.quad	1590064460077848638
	.quad	-5817250014908803537
	.quad	3316916375484251715
# x:
# n:
	.quad	5140739780239240593
	.quad	-4323311744955956138
	.quad	-6536465722616902467
	.quad	3229781016040468237
# y:
# n:
	.quad	1317429182985406945
	.quad	4903814076517117011
	.quad	2120171494725056613
	.quad	-4507127084502788143
# x:
# n:
	.quad	1131689341158558897
	.quad	-7689378556260738380
	.quad	-8490598795956955420
	.quad	8013298013031696675
# y:
# n:
	.quad	3569480495456211473
	.quad	-2596586195550080136
	.quad	-2047738802852677162
	.quad	3030915469373746713
# x:
# n:
	.quad	-6305997054435807798
	.quad	-1232975713188936624
	.quad	8576869985022219065
	.quad	3571398888035769700
# y:
# n:
	.quad	4175445818841839661
	.quad	8023497795546457593
	.quad	-408207628609599328
	.quad	6062928225283391345
# x:
# n:
	.quad	6461238933523852146
	.quad	-7163669983447097135
	.quad	-7092878711842393575
	.quad	4185264935657631358
# y:
# n:
	.quad	4684323295107293682
	.quad	9013858565494222570
	.quad	-595365648033032306
	.quad	2958051543980561332
# x:
# n:
	.quad	-4475074835664923857
	.quad	8957652951303270710
	.quad	-9021812314667317233
	.quad	6003626100732041492
# y:
# n:
	.quad	1414837363648797139
	.quad	-5123222914925926735
	.quad	6535532400820444974
	.quad	4380532781559333114
# x:
# n:
	.quad	-2635818484532850780
	.quad	-3309870058153758723
	.quad	1429342370485511653
	.quad	-7776288294993805611
# y:
# n:
	.quad	8277097851181286770
	.quad	5331617403022698108
	.quad	-883948532313991353
	.quad	-3601882293897784391
# x:
# n:
	.quad	5130487422869979038
	.quad	2526133726582593342
	.quad	8448460194664387984
	.quad	-3737406130964556448
# y:
# n:
	.quad	-7650470732069148002
	.quad	4242776205892995391
	.quad	1526709826661584600
	.quad	-3710960587428207964
# x:
# n:
	.quad	-2197046569145638229
	.quad	-1330748602765086177
	.quad	6919633621295805422
	.quad	4054974510394020400
# y:
# n:
	.quad	4782118477801136754
	.quad	-2849928225331063519
	.quad	9221119875168594736
	.quad	-7302435127857297870
# x:
# n:
	.quad	-5647449473231708777
	.quad	-7972227954118646698
	.quad	606079693871115857
	.quad	2304113218221158313
# y:
# n:
	.quad	5282357563933523131
	.quad	-499175497535602337
	.quad	-4748714342166745935
	.quad	-7906733930961496829
# x:
# n:
	.quad	6961398153737448933
	.quad	-2107482280686935165
	.quad	-1975653456829296055
	.quad	308762389390516852
# y:
# n:
	.quad	-1594069265968796489
	.quad	3297544715804538261
	.quad	2111053170849250439
	.quad	7787887456351317236
# x:
# n:
	.quad	4440603665781124791
	.quad	-5267742477540082528
	.quad	-3177522447730180063
	.quad	-4128393010818138356
# y:
# n:
	.quad	-737369955072889177
	.quad	7105204355101282309
	.quad	-6546082910643121408
	.quad	-4217065686875524506
# x:
# n:
	.quad	6602340667144878419
	.quad	-4840610662085457605
	.quad	-840756902601404294
	.quad	-805767549330428331
# y:
# n:
	.quad	-6956213526658851226
	.quad	-8080801597122858354
	.quad	4738495564384535988
	.quad	9026877844140374220
# x:
# n:
	.quad	4571537589679916260
	.quad	-2714976427997026131
	.quad	7870530825691508309
	.quad	-4795647101530113803
# y:
# n:
	.quad	9173124170289951687
	.quad	-2654234242501353340
	.quad	-5257810587857863056
	.quad	411507991193975853
# x:
# n:
	.quad	178311802547603195
	.quad	2639049468041792671
	.quad	-4176196917034188935
	.quad	-7175414510238289665
# y:
# n:
	.quad	1195586246318819639
	.quad	-8796911347842442066
	.quad	-7899725396667891251
	.quad	-2487145980385617372
# x:
# n:
	.quad	-2537007879602983239
	.quad	2418234170714221829
	.quad	4638318484242396258
	.quad	1888546750629604768
# y:
# n:
	.quad	7524009773863381668
	.quad	-2124591375269269298
	.quad	-7619837929332730605
	.quad	-8195422537918138240
# x:
# n:
	.quad	5227712292450398607
	.quad	-5490340603245348367
	.quad	-6775119843518038601
	.quad	-3346018564523562334
# y:
# n:
	.quad	-4906132182772218056
	.quad	548605356355259266
	.quad	-39982713930349469
	.quad	-6763880540811614220
# x:
# n:
	.quad	3796327331006000017
	.quad	3956654364727765632
	.quad	-9074837322337445462
	.quad	-5206586602417664550
# y:
# n:
	.quad	7361839135561676266
	.quad	-2525312340956882267
	.quad	8698183687958734423
	.quad	-8610535459489863996
# x:
# n:
	.quad	7743273468782000359
	.quad	1962201258473661837
	.quad	-1577777795994599110
	.quad	7667040322272983107
# y:
# n:
	.quad	8734940573643331268
	.quad	-8839155921011160932
	.quad	-6567208590365343279
	.quad	-5785530679759741652
# x:
# n:
	.quad	-1684919574247412418
	.quad	-3198341271271521540
	.quad	-6051768001568084326
	.quad	3107058454013018001
# y:
# n:
	.quad	-1710334822294485358
	.quad	-4980493522653167017
	.quad	-5160926527224882943
	.quad	-3159969257631908370
# x:
# n:
	.quad	-6870047969976216788
	.quad	1445326472271964367
	.quad	-1596834175665409955
	.quad	-615764504705808460
# y:
# n:
	.quad	8588037101030487108
	.quad	2220066248044499664
	.quad	-3941624729512083875
	.quad	-702535106233323285
# x:
# n:
	.quad	-2134154208735594024
	.quad	-2575707956570204450
	.quad	5291928671545665143
	.quad	375181786099040443
# y:
# n:
	.quad	2938192620578086074
	.quad	-2733521060038963078
	.quad	-1569650921171991431
	.quad	-1919941296901279575
# x:
# n:
	.quad	2185367828623369883
	.quad	3701000492109396780
	.quad	-4665089424062568492
	.quad	-1088916749626678867
# y:
# n:
	.quad	-6787684707769578259
	.quad	8062964205034632455
	.quad	7863725811950289055
	.quad	5055755233826132920
# x:
# n:
	.quad	-3364041525419400766
	.quad	-5632058541383373580
	.quad	648483450101864394
	.quad	-6737078294401433112
# y:
# n:
	.quad	1610652263787922664
	.quad	5044662696116782364
	.quad	8753276256448783356
	.quad	-2001027199658271793
# x:
# n:
	.quad	-5269521864695391447
	.quad	3555211731749885634
	.quad	-1990108450317534901
	.quad	-3499637741043648008
# y:
# n:
	.quad	-5134427438838091987
	.quad	7689410763986288532
	.quad	3904024899139310544
	.quad	2148094931834330127
# x:
# n:
	.quad	317014458819227603
	.quad	-4822985900899802707
	.quad	-824654887772635276
	.quad	4953070408075856659
# y:
# n:
	.quad	-3820237543346588608
	.quad	3808599209815147453
	.quad	-207151924666300542
	.quad	-8614346518653796080
# x:
# n:
	.quad	-219058298029908749
	.quad	-1171377961153564470
	.quad	-3250070678166162057
	.quad	3302803990219849540
# y:
# n:
	.quad	9144940067399677782
	.quad	-3564280754667750957
	.quad	-2949306827994183610
	.quad	7575758717267756267
# x:
# n:
	.quad	1469283687898795869
	.quad	208415385792878911
	.quad	-513270359532870385
	.quad	-7482362017690664993
# y:
# n:
	.quad	-2170849865869596089
	.quad	-6339513282914563681
	.quad	-994523774538532277
	.quad	477450616314623576
# x:
# n:
	.quad	-5315412195381883121
	.quad	6842944691207872870
	.quad	-3269947326802763936
	.quad	-4140078649707578362
# y:
# n:
	.quad	7435271236768458666
	.quad	-9021272599937404192
	.quad	7498123382386694755
	.quad	-6472238402960925326
# x:
# n:
	.quad	-9122580025210873462
	.quad	-818433855194064838
	.quad	-3254797898868002891
	.quad	1214369595046004926
# y:
# n:
	.quad	-6418449132529926457
	.quad	6685288294138213514
	.quad	-4592730263347240106
	.quad	-6090680439378389525
# x:
# n:
	.quad	-3496278817468084575
	.quad	-7754593556899490408
	.quad	5454639054740223063
	.quad	2609325813486701686
# y:
# n:
	.quad	4214617441337686785
	.quad	-2151753725306529589
	.quad	-907488061909117524
	.quad	-4120656109138609187
# x:
# n:
	.quad	-5523949226294223731
	.quad	-100848093116902283
	.quad	1423478097824706379
	.quad	5016998453792849010
# y:
# n:
	.quad	-2372381826555927771
	.quad	1694917514901006179
	.quad	4769714360592448016
	.quad	-7188037581600988761
# x:
# n:
	.quad	-1919979888164031229
	.quad	4145915054450314446
	.quad	-5332331864455345452
	.quad	4891985377842621579
# y:
# n:
	.quad	5334022718255875314
	.quad	660176380083728731
	.quad	7919201684951261588
	.quad	7129161117553811101
# x:
# n:
	.quad	2278879829518055320
	.quad	-2223198383958823797
	.quad	3373031249473452578
	.quad	-8255465439657991722
# y:
# n:
	.quad	3374854455247433029
	.quad	8377590616363279226
	.quad	4037910384183067826
	.quad	700274832377414379
# x:
# n:
	.quad	9040328810308154975
	.quad	9126913476023758854
	.quad	-3758160658961605178
	.quad	-310985210418250193
# y:
# n:
	.quad	-4466860682130240137
	.quad	3609002790290913325
	.quad	7355777478251500820
	.quad	1750282806727821964
# x:
# n:
	.quad	8798914300839170957
	.quad	7785344380887225922
	.quad	-8324047669057064456
	.quad	-4214360086874885937
# y:
# n:
	.quad	8357355084497749693
	.quad	-7607174479655319831
	.quad	-5802523566602515689
	.quad	2129902897261678285
# x:
# n:
	.quad	2577692562065707668
	.quad	7019335075640003743
	.quad	-8792899085127405673
	.quad	4667785437872055885
# y:
# n:
	.quad	1491933174392196718
	.quad	5149892851880842901
	.quad	-507050249234741774
	.quad	-5613052205603972503
# x:
# n:
	.quad	2008413483323107121
	.quad	-4735375909907005784
	.quad	4173600039373729331
	.quad	-2489079224560904729
# y:
# n:
	.quad	7357242674898095223
	.quad	831718474248550344
	.quad	5803090539884447904
	.quad	-3846970944975758668
# x:
# n:
	.quad	6760809985987224616
	.quad	-4858752781241580514
	.quad	-7999613740848148343
	.quad	-6782683042759717648
# y:
# n:
	.quad	-1048284606406893542
	.quad	8470824577266241745
	.quad	-3398012262489573631
	.quad	5307096062965981996
# x:
# n:
	.quad	5077566065664440615
	.quad	1989163249207268353
	.quad	-2225728722044690621
	.quad	-181505043908738338
# y:
# n:
	.quad	-2540138884087948261
	.quad	-4747940678720109803
	.quad	5061997712837500125
	.quad	8627928904939155580
# x:
# n:
	.quad	-1955942398835113355
	.quad	-5684396615740413271
	.quad	-279558113971179621
	.quad	546668607531833185
# y:
# n:
	.quad	-5781686226588005183
	.quad	-642205182132875439
	.quad	-3223117803439273287
	.quad	8830349303951071350
# x:
# n:
	.quad	-5915874481293802420
	.quad	19054245408843031
	.quad	2601248178932444589
	.quad	-4859762748831535399
# y:
# n:
	.quad	-4608664633026871829
	.quad	4182750017826356119
	.quad	-4695203979262573467
	.quad	1365466480776955811
# x:
# n:
	.quad	2568108891966849088
	.quad	-5917418996022191307
	.quad	8357841960880149507
	.quad	1059653959105900656
# y:
# n:
	.quad	-3981621748032573580
	.quad	-90618146034423004
	.quad	8868263798452883777
	.quad	2845578513633284397
# x:
# n:
	.quad	7158009395776609604
	.quad	8988088066593852662
	.quad	-4876128282737210179
	.quad	4115076523717371092
# y:
# n:
	.quad	-2391030752329230352
	.quad	4745404597413869691
	.quad	4656909176551320041
	.quad	-7704158172068737034
# x:
# n:
	.quad	7667099881095376545
	.quad	-6887492943463009487
	.quad	1018083188001801244
	.quad	5434262062214094186
# y:
# n:
	.quad	759848551705843022
	.quad	1188021218708334570
	.quad	-4675011753640622589
	.quad	-881827967515611352
# x:
# n:
	.quad	3609341148671113390
	.quad	124910702442793041
	.quad	-8624014218424138652
	.quad	-6529951965994329570
# y:
# n:
	.quad	3938776260948444457
	.quad	6555358046124065700
	.quad	2701690884969420658
	.quad	-7469625521717990121
# x:
# n:
	.quad	2071141507526521095
	.quad	-3398225471476717403
	.quad	-721164666993840157
	.quad	2546408730691203317
# y:
# n:
	.quad	-3334228916733111061
	.quad	-933317033780135890
	.quad	712033353835679958
	.quad	6462022600763740431
# x:
# n:
	.quad	7240427499453346262
	.quad	6464892946869652769
	.quad	7381502631545368975
	.quad	-576748391944187842
# y:
# n:
	.quad	5979371223975802162
	.quad	-3802916092167637947
	.quad	-5292329242223196292
	.quad	3509950071440669171
# x:
# n:
	.quad	5083489604869219561
	.quad	-1008447992229126423
	.quad	6958426253223763039
	.quad	8346815874779759923
# y:
# n:
	.quad	2249297013367632197
	.quad	3814415868539938687
	.quad	5223378582777894104
	.quad	6259778042882733154
# x:
# n:
	.quad	-4387582812814777328
	.quad	8833856027465475299
	.quad	-3924548527545600737
	.quad	-6784827899767194844
# y:
# n:
	.quad	4395056743532899039
	.quad	2893377149112688897
	.quad	8601615777781018294
	.quad	7024052819034079925
# x:
# n:
	.quad	5248681706245006016
	.quad	1256447360848973879
	.quad	6888272283349984725
	.quad	2914495240094533295
# y:
# n:
	.quad	-2058022570764178422
	.quad	-8020548219542032067
	.quad	4304344090956427014
	.quad	7490556589710183177
# x:
# n:
	.quad	-7445305990497596998
	.quad	4698338713680491757
	.quad	-6208112268008145208
	.quad	4059768869046856775
# y:
# n:
	.quad	5480891874681231307
	.quad	6749720406246230345
	.quad	-6200820453793494583
	.quad	-1621332637565316203
# x:
# n:
	.quad	7866076110662058528
	.quad	-3812021291069142311
	.quad	5137585742946394693
	.quad	-1828816821781935669
# y:
# n:
	.quad	-2207980447132323673
	.quad	-6414106777073376764
	.quad	-8506294280726802578
	.quad	3614920707361499739
# x:
# n:
	.quad	-1011402528343655893
	.quad	-4653434427566237065
	.quad	2636138592601654518
	.quad	-4030322130929487162
# y:
# n:
	.quad	4666305194266580669
	.quad	5996313191502720191
	.quad	3785324300085920283
	.quad	-5240082585289227041
# x:
# n:
	.quad	886911299035824359
	.quad	1860021408598526016
	.quad	5422162581532028143
	.quad	-2662410911620829937
# y:
# n:
	.quad	8827240556965122905
	.quad	-6613191037148166342
	.quad	-1714169396533239625
	.quad	3360628367746293100
# x:
# n:
	.quad	-984004997358089230
	.quad	8441723435027372694
	.quad	7341616049559243806
	.quad	-6605775490718321409
# y:
# n:
	.quad	-5657252732232624636
	.quad	-6285266253660309327
	.quad	3918890534049521297
	.quad	-7169532471468578896
# x:
# n:
	.quad	9189281202457373407
	.quad	-2328683607386174405
	.quad	553160833773747426
	.quad	-6378014505286646190
# y:
# n:
	.quad	-4896481371978281097
	.quad	-6590141250967346
	.quad	8037251460763374089
	.quad	4422238425725894121
# x:
# n:
	.quad	-1075154571671896272
	.quad	6557821249914855757
	.quad	-4064822836112730156
	.quad	3141777487539123570
# y:
# n:
	.quad	2353434027037282918
	.quad	-7189888184522697074
	.quad	-3750086886210320551
	.quad	5443100472378424131
# x:
# n:
	.quad	5996877434447133266
	.quad	-7957705675176514929
	.quad	7859328800403942162
	.quad	-6915372992539075322
# y:
# n:
	.quad	6135672335188134003
	.quad	3619800752733091408
	.quad	7017825747816830004
	.quad	2646083173210966343
# x:
# n:
	.quad	916900728559371248
	.quad	2916541320137197345
	.quad	8083735185601355895
	.quad	573070859791214603
# y:
# n:
	.quad	-1973761270751289125
	.quad	-891204378826873792
	.quad	3982932897042077455
	.quad	-401940381317843375
# x:
# n:
	.quad	2960949406700079568
	.quad	5595182285374160939
	.quad	7622157174665943350
	.quad	8140738993886372366
# y:
# n:
	.quad	-4255070840553385627
	.quad	-2472326089198955410
	.quad	7704809693148718497
	.quad	6623942892706677091
# x:
# n:
	.quad	19900546132531308
	.quad	5209327479399834569
	.quad	1853642473156435241
	.quad	-12584903598509399
# y:
# n:
	.quad	1120957704270859231
	.quad	-3840474186862287813
	.quad	1103835275589517367
	.quad	-5747669600016379858
# x:
# n:
	.quad	6970738058233761658
	.quad	-7139937738351999475
	.quad	8928937969236886629
	.quad	-1185654735605363443
# y:
# n:
	.quad	-4424761853269221125
	.quad	-8841544699167537010
	.quad	852626378094998510
	.quad	8728370360656755182
# x:
# n:
	.quad	4887426167373468597
	.quad	-7093375482507450693
	.quad	4503193909564906103
	.quad	-3329488563267673957
# y:
# n:
	.quad	4739924704585834313
	.quad	3604036783141623768
	.quad	1885376031957918661
	.quad	-6287076444866010418
# x:
# n:
	.quad	-8046608144274772132
	.quad	5449450234365399398
	.quad	-7349834877142901083
	.quad	-1356536119230711240
# y:
# n:
	.quad	6035169369160221957
	.quad	4405320453893093715
	.quad	6528997741654378176
	.quad	-571330595641479196
# x:
# n:
	.quad	-4188102815218704655
	.quad	4885257389907139999
	.quad	-9115391142743404323
	.quad	-2947802557148896743
# y:
# n:
	.quad	3747581447368146140
	.quad	-6499866252131613718
	.quad	479044745429315226
	.quad	4037827375188832803
# x:
# n:
	.quad	-7944811859671565128
	.quad	-3571318806643292504
	.quad	-7427348596298178413
	.quad	4745591803142652921
# y:
# n:
	.quad	-883470937381872487
	.quad	-8509658996256507021
	.quad	8951505710906586854
	.quad	6841912527108461023
# x:
# n:
	.quad	603194495315950444
	.quad	-876784022549047262
	.quad	175391002228274275
	.quad	-456265985917256772
# y:
# n:
	.quad	-4955927664388181266
	.quad	-2662547742014683759
	.quad	311712976184059274
	.quad	4658306534542389353
# x:
# n:
	.quad	6903244064409684264
	.quad	2227969440035599096
	.quad	8919079375175970516
	.quad	-1900923255031073981
# y:
# n:
	.quad	-2064942253934613428
	.quad	3396422489443068891
	.quad	-4357218404003185617
	.quad	184558126187685270
# x:
# n:
	.quad	-1218156966360530842
	.quad	-5044055969214541026
	.quad	416978468529246006
	.quad	-1729508303400249274
# y:
# n:
	.quad	6847072369170460840
	.quad	-2443672868484407269
	.quad	-658534920821495538
	.quad	-7305898198847847653
# x:
# n:
	.quad	2862098797322214250
	.quad	-7800055062263654547
	.quad	-8376544761673101437
	.quad	-7884922899981720960
# y:
# n:
	.quad	5245286582190713357
	.quad	-3575062841927063937
	.quad	3243076836494483139
	.quad	565324255391843573
# x:
# n:
	.quad	6189051552191909475
	.quad	-8817176923425605031
	.quad	4025294690889424692
	.quad	1217331775038012037
# y:
# n:
	.quad	-2099068974590845802
	.quad	-5465270165589177698
	.quad	-802577018152913488
	.quad	2813202586424335597
# x:
# n:
	.quad	-7408049540830414360
	.quad	-1267822103434762726
	.quad	-1423583516235835553
	.quad	8519377736879494998
# y:
# n:
	.quad	6824460261948641472
	.quad	-4173887056713865147
	.quad	7860498441360415541
	.quad	5628724077090084471
# x:
# n:
	.quad	-6124136742121671308
	.quad	-1556750453616073980
	.quad	1548406099766062803
	.quad	8574716179211160396
# y:
# n:
	.quad	-5641064974417860128
	.quad	-9191327037817141535
	.quad	7103032694071318903
	.quad	8075944787112318671
# x:
# n:
	.quad	-2068293181991142491
	.quad	8395746506951824904
	.quad	8805163373061830207
	.quad	1137893580338807767
# y:
# n:
	.quad	179755376945061598
	.quad	-3590834947946431191
	.quad	8715308603218796964
	.quad	-8757067807605053870
# x:
# n:
	.quad	5894656789908498227
	.quad	4904660962163828794
	.quad	-7807748587462984913
	.quad	-6386108835873145204
# y:
# n:
	.quad	8576342716384042937
	.quad	-1209940025376326699
	.quad	-6125094637557886327
	.quad	-5758676169229109164
# x:
# n:
	.quad	-1933085852131011395
	.quad	4446031893025783826
	.quad	-4309995076136833762
	.quad	1693518005480480956
# y:
# n:
	.quad	-4450923529900230388
	.quad	6951145988344741018
	.quad	-7287196016339214642
	.quad	-5061062413658562532
# x:
# n:
	.quad	7904947778466882465
	.quad	-7608471129578346188
	.quad	-3835457246741565942
	.quad	-8545112622020708264
# y:
# n:
	.quad	-559168691888390595
	.quad	-7008234690322624832
	.quad	1920549958021533545
	.quad	6637427796122756147
# x:
# n:
	.quad	3239324187098405032
	.quad	8080839911699874073
	.quad	-2193572592363167794
	.quad	-6349357145949318423
# y:
# n:
	.quad	3907741076856987071
	.quad	-6256576806679723485
	.quad	-5501337227583386594
	.quad	-2063858110002445935
# x:
# n:
	.quad	4310530697544083129
	.quad	-1930660821376405899
	.quad	-1375673639502046517
	.quad	8819528859778071177
# y:
# n:
	.quad	1417092788071058589
	.quad	-5807410403908523785
	.quad	5832310418745815060
	.quad	-1469750496463695889
# x:
# n:
	.quad	-5709864219864429583
	.quad	-8198086931240049224
	.quad	-6623126520848826319
	.quad	313562372209572101
# y:
# n:
	.quad	3803498948228686503
	.quad	8535043861372478505
	.quad	-8046891311484153043
	.quad	5586430937375388427
# x:
# n:
	.quad	5001945278412862638
	.quad	-1793637438575775674
	.quad	8694449275634952360
	.quad	-2122426965979349659
# y:
# n:
	.quad	885843347926014707
	.quad	9182200027307049771
	.quad	-3157576893497282037
	.quad	-7167739709801110122
# x:
# n:
	.quad	-8916133679847316733
	.quad	4924906280919468203
	.quad	-1895250069645316877
	.quad	4337305173994107703
# y:
# n:
	.quad	7609159264902255246
	.quad	-8103962608529523556
	.quad	-1114201182108258497
	.quad	-4497813506516286987
# x:
# n:
	.quad	-1449488321788677937
	.quad	-2833644153511034317
	.quad	7324391404648642750
	.quad	8608428378557564670
# y:
# n:
	.quad	-5189917415906614663
	.quad	-4879014709780687872
	.quad	5014367278985727855
	.quad	-7614972599982002753
# x:
# n:
	.quad	4461119631889305379
	.quad	8727021945087426582
	.quad	418414577425210291
	.quad	-823687778872533882
# y:
# n:
	.quad	-1092653428193020873
	.quad	8259182058032529515
	.quad	-6114685408330286350
	.quad	-7033795927111441078
# x:
# n:
	.quad	-5939597579956785138
	.quad	-6469609676651116325
	.quad	6559109905277052879
	.quad	-2814594628913325995
# y:
# n:
	.quad	-2895372457835339666
	.quad	3236405261608919197
	.quad	-2629251003827644076
	.quad	5091632892313425899
# x:
# n:
	.quad	-3321103892905882800
	.quad	8445702797944602496
	.quad	7141947703924344643
	.quad	-5682555887355291962
# y:
# n:
	.quad	5888014010141434101
	.quad	-5362071361703716860
	.quad	-6264826527389839322
	.quad	5224018824541018431
# x:
# n:
	.quad	-5564909782010583726
	.quad	-9164366142430016476
	.quad	271734531524066631
	.quad	-5548620119032170042
# y:
# n:
	.quad	-4599716935136383088
	.quad	-3771684472506164023
	.quad	-1490571192873670657
	.quad	-4058527824099801576
# x:
# n:
	.quad	3117471704791672924
	.quad	-2200078305607061818
	.quad	1358855660704272379
	.quad	-8065257870688796490
# y:
# n:
	.quad	2514225345642833573
	.quad	3256791535582458716
	.quad	-4299505208603230582
	.quad	-5945842574584394448
# x:
# n:
	.quad	-8430327801985951024
	.quad	751891796703725154
	.quad	-4159645023546861922
	.quad	2114229937652444853
# y:
# n:
	.quad	2939105767137000326
	.quad	-5469730357484798360
	.quad	7519352859772015007
	.quad	-4060483871241857462
# x:
# n:
	.quad	8539402670875537877
	.quad	8123803286070361538
	.quad	1926106573195497241
	.quad	2445717027851480384
# y:
# n:
	.quad	-78749003549552906
	.quad	1810248485749428068
	.quad	-2629980210784878354
	.quad	-3240560846264896121
# x:
# n:
	.quad	-8013011721262050175
	.quad	2753130714342866145
	.quad	1648568425829886935
	.quad	859048771078304528
# y:
# n:
	.quad	-2445921753409915623
	.quad	-4175123380530593002
	.quad	-2232356259734201245
	.quad	-599857443877570685
# x:
# n:
	.quad	5654798971390833913
	.quad	8543784776991973098
	.quad	4448662656310337172
	.quad	544769670009294163
# y:
# n:
	.quad	3427244466378613122
	.quad	3910616163947008964
	.quad	5260856127169747481
	.quad	6239381299863092492
# x:
# n:
	.quad	-5608788195842888160
	.quad	-6593301372770383179
	.quad	-2216062556360435369
	.quad	5345087322056525130
# y:
# n:
	.quad	5932597686227851235
	.quad	-6108834727771832165
	.quad	7413800338996954294
	.quad	-3953387217389684124
# x:
# n:
	.quad	766157476931325425
	.quad	8122454078734975129
	.quad	2808772219251749782
	.quad	8515945504820374156
# y:
# n:
	.quad	-4445311377637244510
	.quad	9088620287895250426
	.quad	7850849369752325947
	.quad	-1298580611339105935
# x:
# n:
	.quad	-5406286943407720414
	.quad	-3717678200974413897
	.quad	-8403046615966756776
	.quad	70445854032163014
# y:
# n:
	.quad	-5428069627293328811
	.quad	1170241549636028924
	.quad	-7302709334918109114
	.quad	-8350703548517425083
# x:
# n:
	.quad	2075330041747893968
	.quad	-1805668187625815501
	.quad	-4260617190438338183
	.quad	7665604167179172138
# y:
# n:
	.quad	-7292831161186897062
	.quad	-2089333858538314425
	.quad	-7894177857120781025
	.quad	4714153898374021331
# x:
# n:
	.quad	-1313556036208503666
	.quad	8325243471041330533
	.quad	4738707796877344465
	.quad	-8466559022778172711
# y:
# n:
	.quad	-8334139727168380376
	.quad	8202196706871321612
	.quad	1249207963352013492
	.quad	-9025464607006044162
# x:
# n:
	.quad	1318480236907110672
	.quad	5129670656942608968
	.quad	5080951511538474335
	.quad	1679190407806136015
# y:
# n:
	.quad	-4722440255976018116
	.quad	-2651889061483216007
	.quad	6415444292961410724
	.quad	-4736981485685742419
# x:
# n:
	.quad	-5238774656674223796
	.quad	-760270837095646004
	.quad	-3966825734529753068
	.quad	-2228270426299593847
# y:
# n:
	.quad	4538518525489166796
	.quad	-1850245164113482532
	.quad	-6567102132404726712
	.quad	-4615563635205160482
# x:
# n:
	.quad	6703542811415665007
	.quad	-222726942391602460
	.quad	2314123247280474762
	.quad	44904326130732683
# y:
# n:
	.quad	-7210709981856082445
	.quad	1367385424505038764
	.quad	-7497326620829817296
	.quad	677207890718881344
# x:
# n:
	.quad	-5525288445189432657
	.quad	5093990253959950563
	.quad	8488177221698955900
	.quad	-3874220966076809889
# y:
# n:
	.quad	7857808678004651218
	.quad	8221212441913093380
	.quad	1337564918357519119
	.quad	-6451777375284958789
# x:
# n:
	.quad	-4217836974941139295
	.quad	-6372985667432728003
	.quad	6116008051474684699
	.quad	6472472053215700562
# y:
# n:
	.quad	3629956591841927347
	.quad	5703179103816576161
	.quad	-7679221180465308777
	.quad	-9162507458207660114
# x:
# n:
	.quad	-8246448792644001568
	.quad	4672658376259223199
	.quad	4279464247938995363
	.quad	349515118286857900
# y:
# n:
	.quad	-2061768708247790413
	.quad	3525477618703255176
	.quad	-591599929165063901
	.quad	151115688275638803
# x:
# n:
	.quad	-4683268553274658005
	.quad	6257998490750579955
	.quad	467799381375131196
	.quad	4686344802725040639
# y:
# n:
	.quad	-6402869893718949772
	.quad	-3146169998251968667
	.quad	-4081868298983604835
	.quad	-5172666440806171207
# x:
# n:
	.quad	2626285650355980990
	.quad	-5926803919516326261
	.quad	2431251810952320846
	.quad	-8487122766627004798
# y:
# n:
	.quad	-7900614192735712259
	.quad	3084954034967403047
	.quad	-2886002578403593350
	.quad	480142983225399071
# x:
# n:
	.quad	1741172810033309873
	.quad	4032911189027379971
	.quad	3335525606003310131
	.quad	8901707946048061172
# y:
# n:
	.quad	6419419881300296497
	.quad	4164222476502044616
	.quad	-1472849568143357127
	.quad	3582132531634842364
# x:
# n:
	.quad	2534672153252977797
	.quad	-8982531895862261036
	.quad	-431393312745532331
	.quad	3407322919102440112
# y:
# n:
	.quad	-6217640066192704413
	.quad	5174502891041237490
	.quad	-166174582311115450
	.quad	-7151404379206431327
# x:
# n:
	.quad	7207190862990672662
	.quad	-7117287998108636502
	.quad	3035425901725632341
	.quad	6206787805466247403
# y:
# n:
	.quad	-5739717259890129441
	.quad	5481714057242511460
	.quad	-1939495604795789
	.quad	3738961699996156936
# x:
# n:
	.quad	7570147562537838025
	.quad	3615641785836839313
	.quad	8256544128833063815
	.quad	-296589288044319397
# y:
# n:
	.quad	-2397334259005658978
	.quad	-1640211873068324970
	.quad	-5997809120521992344
	.quad	-3857379234660191813
# x:
# n:
	.quad	7152187960234457775
	.quad	-7713381574029317851
	.quad	9004551697082209756
	.quad	2031772076366204826
# y:
# n:
	.quad	1134974833304339034
	.quad	-5693596369221283749
	.quad	-7898254866978848188
	.quad	-7538719004378858007
# x:
# n:
	.quad	-2234295232724020886
	.quad	-4739581107125720246
	.quad	-814222109528987841
	.quad	-863273985703233535
# y:
# n:
	.quad	-8351179778321734010
	.quad	-5802364663860247542
	.quad	-8212592642615817088
	.quad	6086598351998883185
# x:
# n:
	.quad	6760564423415995249
	.quad	150592456444730914
	.quad	-8137175855202080682
	.quad	-229508462630852040
# y:
# n:
	.quad	-8073628025832366694
	.quad	-323519147577981362
	.quad	1621085454583517082
	.quad	9034153109830270338
# x:
# n:
	.quad	-5683699839712746217
	.quad	7420660170998995328
	.quad	-816165357671747094
	.quad	7378714559017682149
# y:
# n:
	.quad	-3563325768034654096
	.quad	4634214506780255066
	.quad	4468873386746649157
	.quad	-7784931082541415044
# x:
# n:
	.quad	6533248398279453180
	.quad	-8671006583327313682
	.quad	2321827089703744050
	.quad	-8382089083150852276
# y:
# n:
	.quad	5115585174770451624
	.quad	9189688406340281024
	.quad	-2267728348759813385
	.quad	5813856456985773500
# x:
# n:
	.quad	-7736199857279890160
	.quad	-2189006257874892061
	.quad	-542251115355615681
	.quad	-1179537825594537780
# y:
# n:
	.quad	9161747016381208238
	.quad	4000542304229878865
	.quad	-9181323864167808312
	.quad	-4306833202530557929
# x:
# n:
	.quad	-6057744534027766398
	.quad	4550346202729235635
	.quad	-6791162527155420801
	.quad	7822393377589556031
# y:
# n:
	.quad	-2918515940745129768
	.quad	-5906626847365435642
	.quad	-4892157704169295708
	.quad	-7033373542446526007
# x:
# n:
	.quad	-653773758944509916
	.quad	-6376477304563691204
	.quad	-5164057568770193531
	.quad	-8480675497885071523
# y:
# n:
	.quad	5569850643623296244
	.quad	-3145064543099922613
	.quad	6930596172574263604
	.quad	395635364423343609
# x:
# n:
	.quad	-4304443030206374749
	.quad	-1674083461440249316
	.quad	3036943830409043650
	.quad	947165959760475747
# y:
# n:
	.quad	-4653132299470508746
	.quad	-7780326043974028349
	.quad	-4356590317490582841
	.quad	5731596652418174829
# x:
# n:
	.quad	-1977827506336565037
	.quad	7678692623200221652
	.quad	-1355996146724569042
	.quad	8912961600042885842
# y:
# n:
	.quad	7563377727276236228
	.quad	-7131623809550005588
	.quad	2240109685594860467
	.quad	-1484633104195564220
# x:
# n:
	.quad	7502919672979412135
	.quad	7306802013940284708
	.quad	9055693893620222801
	.quad	-9179821475249740209
# y:
# n:
	.quad	-3015856843413069706
	.quad	-4163603133100643273
	.quad	-4892513012118355607
	.quad	3633666576761239537
# x:
# n:
	.quad	-1838660070919850401
	.quad	-5424967083452813483
	.quad	-7186769244068382803
	.quad	2298975669612291841
# y:
# n:
	.quad	-5502326333456733587
	.quad	-6393544463942479432
	.quad	-1255790071408131579
	.quad	812974154128657442
# x:
# n:
	.quad	-1744917030572316362
	.quad	669249548013259629
	.quad	-3694920965607011322
	.quad	-316688706134809111
# y:
# n:
	.quad	2909962850824883049
	.quad	1169915789841326130
	.quad	-5179521744192004974
	.quad	4408683996261460400
# x:
# n:
	.quad	2917180136061168875
	.quad	5865735300974766524
	.quad	9021850943792585595
	.quad	-2796343049117157268
# y:
# n:
	.quad	2056751321306733214
	.quad	5172865792143209092
	.quad	-5041430653514671478
	.quad	6213497922751481196
# x:
# n:
	.quad	-563658712513039513
	.quad	9122199620231086793
	.quad	-5185606130061166236
	.quad	4306977485243666359
# y:
# n:
	.quad	8188776893335027209
	.quad	3291524432984242437
	.quad	8384756032335530460
	.quad	6823557410801876189
# x:
# n:
	.quad	-3470752889366329116
	.quad	8742427246670368757
	.quad	-6120162266545195777
	.quad	7620735835602011274
# y:
# n:
	.quad	1294307213660642310
	.quad	5616027372986595815
	.quad	1036014209694980578
	.quad	-6897720419476866780
# x:
# n:
	.quad	4018185992538072876
	.quad	8272725228143400468
	.quad	-7335490322333012645
	.quad	8563929284661340254
# y:
# n:
	.quad	5259838812923511000
	.quad	7626326079215301440
	.quad	196635740340911711
	.quad	7652074695687606125
# x:
# n:
	.quad	8775836648848785425
	.quad	-7088519366276052650
	.quad	3017903247853350381
	.quad	-840739487082261504
# y:
# n:
	.quad	-7981314991811157551
	.quad	971092534814612325
	.quad	-4876037931811862255
	.quad	8986004533393174770
# x:
# n:
	.quad	2160748295076665874
	.quad	-2257959655297163460
	.quad	-439434339742109003
	.quad	3331257532659871964
# y:
# n:
	.quad	3577532014821284958
	.quad	-7575509795613575430
	.quad	-3454511105388398122
	.quad	2520251886379196475
# x:
# n:
	.quad	-1802600171534951974
	.quad	-8096837725090193622
	.quad	5883381035071107250
	.quad	1281365728463928002
# y:
# n:
	.quad	1877469619061267478
	.quad	-5494980595559989282
	.quad	8299626530898048478
	.quad	-1258138722347232137
# x:
# n:
	.quad	-7748627504806722344
	.quad	-5388238214420636128
	.quad	-7383549824417786200
	.quad	-878498651394156007
# y:
# n:
	.quad	-578703238451592064
	.quad	803838998917483283
	.quad	-3066594357577858021
	.quad	-6242323571824600094
# x:
# n:
	.quad	-629514095350182324
	.quad	-3011110657428136946
	.quad	-2655029662817520595
	.quad	-5388630813699921487
# y:
# n:
	.quad	5000541937084315292
	.quad	7673736312802660285
	.quad	-4924447890679091818
	.quad	8561074062214728068
# x:
# n:
	.quad	-7062554539528014056
	.quad	4666750332057677956
	.quad	7116165607726401176
	.quad	5524189126486445128
# y:
# n:
	.quad	-8798224652633454747
	.quad	-2596103939135274332
	.quad	-3781479813842643420
	.quad	-4733046879865165128
# x:
# n:
	.quad	-5814258658674747305
	.quad	1049276496462622675
	.quad	6710441266415035031
	.quad	5012380764397866172
# y:
# n:
	.quad	-1797485314186242016
	.quad	5553677818099926373
	.quad	473516877763430326
	.quad	6271065183546993503
# x:
# n:
	.quad	8512228089751917986
	.quad	2299190032081146552
	.quad	5545363323722474404
	.quad	-3105429784009220898
# y:
# n:
	.quad	-3848580016275929455
	.quad	8576689187007066195
	.quad	6026390140725225829
	.quad	-1324108497477282327
# x:
# n:
	.quad	6605593657832072921
	.quad	-7568835435534659498
	.quad	7023099975216168532
	.quad	-463106109228465090
# y:
# n:
	.quad	-2244279656100749416
	.quad	5389175136895263618
	.quad	-1749420735432666953
	.quad	-8464507864010659053
# x:
# n:
	.quad	-5237582994246503232
	.quad	6642157407251069548
	.quad	-139816017407000432
	.quad	2204918473587418503
# y:
# n:
	.quad	-1930055155952576331
	.quad	6902854758467415248
	.quad	7767053910785552546
	.quad	5664438819933696606
# x:
# n:
	.quad	7464602985813747894
	.quad	-4316867715690729256
	.quad	694759461061316885
	.quad	-56550403906257072
# y:
# n:
	.quad	5508303052211156084
	.quad	2850056904427298825
	.quad	-564320512621100491
	.quad	5639685564127953885
# x:
# n:
	.quad	3493368190785600271
	.quad	1340403736217372229
	.quad	-5488852291345775128
	.quad	5607217277986874425
# y:
# n:
	.quad	1954169276992230862
	.quad	-265642888760509707
	.quad	-6837600904576230017
	.quad	-6171864007549643799
# x:
# n:
	.quad	-8644704070895781092
	.quad	-4640085013318538935
	.quad	-7415459004745491403
	.quad	-4231309230690261627
# y:
# n:
	.quad	-8520312116439745753
	.quad	-2768309573016302614
	.quad	-1674191743257678458
	.quad	3290516073439920693
# x:
# n:
	.quad	-6472672428155049337
	.quad	5871881828056867752
	.quad	-2094657767529864196
	.quad	6380846542023896132
# y:
# n:
	.quad	-1947593350243199740
	.quad	-2664107934494473643
	.quad	4533603141042576596
	.quad	2626895762698104914
# x:
# n:
	.quad	-2207334897760082162
	.quad	-495775751085176824
	.quad	-6839952354847102541
	.quad	-3055934106541447240
# y:
# n:
	.quad	-4140899866622361105
	.quad	-8969086498050201425
	.quad	8733462829988866931
	.quad	6708030907312688167
# x:
# n:
	.quad	-2383004319577191421
	.quad	811746364247565783
	.quad	2069652524065842650
	.quad	6714190689113383152
# y:
# n:
	.quad	-7829428437295137709
	.quad	7292664872788515206
	.quad	8863960643277319075
	.quad	-4296009955941743275
# x:
# n:
	.quad	-4018417194918760942
	.quad	8366251348218418730
	.quad	-941649912823198906
	.quad	-2526878160603152339
# y:
# n:
	.quad	-1253359434040143678
	.quad	-3004867271259490099
	.quad	-8158938261450788522
	.quad	-4652691950994018478
# x:
# n:
	.quad	-4361081501615359859
	.quad	-3455082278972218674
	.quad	1018144667135224272
	.quad	-3127663752806714311
# y:
# n:
	.quad	1578655809743369631
	.quad	6220192020512779051
	.quad	-7271083774411726069
	.quad	-4094806330693382159
# x:
# n:
	.quad	-4732682438122438337
	.quad	-1866789085406268872
	.quad	-5955417458055843613
	.quad	1426737373636963943
# y:
# n:
	.quad	-4342425098823700530
	.quad	4556162743913817739
	.quad	-6592848051674889977
	.quad	-6017637205429667308
# x:
# n:
	.quad	-3189031861729963113
	.quad	903443928035081952
	.quad	-4527843508838081046
	.quad	-2841242236047409627
# y:
# n:
	.quad	-2682726628638362773
	.quad	-4915463254432248512
	.quad	-7175538655093297121
	.quad	-7306160846875916794
# x:
# n:
	.quad	3849230261170607554
	.quad	2367701626787945540
	.quad	-4748690580598595116
	.quad	-5277673301696813646
# y:
# n:
	.quad	979038188417906590
	.quad	-4040306923623522146
	.quad	6940284716675475128
	.quad	-5207594339785903710
# x:
# n:
	.quad	-4201601346210241145
	.quad	6017105918867679084
	.quad	2817794909364609655
	.quad	-8846222988092177729
# y:
# n:
	.quad	6040131843022067980
	.quad	8044199413791058262
	.quad	-1160515074590513088
	.quad	-4616390389071480899
# x:
# n:
	.quad	714284982593377143
	.quad	1852884129941000812
	.quad	-2478690983840562853
	.quad	-3242603969699128366
# y:
# n:
	.quad	-5293975419141817717
	.quad	942796771189134883
	.quad	-3700438490383788745
	.quad	-6347560292191863236
# x:
# n:
	.quad	1626446795765356534
	.quad	5265243314994864112
	.quad	1878778627336943699
	.quad	-536864746592130586
# y:
# n:
	.quad	-2002827502867680874
	.quad	8149305874422380076
	.quad	5220209084407954064
	.quad	-1705786510787555147
# x:
# n:
	.quad	-2950716120672420552
	.quad	-9190505522075902897
	.quad	-1028320793637047414
	.quad	9106820992681802497
# y:
# n:
	.quad	-7358288755881570199
	.quad	3949163638968683099
	.quad	2042442753569074236
	.quad	8123241404083396630
# x:
# n:
	.quad	4056528216576985340
	.quad	-2501365590468598565
	.quad	1290560994316267639
	.quad	-7063609736667880890
# y:
# n:
	.quad	-8380397248478095008
	.quad	1753381813747086810
	.quad	-5854487560842849867
	.quad	5575188031906707506
# x:
# n:
	.quad	7010308970762676823
	.quad	5661403429616009122
	.quad	198042035072201430
	.quad	6706788789964841408
# y:
# n:
	.quad	3699178281569444542
	.quad	1322728720620344577
	.quad	-8305288859132901655
	.quad	-5208768616691853080
# x:
# n:
	.quad	2988187914612978400
	.quad	8556201001057853312
	.quad	5519350105053665889
	.quad	-6528596798796308696
# y:
# n:
	.quad	4909843032044102051
	.quad	-9087795714075207066
	.quad	2786615563623551114
	.quad	6471205556759846925
# x:
# n:
	.quad	999725629424431531
	.quad	8177605860036923690
	.quad	-2972975608488445142
	.quad	629183134745461753
# y:
# n:
	.quad	6670647210136260305
	.quad	-5614462710472757736
	.quad	-2735420562338223508
	.quad	-1107678048189081049
# x:
# n:
	.quad	-3787010042338528312
	.quad	8055689956800956527
	.quad	-1869475210012632807
	.quad	-8389151044374392400
# y:
# n:
	.quad	3575151465849535370
	.quad	6643110447245472804
	.quad	-3873605348942877919
	.quad	8638574815648636358
# x:
# n:
	.quad	8803729416667962697
	.quad	-2901060742004244183
	.quad	-1599324300403450679
	.quad	-5140548135332748187
# y:
# n:
	.quad	1658249451532887676
	.quad	-3247260162339138909
	.quad	-2200925167973733572
	.quad	3885127032188421964
# x:
# n:
	.quad	7018085680026018490
	.quad	-1524803447855157937
	.quad	-5373709360444764933
	.quad	2806834406986675098
# y:
# n:
	.quad	-5605101328206818381
	.quad	-2329077309422007721
	.quad	-989002043113458485
	.quad	8833541304448669151
# x:
# n:
	.quad	7383690107347613384
	.quad	8686717443935995087
	.quad	-8544015778479661586
	.quad	-5658960521320759323
# y:
# n:
	.quad	-376530488358484824
	.quad	-8244155881163650318
	.quad	-1393228369467930570
	.quad	-1350335182920444832
# x:
# n:
	.quad	7157783080293059626
	.quad	837069072659874077
	.quad	-2829170078742246025
	.quad	9119680533823677408
# y:
# n:
	.quad	-4976897774630817818
	.quad	6292433824068023824
	.quad	2116749388914749121
	.quad	3565910716830869408
# x:
# n:
	.quad	2785856719526389917
	.quad	-1118369133451430498
	.quad	-6096062125915464518
	.quad	782071864717056252
# y:
# n:
	.quad	-5276811840412265156
	.quad	-3481837748257030624
	.quad	7052845091553036387
	.quad	-3862523072750840818
# x:
# n:
	.quad	2544886904478488553
	.quad	-4564252339862872350
	.quad	6163525223730113486
	.quad	662068473911976775
# y:
# n:
	.quad	3556771442979686338
	.quad	5955392809044163080
	.quad	6173188103737210856
	.quad	-3766956429474372816
# x:
# n:
	.quad	6037648227946151676
	.quad	2380084760991321423
	.quad	-6687111450065423597
	.quad	-644839658344715558
# y:
# n:
	.quad	-6300998045866246044
	.quad	-481052441817166075
	.quad	-3514660449862850103
	.quad	4106830258569435460
# x:
# n:
	.quad	5379480320356266108
	.quad	-6797910051162543485
	.quad	-1653855133793967512
	.quad	1232889217134323885
# y:
# n:
	.quad	6120971755185957584
	.quad	-866263008924525038
	.quad	8804935462757382722
	.quad	-4860241539097138763
# x:
# n:
	.quad	1104814345412817632
	.quad	-6906687916846699789
	.quad	-4648629191494292856
	.quad	-5497415000179749284
# y:
# n:
	.quad	-8285657416680050346
	.quad	-8734947096024022656
	.quad	-4052419992601559255
	.quad	1698080607401965066
# x:
# n:
	.quad	3963540300929427263
	.quad	-8498878638347808070
	.quad	6792246753704788155
	.quad	-6410737256654107119
# y:
# n:
	.quad	193649004326080979
	.quad	-4887459266437085153
	.quad	-3522422587602148039
	.quad	-8744281402466725333
# x:
# n:
	.quad	4734791216729463719
	.quad	-2382067615407041609
	.quad	-7396091075653906378
	.quad	6048081253303280068
# y:
# n:
	.quad	1771730694579481605
	.quad	4626896592706967681
	.quad	1866488798552008893
	.quad	8826385625758041949
# x:
# n:
	.quad	3515520036580530200
	.quad	7675225522583494450
	.quad	6411085737968937860
	.quad	714473467452084952
# y:
# n:
	.quad	2399169272456154298
	.quad	5144929681689462546
	.quad	-111720451286983278
	.quad	4697359413253725870
# x:
# n:
	.quad	-335215776126704544
	.quad	-5471452195927273853
	.quad	-3109066043020379026
	.quad	-7201904872607676401
# y:
# n:
	.quad	-2551042080187327964
	.quad	-3527663430514523916
	.quad	2191012318755691367
	.quad	6176470622303491957
# x:
# n:
	.quad	-5130481579477382088
	.quad	7239894188408129638
	.quad	355130253369903375
	.quad	-7551151984761900363
# y:
# n:
	.quad	-5242021759513009886
	.quad	-7994286080426493632
	.quad	-7063313227278503382
	.quad	-7218575416604434731
# x:
# n:
	.quad	6443818653411335933
	.quad	-1274684707066683247
	.quad	1923669327769216533
	.quad	4083897976927584466
# y:
# n:
	.quad	-1653432788308474697
	.quad	457831154155709140
	.quad	-4241089463442273433
	.quad	-8485889660803696834
# x:
# n:
	.quad	8949174869729194216
	.quad	8967972514260323481
	.quad	-1397324681130328165
	.quad	848110450265071858
# y:
# n:
	.quad	4332394603018533989
	.quad	-1610175271717262653
	.quad	-8058394118276170542
	.quad	-5703008801009835935
# x:
# n:
	.quad	-7105279890639784997
	.quad	5324210256233377204
	.quad	4881250888419054911
	.quad	7432879737009107431
# y:
# n:
	.quad	7320872417064465323
	.quad	4380709704265139464
	.quad	-8928894401131314489
	.quad	8998151555727421520
# x:
# n:
	.quad	8535289934217723517
	.quad	-5760075450197961341
	.quad	-2758046973886776214
	.quad	-5366352107830148627
# y:
# n:
	.quad	-14123092215766390
	.quad	7362499711033606868
	.quad	1754770264394555075
	.quad	-8364771256286981456
# x:
# n:
	.quad	-3154756071768207054
	.quad	-322762130114620142
	.quad	7253995811910920088
	.quad	7669970485212544513
# y:
# n:
	.quad	-3017008039568973352
	.quad	6484165098022651624
	.quad	7768345767123792880
	.quad	4217129927090589609
# x:
# n:
	.quad	2633124848184958776
	.quad	7597355616589473157
	.quad	6759334959289888895
	.quad	2961633080836759333
# y:
# n:
	.quad	9028078948828113340
	.quad	7642092912027611699
	.quad	8971174120932418966
	.quad	-4688101837747491498
# x:
# n:
	.quad	-667122620811085292
	.quad	-755794998357710048
	.quad	7554893732254349790
	.quad	8700282005071210232
# y:
# n:
	.quad	7522883667931326583
	.quad	-8685873509502802496
	.quad	2820013301248581814
	.quad	-6505941913082766929
# x:
# n:
	.quad	-8151225418402766036
	.quad	6116251342702175198
	.quad	4639437651624690787
	.quad	1147532510781091745
# y:
# n:
	.quad	-8780431380409488336
	.quad	-1258602464929468054
	.quad	3066996008614947506
	.quad	-3239958270948809904
# x:
# n:
	.quad	937804319484990770
	.quad	-2188422594009603802
	.quad	-2546488344613587710
	.quad	1051580511566198532
# y:
# n:
	.quad	2473113057997982609
	.quad	-8950949009363728108
	.quad	6584688402293786887
	.quad	-2269842328759483425
# x:
# n:
	.quad	5481188398667449830
	.quad	-2728734448889821028
	.quad	6058172487473023466
	.quad	-637538062744550520
# y:
# n:
	.quad	-6513674150779546971
	.quad	2270205322455530107
	.quad	-456291377148292936
	.quad	-7560981395562939253
# x:
# n:
	.quad	-6754438243405791810
	.quad	7611240606156815204
	.quad	-6102008655003881625
	.quad	3315163050021792259
# y:
# n:
	.quad	-1014917891631318986
	.quad	-8634787243661559965
	.quad	6965038065264484838
	.quad	-739303229700836625
# x:
# n:
	.quad	-8576784266831709682
	.quad	-7619902251612825493
	.quad	637363745184135943
	.quad	9127432091223251977
# y:
# n:
	.quad	7875631204945676044
	.quad	8533017232237700768
	.quad	-9135606382599576727
	.quad	-6295658893550514722
# x:
# n:
	.quad	7760962005642923490
	.quad	7835403647135646558
	.quad	-7943005181503150988
	.quad	-1825770587567091096
# y:
# n:
	.quad	7036622724346113550
	.quad	501848513000024321
	.quad	-1788202832859074031
	.quad	7045800703616678678
# x:
# n:
	.quad	4454726175888136526
	.quad	3299809958375806199
	.quad	4666766092650345513
	.quad	3732540678939624222
# y:
# n:
	.quad	-8691721640799485600
	.quad	2226172198218268910
	.quad	2290164156384685006
	.quad	6639189983832656276
# x:
# n:
	.quad	5449834278554065955
	.quad	-57880077736173349
	.quad	2791133603719074019
	.quad	-1883926211306828123
# y:
# n:
	.quad	-3890920398275897986
	.quad	8332554908568391088
	.quad	-1420751375727068403
	.quad	-8254837226017012225
# x:
# n:
	.quad	-6419144755824433169
	.quad	5634060171414823864
	.quad	-1766606426197098072
	.quad	7003613591680700076
# y:
# n:
	.quad	-4366801628496662966
	.quad	7688867201374188624
	.quad	-6808759373134556643
	.quad	495430498263412493
# x:
# n:
	.quad	-8398725901286839106
	.quad	-4923507784193730331
	.quad	-1064367038597220422
	.quad	-8468335149922211275
# y:
# n:
	.quad	-6778783236335025327
	.quad	-1667647529452546828
	.quad	567377048573111400
	.quad	-7854927043115136199
# x:
# n:
	.quad	-629124246777217378
	.quad	5181117980947766711
	.quad	-401775690254168119
	.quad	6365399307788803691
# y:
# n:
	.quad	-1086189892352783783
	.quad	-8237822030680750133
	.quad	4520893851859476448
	.quad	951240077477801202
# x:
# n:
	.quad	9131415674385427901
	.quad	-160505146054895437
	.quad	3845222160638098296
	.quad	8478158379468401693
# y:
# n:
	.quad	7196772917842959727
	.quad	-7879218140040611225
	.quad	3911320754437638604
	.quad	-8621760647987443048
# x:
# n:
	.quad	-9204072439951965527
	.quad	4810880994408194434
	.quad	4522891085272669851
	.quad	-5269985256945133653
# y:
# n:
	.quad	-7623780686124120189
	.quad	1788483826950359373
	.quad	-8367761122701464701
	.quad	-2562287987589291355
# x:
# n:
	.quad	-8693331518696312509
	.quad	4107914213803270263
	.quad	-3741561088284627564
	.quad	-155045985768274596
# y:
# n:
	.quad	-3806111760485873350
	.quad	5206300187467933797
	.quad	-296438747134617451
	.quad	-1262273042271043933
# x:
# n:
	.quad	2768577185670274534
	.quad	-7919380624786626633
	.quad	8462159259786387599
	.quad	2338287765733434769
# y:
# n:
	.quad	-5843151395732688832
	.quad	-1292801633860134289
	.quad	5083932737015526985
	.quad	-5509604851388064920
# x:
# n:
	.quad	-9186359294378380059
	.quad	-823837063583253031
	.quad	3217128770207407191
	.quad	2101217347524061316
# y:
# n:
	.quad	-5186915445841812911
	.quad	-8187982941289467348
	.quad	1955044772926661233
	.quad	-6634838233592802124
# x:
# n:
	.quad	-7279716885404005216
	.quad	-469646672831746948
	.quad	1032513598148325073
	.quad	3625382196495184059
# y:
# n:
	.quad	7519118135276346772
	.quad	7555859896241166974
	.quad	6607139775346810772
	.quad	-7489205850114136809
# x:
# n:
	.quad	-4850734677060986063
	.quad	6773578199644305496
	.quad	5118686437512830154
	.quad	-1283984927438639937
# y:
# n:
	.quad	5646715855812903909
	.quad	-8380782859836555619
	.quad	8830718127699089809
	.quad	-2928733758528552427
# x:
# n:
	.quad	4248578021096529879
	.quad	1979470361732326767
	.quad	8250958392226240626
	.quad	-6723181376673135800
# y:
# n:
	.quad	-4034421363704831442
	.quad	-7894028537864307626
	.quad	4626938125970297822
	.quad	-3266108862119630546
# x:
# n:
	.quad	-1322860390775156090
	.quad	230177748715762721
	.quad	-3322942786722276519
	.quad	-7834002878649360888
# y:
# n:
	.quad	3722298917715378927
	.quad	-5565649313014736483
	.quad	3419936809009240152
	.quad	-578646416853325954
# x:
# n:
	.quad	-1164637240538761290
	.quad	-34376920495040400
	.quad	-5569035972605717189
	.quad	8348012106720728604
# y:
# n:
	.quad	-4266772802211677045
	.quad	504031948151702906
	.quad	5841991203479625695
	.quad	-118487701865325580
# x:
# n:
	.quad	-3292694820427642100
	.quad	121794670959069897
	.quad	7751381012932746629
	.quad	1811462375503556082
# y:
# n:
	.quad	7329909480310125739
	.quad	-83366618077390448
	.quad	-2190262435207183360
	.quad	7498643434550070923
# x:
# n:
	.quad	4663255545438830919
	.quad	-4014118976026332851
	.quad	4094492052447552269
	.quad	-2289123614288449024
# y:
# n:
	.quad	-3865595251053972128
	.quad	-161627245495951326
	.quad	-581102727557400955
	.quad	-2027466381906817633
# x:
# n:
	.quad	2156273534513516232
	.quad	-5078331205786797127
	.quad	1428238475352072159
	.quad	9157864009901285595
# y:
# n:
	.quad	-6557839991442183698
	.quad	-3548330452328960481
	.quad	-4956366656048988696
	.quad	-97113185577800751
# x:
# n:
	.quad	-5967324430022386752
	.quad	-2372425813042628347
	.quad	2347429003466379870
	.quad	-5632176329471711963
# y:
# n:
	.quad	5297762053277916646
	.quad	-1365653668937024126
	.quad	301319564014671066
	.quad	-7104302175730939237
# x:
# n:
	.quad	2943316259476688374
	.quad	6715753689026129612
	.quad	-4910221348371377533
	.quad	-3702998645189804881
# y:
# n:
	.quad	3611104796238173614
	.quad	-9031751992619282067
	.quad	-8243687508421670584
	.quad	-6293085798424374253
# x:
# n:
	.quad	133573513287154736
	.quad	7148444488297686524
	.quad	4697232487413343535
	.quad	-4566409145637547882
# y:
# n:
	.quad	2357844681913062722
	.quad	-7792686864588893141
	.quad	7078642600378788054
	.quad	4279078958176131617
# x:
# n:
	.quad	-5355447923730041082
	.quad	-3012034743052058876
	.quad	-8719984654413098425
	.quad	8262976985018903862
# y:
# n:
	.quad	6036054328869436016
	.quad	-6450309141643102380
	.quad	-4057708003935046221
	.quad	8776386369637725475
# x:
# n:
	.quad	-8320862504270896035
	.quad	-9007581541821583762
	.quad	5480527358740436783
	.quad	600791670325185811
# y:
# n:
	.quad	9097461202578930652
	.quad	2376249291579401114
	.quad	-6205510832269856644
	.quad	-8468168910233716997
# x:
# n:
	.quad	8658962329025181034
	.quad	6894700473549802273
	.quad	-8749409371155144544
	.quad	2432920671162431865
# y:
# n:
	.quad	-4077157322101431364
	.quad	8887353552396390000
	.quad	-1443345131840052003
	.quad	3528824705123135179
# x:
# n:
	.quad	-722102947070333771
	.quad	-7744964338230828714
	.quad	-1253284623023842230
	.quad	-630799872886994054
# y:
# n:
	.quad	694635506249877045
	.quad	-511104259434314316
	.quad	7002691072578164835
	.quad	-3619207545780608004
# x:
# n:
	.quad	-874916337126070425
	.quad	-4869499409349422299
	.quad	7207672342994011194
	.quad	8260304708566272638
# y:
# n:
	.quad	-70380355518960993
	.quad	5227970878289519333
	.quad	2795907638588113662
	.quad	-2261504186690650906
# x:
# n:
	.quad	-6550393584549339475
	.quad	2807333575816119862
	.quad	-3854641290733053931
	.quad	2193102971181825423
# y:
# n:
	.quad	6305535658587057247
	.quad	-4956079368597033140
	.quad	-3813922570712871803
	.quad	-6841892841464673466
# x:
# n:
	.quad	-7845054225756324841
	.quad	-6222746557119056553
	.quad	6428969167490987618
	.quad	-1430111361226378675
# y:
# n:
	.quad	140290297727423138
	.quad	-5562020939564632513
	.quad	-8522861746805006467
	.quad	-3274520228511084173
# x:
# n:
	.quad	5587840801896454928
	.quad	-6016946720921121650
	.quad	-6562628500632478714
	.quad	-2128932694825869435
# y:
# n:
	.quad	-1834787296608069679
	.quad	3021095266273925862
	.quad	1954440089533650800
	.quad	-2006693642123683268
# x:
# n:
	.quad	-1321744373695748501
	.quad	-6856022451661693264
	.quad	-1164026689102949243
	.quad	-5994677648227890753
# y:
# n:
	.quad	573385972757070051
	.quad	6890661625894420206
	.quad	6984930252562441026
	.quad	-7783314591091982343
# x:
# n:
	.quad	-7694158134874154296
	.quad	-97521328270000513
	.quad	6368019994912014184
	.quad	1602875086051638440
# y:
# n:
	.quad	-5174366495747279928
	.quad	-5299193537132555517
	.quad	-8586744766799982554
	.quad	1303625428064465220
# x:
# n:
	.quad	-2971195593851389176
	.quad	-3192413190800680995
	.quad	-6616140093660823516
	.quad	8917618044709989644
# y:
# n:
	.quad	-1415787517641346621
	.quad	6346883127871000900
	.quad	-9049737572256449406
	.quad	4817663674035002139
# x:
# n:
	.quad	2873944332865987935
	.quad	-6499563311495037612
	.quad	1864376044330386617
	.quad	8058597369671638293
# y:
# n:
	.quad	6077975827650262779
	.quad	4174234191774737039
	.quad	-7548825037750969137
	.quad	546794472964189625
# x:
# n:
	.quad	-4299406981107947502
	.quad	7660326520845810800
	.quad	7846956290788638727
	.quad	-3000130053151236739
# y:
# n:
	.quad	123796589235786305
	.quad	3882616127866177438
	.quad	5190438085857961392
	.quad	-4537044940463857922
# x:
# n:
	.quad	-2799841799614741793
	.quad	7526422219278865286
	.quad	-5741806485643351242
	.quad	8452901604732598920
# y:
# n:
	.quad	-2083978628433812915
	.quad	1027839917532655543
	.quad	7716457055057615725
	.quad	-7664558652981139027
# x:
# n:
	.quad	4650575821680141016
	.quad	7498311110410113032
	.quad	836606548796360678
	.quad	7436577710824127046
# y:
# n:
	.quad	-1604838570950871832
	.quad	-5423275564792608518
	.quad	-1755358268728001967
	.quad	-1261523249965758300
# x:
# n:
	.quad	-6433584169759576442
	.quad	3336664251842139593
	.quad	5710715989834807780
	.quad	-1188339685466389385
# y:
# n:
	.quad	-3667761847717066616
	.quad	5645626628670417141
	.quad	786889541485016065
	.quad	-7528673408553982212
# x:
# n:
	.quad	-2433733659056208875
	.quad	5297858414822884578
	.quad	6517146458701503418
	.quad	7177597917389797653
# y:
# n:
	.quad	8544762444024824899
	.quad	1005319487482383012
	.quad	-4257599088090657842
	.quad	-3333938903066778778
# x:
# n:
	.quad	8378302826723011842
	.quad	8008497698877826702
	.quad	-6845987475457099608
	.quad	6766925469018218153
# y:
# n:
	.quad	6304387044528473363
	.quad	-7474407494857368925
	.quad	-4606126500468929026
	.quad	-6800017443073565671
# x:
# n:
	.quad	6557395044366315100
	.quad	-4014793992524546767
	.quad	3499178425136040390
	.quad	5078465966614578358
# y:
# n:
	.quad	3227068531268717730
	.quad	7150913614003202987
	.quad	-6815731274291094397
	.quad	6467463355487100933
# x:
# n:
	.quad	-4700499522794612608
	.quad	4598202952470982655
	.quad	-5754918496067902017
	.quad	434120691777615463
# y:
# n:
	.quad	-210795122667090513
	.quad	7600523289563034177
	.quad	-539020865668404665
	.quad	969655273320376710
# x:
# n:
	.quad	-4440644201236783617
	.quad	2679707382391241396
	.quad	8468620308320679122
	.quad	-8227631078002862529
# y:
# n:
	.quad	1328348333219758402
	.quad	-1022452431715261755
	.quad	-7247767446871415587
	.quad	-1769091390473175912
# x:
# n:
	.quad	1941079428641762611
	.quad	2276358421160374117
	.quad	2683272480823134679
	.quad	1696915707921459129
# y:
# n:
	.quad	491917842853316504
	.quad	5179511914625459251
	.quad	-2661074601305172795
	.quad	2970942611940786519
# x:
# n:
	.quad	-5653448869323719378
	.quad	5109507576051651695
	.quad	7245501108923359597
	.quad	5331577372206102426
# y:
# n:
	.quad	-4275930823358234724
	.quad	2360627938170808206
	.quad	-4393636573639400491
	.quad	-3941805463023340692
# x:
# n:
	.quad	5801123600950518568
	.quad	-8549895054267004516
	.quad	-8404495475221999876
	.quad	-6382484996732309967
# y:
# n:
	.quad	2559831872284734679
	.quad	5808622488695183407
	.quad	-2126161151509105844
	.quad	-8139453826914961695
# x:
# n:
	.quad	1309488786122698482
	.quad	-3632619536826394450
	.quad	5919409175825982133
	.quad	740999932243338619
# y:
# n:
	.quad	-4822629675668959199
	.quad	6641482164895081375
	.quad	3293298125623074762
	.quad	5634686207126205033
# x:
# n:
	.quad	2397812111808835251
	.quad	8094868367762700241
	.quad	5647473118645129452
	.quad	-4403213411307529604
# y:
# n:
	.quad	2143479517726352899
	.quad	7326636542667243673
	.quad	5476155964138070788
	.quad	8264904984936693471
# x:
# n:
	.quad	6509483470696387285
	.quad	-8290175821568372376
	.quad	6234735441675121566
	.quad	-7019468973592311012
# y:
# n:
	.quad	5998721960288188644
	.quad	1728185860615663650
	.quad	4790069206204242813
	.quad	-8449377696109613239
# x:
# n:
	.quad	-4047283204621167556
	.quad	-2073065441468025913
	.quad	4184638514529167717
	.quad	8573173199391034825
# y:
# n:
	.quad	497881627014565014
	.quad	-1196180176518187026
	.quad	-5010376253176596538
	.quad	57936945802229750
# x:
# n:
	.quad	-3840061529560658824
	.quad	1774763166393912233
	.quad	8321214221511268817
	.quad	-6906661675301529209
# y:
# n:
	.quad	3771417035386377057
	.quad	798976562399260453
	.quad	-364623656447005864
	.quad	8064743536312108950
# x:
# n:
	.quad	7273365980183114124
	.quad	351984630005898569
	.quad	-3267537909968753336
	.quad	-1038248987530829423
# y:
# n:
	.quad	4651083686243994089
	.quad	3090277499007761988
	.quad	-209294931212033576
	.quad	-3673302565901247528
# x:
# n:
	.quad	-4108350214969523254
	.quad	6620387572079062728
	.quad	3922278434772592535
	.quad	6362931743868860587
# y:
# n:
	.quad	8584749713074359448
	.quad	-6754241615427674449
	.quad	-8609332423670719676
	.quad	115091054782213858
# x:
# n:
	.quad	3586457754339260390
	.quad	5007605413623060864
	.quad	-6934948023658536415
	.quad	-1482436440813681327
# y:
# n:
	.quad	-5599328097113414137
	.quad	8404738577303686433
	.quad	7949835320362714559
	.quad	-5091085037419681409
# x:
# n:
	.quad	-5266302907424694751
	.quad	5891789831080684144
	.quad	-3136820699593060697
	.quad	-3230162754781443121
# y:
# n:
	.quad	-6646811707822584564
	.quad	3862612398508435523
	.quad	-4009562805658306579
	.quad	9098089927224872619
# x:
# n:
	.quad	4603426923001587914
	.quad	6446007199639548377
	.quad	-8436185191723743408
	.quad	-4991980127432233887
# y:
# n:
	.quad	8652198493848327952
	.quad	-1271378030137889502
	.quad	1913035042223196671
	.quad	-840975739346880535
# x:
# n:
	.quad	1546541857268829019
	.quad	-4376484632163396326
	.quad	-2951684377292473553
	.quad	9040378548547881340
# y:
# n:
	.quad	6581884433375270145
	.quad	-3301509534697512939
	.quad	8154657011091973549
	.quad	-7464520543940627445
# x:
# n:
	.quad	-276670373993650808
	.quad	-3847082817002920790
	.quad	4407081093589616807
	.quad	5225762548700910187
# y:
# n:
	.quad	-4057996739443002874
	.quad	-2971858386027029241
	.quad	2842500382863904043
	.quad	9005545731184520104
# x:
# n:
	.quad	4260294977713406956
	.quad	-1652472159203413977
	.quad	4517256614926218585
	.quad	372753754308156299
# y:
# n:
	.quad	8229111392769676731
	.quad	8313437157109279517
	.quad	-5344292318566486957
	.quad	-5913009285484810775
# x:
# n:
	.quad	3697381316235893739
	.quad	-8025605379089307584
	.quad	-1997206744246425563
	.quad	-5729055376278542671
# y:
# n:
	.quad	1443496021764494425
	.quad	5423025918357025384
	.quad	-997913172094821704
	.quad	2797838611604939524
# x:
# n:
	.quad	2679898464572388529
	.quad	1773352253929011041
	.quad	-877331724356850672
	.quad	4742335101689224225
# y:
# n:
	.quad	8096668752525924241
	.quad	-8852322264919137235
	.quad	2011133445604143807
	.quad	-526193534671071793
# x:
# n:
	.quad	-1955620962820554291
	.quad	1440946810451650429
	.quad	2305715015863729476
	.quad	982751428837819223
# y:
# n:
	.quad	-1077917802225288239
	.quad	1439131962355341588
	.quad	9176602915300436853
	.quad	-1437152173453543098
# x:
# n:
	.quad	-8008939026630917839
	.quad	4575962051908950822
	.quad	3931595689994086947
	.quad	-6596684634164795782
# y:
# n:
	.quad	6391907833618349292
	.quad	-8696496502954497515
	.quad	8803404679477764234
	.quad	5449553884579027254
# x:
# n:
	.quad	-2444668336180916287
	.quad	6770035857221827919
	.quad	-4142322665877413796
	.quad	-1424794005468126311
# y:
# n:
	.quad	3797889371534402508
	.quad	-4231237643525780598
	.quad	-2768376009563201662
	.quad	8302710420418215884
# x:
# n:
	.quad	-924519710605037995
	.quad	-8438474353676460852
	.quad	1252456370820442717
	.quad	-8222419864880788020
# y:
# n:
	.quad	4031892434115235493
	.quad	8149808247901650221
	.quad	-8467619027677901741
	.quad	1289242978061194569
# x:
# n:
	.quad	8121646162622217629
	.quad	6969421542023906110
	.quad	2304797284310704183
	.quad	-1517847880836886440
# y:
# n:
	.quad	453609281120686940
	.quad	1354892185119072429
	.quad	-5904225963378903828
	.quad	-8003258600306430048
# x:
# n:
	.quad	2600621808984548838
	.quad	-1469937896557834845
	.quad	-6034749310017846159
	.quad	7603663900587913108
# y:
# n:
	.quad	7267170932228044901
	.quad	252311724612305561
	.quad	-8997867226627002519
	.quad	164471899386266117
# x:
# n:
	.quad	6143511013110832142
	.quad	7694914399987488413
	.quad	1469292926055533680
	.quad	-2344239991434600786
# y:
# n:
	.quad	-8450744309470989788
	.quad	-6254091563715144411
	.quad	6848144070117443458
	.quad	6260013387547141344
# x:
# n:
	.quad	101812109094037093
	.quad	8141598280496741315
	.quad	6574331939551798972
	.quad	1886246553597690883
# y:
# n:
	.quad	-2880707086629610682
	.quad	-8239157128725279999
	.quad	-3108784539930174037
	.quad	6921128700785019277
# x:
# n:
	.quad	-1123920247950759299
	.quad	1049681151480450112
	.quad	3824156250638656583
	.quad	3282686200998468142
# y:
# n:
	.quad	2776851030843053349
	.quad	2425498559232320093
	.quad	3317325363814664158
	.quad	-2798912866858933263
# x:
# n:
	.quad	-9198337780372172367
	.quad	-3016896619570247982
	.quad	-6522709821848752484
	.quad	-5386510970695562587
# y:
# n:
	.quad	-3054942214535081955
	.quad	-6448925125661351987
	.quad	-2562067675918312778
	.quad	-9130773527294368367
# x:
# n:
	.quad	5333469720090408018
	.quad	-1722430229701604855
	.quad	-3168389008469138463
	.quad	-928384496313613864
# y:
# n:
	.quad	-1818949581517357945
	.quad	-7220032117643243204
	.quad	3067851456942655992
	.quad	-8165488362566804009
# x:
# n:
	.quad	4150538857538732733
	.quad	-954013659681005170
	.quad	715207331025591293
	.quad	8999858919394914305
# y:
# n:
	.quad	-3611055925569556489
	.quad	3311918728868426511
	.quad	755731570958264267
	.quad	-4245696401185688704
# x:
# n:
	.quad	2711696411028978782
	.quad	1103694979918434969
	.quad	8793450894070325197
	.quad	6334954483744779305
# y:
# n:
	.quad	-5648943273531211267
	.quad	5544161173237113802
	.quad	-4072664641706307470
	.quad	-4136992650826668704
# x:
# n:
	.quad	-7174453166855824416
	.quad	-9072113335507842937
	.quad	-8681084176371621223
	.quad	6681722603724042509
# y:
# n:
	.quad	-2352004391923468362
	.quad	4822966624007806783
	.quad	-7160357265098421021
	.quad	3705573300227878463
# x:
# n:
	.quad	-624558958075469888
	.quad	4375050727740534211
	.quad	3358196027731293230
	.quad	390415226548592609
# y:
# n:
	.quad	-968478635821509919
	.quad	-2065099638426582126
	.quad	5628280190608099595
	.quad	-1752879015200644596
# x:
# n:
	.quad	-5438192481170064856
	.quad	6528056374243607313
	.quad	-6748584262829133693
	.quad	8980244176012539557
# y:
# n:
	.quad	7655064591458604516
	.quad	5102725258531187042
	.quad	1660206100654012863
	.quad	2095375610539782921
# x:
# n:
	.quad	-4983733724966106629
	.quad	-3754442412585790831
	.quad	1258635064239865787
	.quad	6702512488176722693
# y:
# n:
	.quad	3522638104000987730
	.quad	439531074977408829
	.quad	699820190403208894
	.quad	5089482991903481452
# x:
# n:
	.quad	-6941095929925588000
	.quad	5238870408451332861
	.quad	2995571000175699805
	.quad	5146905894349929073
# y:
# n:
	.quad	-3225571343393690174
	.quad	7592626027932061997
	.quad	-4517843301797759815
	.quad	9156475526098322503
# x:
# n:
	.quad	-1661483969930624363
	.quad	-3900663582192750981
	.quad	-2612374893503773541
	.quad	-4140275546538089906
# y:
# n:
	.quad	-5980656231219594527
	.quad	5912623889426491167
	.quad	446642411053948522
	.quad	8642354631886497220
# x:
# n:
	.quad	5543187163300461431
	.quad	-7401277149148236850
	.quad	-5487738884791824869
	.quad	221910758262039753
# y:
# n:
	.quad	-3184718102318687430
	.quad	2055854696106859621
	.quad	4907532493190521644
	.quad	3546482260092115702
# x:
# n:
	.quad	-511292049172286895
	.quad	8502872890897705109
	.quad	2872601658975184714
	.quad	-2913975200736639628
# y:
# n:
	.quad	869668142777429160
	.quad	7326327991176706383
	.quad	-5802969725991987563
	.quad	-8196099189414428393
# x:
# n:
	.quad	6023659373569646726
	.quad	-2954171698297040658
	.quad	4765148667935996659
	.quad	-9043416931645529758
# y:
# n:
	.quad	-3869559893398097066
	.quad	2763289070725562184
	.quad	6842658332569230294
	.quad	-6961166810208247244
# x:
# n:
	.quad	-5694996183626088710
	.quad	293931410600158570
	.quad	7106558061041914096
	.quad	7755425454618832387
# y:
# n:
	.quad	653468288286255063
	.quad	2992704552646266122
	.quad	-5529917290843774897
	.quad	2725885285657254383
# x:
# n:
	.quad	-5261628985662186260
	.quad	6466731172584910694
	.quad	3780947366660975013
	.quad	3189612334007770207
# y:
# n:
	.quad	5087818907800720262
	.quad	-6409509704798012700
	.quad	-2640428586988868922
	.quad	5647474678934984764
# x:
# n:
	.quad	-4128794997904584953
	.quad	-6101336492151482700
	.quad	-6744729188130095433
	.quad	5740677593456636216
# y:
# n:
	.quad	6205416160043053911
	.quad	2808627071715983780
	.quad	-2733074031721627710
	.quad	-3349495923477613630
# x:
# n:
	.quad	5323306576385690622
	.quad	1686366494429991111
	.quad	-7079351627100793301
	.quad	1457847040347137327
# y:
# n:
	.quad	4435398737481422001
	.quad	9220346657535563243
	.quad	-4484027680267067740
	.quad	-8611629881772030594
# x:
# n:
	.quad	-4148880495975240189
	.quad	-6457678022329918680
	.quad	4134660617966131077
	.quad	4129785506631805465
# y:
# n:
	.quad	8983314471621838997
	.quad	630147481629907926
	.quad	-7879483275596558589
	.quad	6692916351457148299
# x:
# n:
	.quad	482667552094225490
	.quad	-1244279682808038252
	.quad	2965694067197749350
	.quad	4478390744063280884
# y:
# n:
	.quad	7880502582854140856
	.quad	7683882011090678142
	.quad	3944796094619466085
	.quad	3590183222814499874
# x:
# n:
	.quad	-5084103896091915746
	.quad	3848781352337754455
	.quad	7420441572107760693
	.quad	-4266227877983596618
# y:
# n:
	.quad	-4152560453628029595
	.quad	4741091804441760759
	.quad	-1467350204055808753
	.quad	-6938744226682846668
# x:
# n:
	.quad	27427371458449041
	.quad	-8903370308246134506
	.quad	153979477064811925
	.quad	7592240295172698781
# y:
# n:
	.quad	-792806978012951883
	.quad	4698699710951524729
	.quad	8707999782107750289
	.quad	-815743269841936888
# x:
# n:
	.quad	5901629220790619325
	.quad	5309757202730145245
	.quad	-7914754634702103776
	.quad	6551930777732271994
# y:
# n:
	.quad	7771344801163492113
	.quad	-7327893959232299017
	.quad	-1006123691746174799
	.quad	7900612082176405585
# x:
# n:
	.quad	7442175844453896891
	.quad	6804861876434392371
	.quad	-3668879873825439259
	.quad	4110284483982153312
# y:
# n:
	.quad	8858262165229938458
	.quad	4373214005971895564
	.quad	-7749286713505618967
	.quad	-4792238131901949750
# x:
# n:
	.quad	-4360645130727946795
	.quad	-7609287506699605952
	.quad	159357009569080475
	.quad	4755659159628287842
# y:
# n:
	.quad	5135422591116943813
	.quad	-3358855290725252572
	.quad	-540414204793508989
	.quad	-412117395124480220
# x:
# n:
	.quad	3554911211506086817
	.quad	-5702066007128092670
	.quad	1324622484200352050
	.quad	5720322822706498835
# y:
# n:
	.quad	-7932923311998991537
	.quad	6442630357654251455
	.quad	-6263773654904161319
	.quad	1244679979511408211
# x:
# n:
	.quad	-2420925539371895026
	.quad	4460030277320013175
	.quad	-6370069134177930894
	.quad	-7385555681761449924
# y:
# n:
	.quad	-6187108073752882650
	.quad	1271427108359634029
	.quad	-8993553916030916208
	.quad	4088656356213327900
# x:
# n:
	.quad	-4122727923008754368
	.quad	5041536898268679511
	.quad	-3540685877280590910
	.quad	8464265479319358344
# y:
# n:
	.quad	1532037315712021919
	.quad	1790516294251108356
	.quad	-4588492904537341439
	.quad	-2844446931798222441
# x:
# n:
	.quad	3679970186237823067
	.quad	-2601642611948758205
	.quad	-3890649924063578427
	.quad	-305852758032123541
# y:
# n:
	.quad	1421334966397510005
	.quad	-6333280692177002875
	.quad	-7287264974159382687
	.quad	546509111046610733
# x:
# n:
	.quad	-3763307563016200764
	.quad	6778034800277053481
	.quad	-8443770868436341856
	.quad	3270271970537015577
# y:
# n:
	.quad	3614723286300861200
	.quad	8030324386986864367
	.quad	3972812634592128675
	.quad	6574825214591879433
# x:
# n:
	.quad	2573467737887292024
	.quad	-330386723979023379
	.quad	-5775654506802517704
	.quad	-3520701574082228640
# y:
# n:
	.quad	-6912763210826520374
	.quad	1397197060824179439
	.quad	-2140312720342366186
	.quad	5160300660966472128
# x:
# n:
	.quad	8435560828338036602
	.quad	-2540011597951692420
	.quad	-6256575273774596540
	.quad	-4399748173297403780
# y:
# n:
	.quad	7660643219358603574
	.quad	2646587314042155606
	.quad	1152224843760093727
	.quad	-3261256349787646048
# x:
# n:
	.quad	-6884860092059697450
	.quad	-3351236855074641100
	.quad	-4755882747264825567
	.quad	5458322601354543012
# y:
# n:
	.quad	-1231030757390794259
	.quad	3952088031648933751
	.quad	-4399194067968810852
	.quad	-4533454710755707984
# x:
# n:
	.quad	994342386399870326
	.quad	-2777766529134938816
	.quad	-4961663671923320629
	.quad	5298073076687254557
# y:
# n:
	.quad	3672569777792700664
	.quad	-4511880421027690821
	.quad	-140142392046858710
	.quad	4308819456138441302
# x:
# n:
	.quad	-566192752480848495
	.quad	-6352301359268718089
	.quad	-1142196615396945525
	.quad	-6781809711154562108
# y:
# n:
	.quad	5331202883565345450
	.quad	-7724160533952932165
	.quad	6784747820460642322
	.quad	-7125679837954985610
# x:
# n:
	.quad	-3949445536249037872
	.quad	-2164577001344980865
	.quad	-1975664731147965678
	.quad	3086650726471581148
# y:
# n:
	.quad	-3462741282558288766
	.quad	5764338264851477300
	.quad	-4801954172011743877
	.quad	-6936823840882159899
# x:
# n:
	.quad	8032901111229774364
	.quad	5823908073056455340
	.quad	1073429184030554691
	.quad	-338369707316537724
# y:
# n:
	.quad	7910052075361251873
	.quad	4316217700748106936
	.quad	5111368272685501836
	.quad	8448038233006986191
# x:
# n:
	.quad	-6726359338846397189
	.quad	7908486620981421578
	.quad	1830601683830924944
	.quad	-905712195449337433
# y:
# n:
	.quad	-324638999524518597
	.quad	-6542593461723394865
	.quad	-6168459190371679629
	.quad	4600019355640041716
# x:
# n:
	.quad	7332295886946624759
	.quad	-427248370068642167
	.quad	1852661753680875213
	.quad	9219382714697094454
# y:
# n:
	.quad	3132859950026048849
	.quad	5408661397333289412
	.quad	-623372710438187374
	.quad	186122087714070877
# x:
# n:
	.quad	-5374070992536673035
	.quad	-1847138991251228716
	.quad	5424475548885972633
	.quad	-7816654282796129339
# y:
# n:
	.quad	8105135140192083058
	.quad	-599928502629017796
	.quad	3382501589343958392
	.quad	-7651323570103517325
# x:
# n:
	.quad	-7934704565811558351
	.quad	8908789254470366941
	.quad	8296614013125229691
	.quad	5708472708101838551
# y:
# n:
	.quad	771635454572619887
	.quad	3495090379655011927
	.quad	-7002573434155532817
	.quad	-6238121786683444748
# x:
# n:
	.quad	4121712986630320739
	.quad	7547309913542554819
	.quad	5900990334737172430
	.quad	1229207439330588870
# y:
# n:
	.quad	5734173002137484054
	.quad	3391483426590248313
	.quad	-713656705918078856
	.quad	531817475349482844
# x:
# n:
	.quad	6014720227139822072
	.quad	-6798020945935029832
	.quad	-1927960253280485024
	.quad	-7886382932166327435
# y:
# n:
	.quad	-7062983987050639454
	.quad	-2687269007078769477
	.quad	-1000196645632675855
	.quad	2271702195149217892
# x:
# n:
	.quad	-2243079713407596501
	.quad	-1738117408416156158
	.quad	-1861069079521881063
	.quad	-1346498195606525572
# y:
# n:
	.quad	-5007118738307337082
	.quad	-1278521378576942338
	.quad	6646821137479381565
	.quad	7490471476716554488
# x:
# n:
	.quad	-6757973034787104842
	.quad	6330087492150888241
	.quad	-6452945960805275393
	.quad	-3017200369851658486
# y:
# n:
	.quad	-7777300445525767615
	.quad	-8526361684408401644
	.quad	-6166365525370987203
	.quad	-961975606346470401
# x:
# n:
	.quad	1231831317043200078
	.quad	4307454252081721675
	.quad	1478598700583602071
	.quad	-119431342324500343
# y:
# n:
	.quad	2523838684928116039
	.quad	959065303592084327
	.quad	8423632449168993547
	.quad	-2985843957574657878
# x:
# n:
	.quad	6761478869984809059
	.quad	3945363360615941834
	.quad	5069730907830403632
	.quad	2155050386329432425
# y:
# n:
	.quad	300077922624694746
	.quad	-4907923691456675671
	.quad	3577145735732352523
	.quad	-2799768591389768516
# x:
# n:
	.quad	7740516350984885137
	.quad	-7485471717259291764
	.quad	8842611140292881619
	.quad	8812931554181333208
# y:
# n:
	.quad	-5725396864415223792
	.quad	-4316795031473378576
	.quad	1904711444930601124
	.quad	-8511561229627695301
# x:
# n:
	.quad	8652499463085997350
	.quad	928482937234856102
	.quad	-628396317557296005
	.quad	6427365406164276718
# y:
# n:
	.quad	6192766569555476772
	.quad	-9072803501065714218
	.quad	-1098900663980590821
	.quad	9126951421276922560
# x:
# n:
	.quad	-8739687084178342355
	.quad	4494093451269812247
	.quad	-5122396392044426800
	.quad	-5222886273292112200
# y:
# n:
	.quad	6632614287194231054
	.quad	6247960269705607993
	.quad	1031048763615887158
	.quad	9188306524757521485
# x:
# n:
	.quad	-8130950639972357772
	.quad	6463487690495869382
	.quad	6843409113307040786
	.quad	2492922091002029637
# y:
# n:
	.quad	-6458325492692650063
	.quad	-1154158759393167013
	.quad	2971594787645344145
	.quad	-2693802774441748635
# x:
# n:
	.quad	8012592616849086132
	.quad	-3324954392842779363
	.quad	5476036828090394342
	.quad	2682973865273072579
# y:
# n:
	.quad	-4572221023373035320
	.quad	2988885520216050429
	.quad	-7596764143826357657
	.quad	7039177592700872021
# x:
# n:
	.quad	-8979055484615229261
	.quad	-844103074807030046
	.quad	939852936844812505
	.quad	-3660708999769633068
# y:
# n:
	.quad	7149565265878420799
	.quad	-8034871093513572035
	.quad	-9066823076564410399
	.quad	-7273934801262495813
# x:
# n:
	.quad	-5844265648567182726
	.quad	-7463523332856931540
	.quad	-3213704390560515050
	.quad	3010341676889451164
# y:
# n:
	.quad	-2127348081667112079
	.quad	-5751883849879188220
	.quad	-3639168824633105910
	.quad	-2605217576049353319
# x:
# n:
	.quad	-6833707304915836991
	.quad	-8579405027852685132
	.quad	746968364250385810
	.quad	-4421500308657807523
# y:
# n:
	.quad	-719665461203368832
	.quad	-7210004527497637467
	.quad	-4986851917420474279
	.quad	-2910572131020104993
# x:
# n:
	.quad	-6284482009276115240
	.quad	-6876106878462815162
	.quad	-8738134643539635268
	.quad	8614282117841498546
# y:
# n:
	.quad	-1817884861347655012
	.quad	-6241256975137523547
	.quad	-7417446657975844445
	.quad	-7621266642049476945
# x:
# n:
	.quad	1610999680674836754
	.quad	5386331977341568276
	.quad	-4542327827120096466
	.quad	893306799404595188
# y:
# n:
	.quad	7277308865302270621
	.quad	-1741287036205489067
	.quad	8828894640926559656
	.quad	-5904347736670616880
# x:
# n:
	.quad	3764495092039421531
	.quad	-938029985234293401
	.quad	-3281357878301182183
	.quad	585259196454904142
# y:
# n:
	.quad	8320284290947776075
	.quad	5917455037536879945
	.quad	5902172424796017553
	.quad	3814846737883684354
# x:
# n:
	.quad	-826172228598943430
	.quad	-5415786925502023047
	.quad	7768231935341069430
	.quad	-4868516371664669704
# y:
# n:
	.quad	7093876433435260433
	.quad	-5316568753671709370
	.quad	6039726205972467813
	.quad	6509034195456143101
# x:
# n:
	.quad	-4785587577481841606
	.quad	-8511948344063637193
	.quad	8286417062270312309
	.quad	2709202957196155098
# y:
# n:
	.quad	8322093503700922971
	.quad	-2789454406281081933
	.quad	-197651627270502747
	.quad	4333374047319887505
# x:
# n:
	.quad	-2328573970615527647
	.quad	5072668033579615591
	.quad	976242455421848611
	.quad	5787628559187729698
# y:
# n:
	.quad	2609727508391682768
	.quad	-9203093166565577656
	.quad	1944862808623692516
	.quad	-7776644209159157034
# x:
# n:
	.quad	193051873880748651
	.quad	-8007808145282963621
	.quad	3256878704244852680
	.quad	-4605617839942710786
# y:
# n:
	.quad	-4187154259359650960
	.quad	-6266479239797022002
	.quad	-4510512687063626426
	.quad	-5448577096206264134
# x:
# n:
	.quad	1546242426331954877
	.quad	1219113622180685684
	.quad	4078924017468595712
	.quad	8362504360028054237
# y:
# n:
	.quad	-8824050545190077782
	.quad	3255106916824764375
	.quad	89780018934106103
	.quad	-1241628181120052043
# x:
# n:
	.quad	-7182096992834026770
	.quad	7716537869241297781
	.quad	-7370603145260010004
	.quad	-57646878039522226
# y:
# n:
	.quad	1539618318084401995
	.quad	-2092177234416484053
	.quad	5191667415957934958
	.quad	130877355395965722
# x:
# n:
	.quad	-6136667279269773317
	.quad	-6153179999662179891
	.quad	3589710436910812287
	.quad	8768687024287394611
# y:
# n:
	.quad	1422786254264830221
	.quad	-677264229519313094
	.quad	2329914746604185779
	.quad	2476394856012302274
# x:
# n:
	.quad	-4273918360247239387
	.quad	5605757008597502557
	.quad	3501947093421592164
	.quad	3031734579305154006
# y:
# n:
	.quad	7576507450673463538
	.quad	1944154706203990919
	.quad	-265075897003749544
	.quad	3138591719693904937
# x:
# n:
	.quad	-7980197566474287287
	.quad	1644441225535432744
	.quad	1211419814632985489
	.quad	-2598345236447289534
# y:
# n:
	.quad	-8907094322968811148
	.quad	1438006844172945485
	.quad	-5311875870915868901
	.quad	6077974116022326814
# x:
# n:
	.quad	4838417663724013786
	.quad	-5020670434900317048
	.quad	-2431967808700642014
	.quad	3035121514120184320
# y:
# n:
	.quad	1278000480173638381
	.quad	-1529166639001719934
	.quad	-3453839144939607571
	.quad	1306297357685503102
# x:
# n:
	.quad	-1783336473216814258
	.quad	4392066358709138696
	.quad	-1005417839006233302
	.quad	-8156780213512053648
# y:
# n:
	.quad	2414906926407595836
	.quad	-8664996630313111049
	.quad	-6987270903260163964
	.quad	373200434918782927
# x:
# n:
	.quad	1174297723201118262
	.quad	-5089338341557713152
	.quad	615502815946211118
	.quad	-9030115805616734790
# y:
# n:
	.quad	8553821893399314352
	.quad	3949561331914752109
	.quad	-8452639400255260664
	.quad	-6050927182904067640
# x:
# n:
	.quad	-7900369290335149302
	.quad	2432775439348154854
	.quad	5562601751179833531
	.quad	-4345521585612472194
# y:
# n:
	.quad	6927279937098017855
	.quad	789805504799639395
	.quad	4351056484450457186
	.quad	4313707292190706807
# x:
# n:
	.quad	-307727245976111426
	.quad	-5139422590683849271
	.quad	2808116263718086058
	.quad	5287841111748036938
# y:
# n:
	.quad	-4253819580648839978
	.quad	-763208148938039114
	.quad	1819736662959528132
	.quad	-4533780405726250556
# x:
# n:
	.quad	7193987143293329453
	.quad	-6639030325262551168
	.quad	3449630856889048142
	.quad	-4576914006999673310
# y:
# n:
	.quad	-7683932624064724903
	.quad	-4186771601418939090
	.quad	-9135836484930242377
	.quad	-1873000390507748495
# x:
# n:
	.quad	-822127733677022621
	.quad	-9076644966102567733
	.quad	3452799117560258863
	.quad	3299153340159347369
# y:
# n:
	.quad	7256630177834534800
	.quad	-265804925218468457
	.quad	-26598582157805706
	.quad	9217570633783008238
# x:
# n:
	.quad	-161943732199804025
	.quad	-934516605245698126
	.quad	-6076155793609711098
	.quad	-6012938494348129154
# y:
# n:
	.quad	2761317207872024750
	.quad	-96761642107787419
	.quad	-6544632004074200614
	.quad	-6887037451176604238
# x:
# n:
	.quad	4365997386561785970
	.quad	4224609655389852305
	.quad	-2994556784113656673
	.quad	2360804745263749539
# y:
# n:
	.quad	-8014119425401551804
	.quad	-1969318500235243772
	.quad	1005107337206827993
	.quad	-2174126964165599951
# x:
# n:
	.quad	6581399706808866137
	.quad	-5627858400127404565
	.quad	3481101996057662158
	.quad	-2331926666487602695
# y:
# n:
	.quad	1476805707285966511
	.quad	-6639550720635973954
	.quad	-7916323385741995585
	.quad	2151744129725027754
# x:
# n:
	.quad	-2919130706471970136
	.quad	3414970562453693841
	.quad	9075461559195115495
	.quad	4634486875057517459
# y:
# n:
	.quad	-66461150170687238
	.quad	-1391462969502821478
	.quad	-6108852617034665677
	.quad	6380187788904339549
# x:
# n:
	.quad	7983876350690780986
	.quad	-5295573176536137553
	.quad	379723503700281313
	.quad	1297151739386362185
# y:
# n:
	.quad	-4474368293871995105
	.quad	7340772342093403203
	.quad	-2393341530529237889
	.quad	-2094191299381258130
# x:
# n:
	.quad	-2558862768406416483
	.quad	2866984880482406203
	.quad	7742180747610910372
	.quad	372128841060174645
# y:
# n:
	.quad	8866743585383159935
	.quad	-3736359254421736776
	.quad	-1024204742651493631
	.quad	7104978112945566027
# x:
# n:
	.quad	5138645116872878630
	.quad	1221129457145069626
	.quad	5383267903166692214
	.quad	2522027022875163423
# y:
# n:
	.quad	3806608566134805325
	.quad	2544004215077862749
	.quad	-9035072883827824737
	.quad	4234016633160738580
# x:
# n:
	.quad	-6928288258972105797
	.quad	-653399405849120864
	.quad	-6463186744022365580
	.quad	-9148306832085091583
# y:
# n:
	.quad	8786240514157993602
	.quad	4713158441018731514
	.quad	8798330179117591738
	.quad	-6053340486794960274
# x:
# n:
	.quad	2377334098777775685
	.quad	8886787448812043306
	.quad	-1024197150775641171
	.quad	-3620693400783700556
# y:
# n:
	.quad	5729221053265044223
	.quad	392650595211526930
	.quad	-9074795014787992437
	.quad	-7108376622130490122
# x:
# n:
	.quad	-8199136722032862036
	.quad	3680673368931833854
	.quad	-1886230570348953854
	.quad	2015609941778261558
# y:
# n:
	.quad	3624119302495535813
	.quad	294464531470939150
	.quad	138799401179154667
	.quad	-2207219440612763941
# x:
# n:
	.quad	347541067630215030
	.quad	3799107719620925858
	.quad	1881599705866961381
	.quad	-1924720608113246848
# y:
# n:
	.quad	-5841909159584334834
	.quad	-720052553423845794
	.quad	-5730361217149141414
	.quad	581032357178939025
# x:
# n:
	.quad	1105747919789776128
	.quad	-6789338978251671691
	.quad	-7989909919799072763
	.quad	8151348235539156363
# y:
# n:
	.quad	5421381059227994625
	.quad	-7476279356782508074
	.quad	-6688234733069914524
	.quad	654764310281364816
# x:
# n:
	.quad	-7042458295137808346
	.quad	8952855275298317171
	.quad	-6206305493291466863
	.quad	8528450980034041044
# y:
# n:
	.quad	-7055463561245444196
	.quad	-8703456866774433968
	.quad	2797103118749282027
	.quad	6215122722404016657
# x:
# n:
	.quad	1005546050792757529
	.quad	-3323835905516842679
	.quad	8330109661141946990
	.quad	-5292002385276459058
# y:
# n:
	.quad	-5528061924509339461
	.quad	-226135746280859624
	.quad	5183507557487622606
	.quad	6746876377630238277
# x:
# n:
	.quad	-1778776067317347690
	.quad	-5000992247420742694
	.quad	6602269123319108493
	.quad	-2770893586349274593
# y:
# n:
	.quad	8598068110531494016
	.quad	-8451218682981998440
	.quad	8788409238342699959
	.quad	5002477892563377265
# x:
# n:
	.quad	5933792881764128740
	.quad	4083048246564067967
	.quad	-9147662937953857709
	.quad	1264755391971913820
# y:
# n:
	.quad	-6313983107658637678
	.quad	-7119369699226181587
	.quad	2870701999142528074
	.quad	-6669271827135060696
# x:
# n:
	.quad	904438018112543600
	.quad	-7267133199761132739
	.quad	-1392876227396482890
	.quad	-3573382914814099612
# y:
# n:
	.quad	-1423350096337994104
	.quad	-8355355406800942220
	.quad	8853118528492208720
	.quad	-6326045493580430811
# x:
# n:
	.quad	-8800109998553268876
	.quad	482935817425616898
	.quad	-3275951186369728365
	.quad	8661761299727619805
# y:
# n:
	.quad	2275424905586385127
	.quad	-9027858371277192167
	.quad	6857181885731923811
	.quad	7124435089377643791
# x:
# n:
	.quad	-7781588850268474097
	.quad	-1519468685209962959
	.quad	6573082977915121606
	.quad	6755710023912135465
# y:
# n:
	.quad	1221521714151097722
	.quad	-282017558577669844
	.quad	-8062616354497306133
	.quad	-4861888846175086117
# x:
# n:
	.quad	3983478801462220394
	.quad	250236767772113758
	.quad	4551823352891210246
	.quad	4679579274989218629
# y:
# n:
	.quad	4651998540108251635
	.quad	6742162004755867488
	.quad	-5385884216881490007
	.quad	-5206077682175089246
# x:
# n:
	.quad	3930343994877055426
	.quad	4303750822715691606
	.quad	-2320415346932161926
	.quad	6607965318830554175
# y:
# n:
	.quad	6903371076639749541
	.quad	-5229915829686413659
	.quad	8256292406711373234
	.quad	4784789516168554062
# x:
# n:
	.quad	-8882146582266550221
	.quad	-5427541259903441747
	.quad	-7840115929271426396
	.quad	-4171280315484292511
# y:
# n:
	.quad	4015271008599232255
	.quad	6451391543170853764
	.quad	7648448350893730232
	.quad	-8576294123371711983
# x:
# n:
	.quad	-8147324388041841641
	.quad	2000802156480241393
	.quad	-7397826148153395775
	.quad	-1460933491720935317
# y:
# n:
	.quad	-144324229867357314
	.quad	-881177300149219205
	.quad	-8407174124032185854
	.quad	8622895891744136672
# x:
# n:
	.quad	-6282046442106414967
	.quad	-5690526905835035113
	.quad	2455086975577671148
	.quad	-199414824052357168
# y:
# n:
	.quad	-2376530917903668533
	.quad	-7389320395263407246
	.quad	523606379087170382
	.quad	6062985001905088212
# x:
# n:
	.quad	4920944817648945691
	.quad	4228242367571499274
	.quad	-4128167014581774528
	.quad	-9175304205870874428
# y:
# n:
	.quad	-88408055877253360
	.quad	-4386401162991231410
	.quad	-5039230724950155088
	.quad	1831976347890166549
# x:
# n:
	.quad	4806420249845929584
	.quad	7693007619054364936
	.quad	4290027642197140004
	.quad	4975899809612393123
# y:
# n:
	.quad	-7629038803201217961
	.quad	4978758953759960002
	.quad	-5749204630884153759
	.quad	-7562507713811042986
# x:
# n:
	.quad	7157087078772751795
	.quad	1324388282702494451
	.quad	-2916327371344412231
	.quad	7261333710130883034
# y:
# n:
	.quad	5037134160371230520
	.quad	-3014988782621874883
	.quad	8387487237203714326
	.quad	8844170667025670207
# x:
# n:
	.quad	-4487809984113720328
	.quad	812404099615315115
	.quad	8246764460746210829
	.quad	5085320289571381388
# y:
# n:
	.quad	7061215380499703683
	.quad	-2975233019158170069
	.quad	6824261152398947418
	.quad	6320375636322595115
# x:
# n:
	.quad	8953414272209954110
	.quad	-662607775245878948
	.quad	-4004404038385999585
	.quad	5842318419641347032
# y:
# n:
	.quad	-7287532870492043047
	.quad	-4575690902447226597
	.quad	-4976504215268846821
	.quad	337201702911978553
# x:
# n:
	.quad	-3985341542455563216
	.quad	1014947446036711215
	.quad	-5556899476794046871
	.quad	5399305001011486201
# y:
# n:
	.quad	708791321058022431
	.quad	7510141931547967443
	.quad	1245946253501175363
	.quad	661059474683481355
# x:
# n:
	.quad	-7586284693530185181
	.quad	778813229780678702
	.quad	4041644933769869783
	.quad	-8355365953224944183
# y:
# n:
	.quad	-1998377170894827782
	.quad	2348827046563973953
	.quad	-4595594690919621484
	.quad	-8292906400937163412
# x:
# n:
	.quad	-5931120363754776165
	.quad	-6320804507014201285
	.quad	5689434351480209912
	.quad	6236146459900934446
# y:
# n:
	.quad	7987667914742295164
	.quad	-2802040161833343024
	.quad	5321072147909200960
	.quad	8301457467322911972
# x:
# n:
	.quad	-622391681194414673
	.quad	-2430289033878000407
	.quad	7956156608788937179
	.quad	928924436447319426
# y:
# n:
	.quad	-5772767273196183318
	.quad	-7263156927018472073
	.quad	-3779048802098641204
	.quad	-4425078823435842763
# x:
# n:
	.quad	379874850661461233
	.quad	-8330608490321443479
	.quad	1408393444251643622
	.quad	-1578187731881286180
# y:
# n:
	.quad	-496519143747799285
	.quad	-673188356210225418
	.quad	-8728335892372486908
	.quad	-745421049183261901
# x:
# n:
	.quad	4598215308844983702
	.quad	2584102995417618618
	.quad	-4172158659877124364
	.quad	1866990989255815024
# y:
# n:
	.quad	-3260627677448528838
	.quad	-1115958910619151499
	.quad	8576849108314616605
	.quad	3495241078126294530
# x:
# n:
	.quad	2927636583349450390
	.quad	-2405430615064302844
	.quad	-7158654416301534348
	.quad	5289758137061885513
# y:
# n:
	.quad	-9147815055250559495
	.quad	-2654715441503372928
	.quad	4088691525757569846
	.quad	2969757771858300024
# x:
# n:
	.quad	7082039840061956953
	.quad	884281038688917204
	.quad	240149306715801429
	.quad	-3289768153822899354
# y:
# n:
	.quad	800988498086169883
	.quad	4895229567894450846
	.quad	4716240777305776379
	.quad	370704356398848305
# x:
# n:
	.quad	-6980142359484309426
	.quad	5709272075652920544
	.quad	-444868999945212499
	.quad	-5158015726317583049
# y:
# n:
	.quad	-7057076671609485680
	.quad	6304181825156169404
	.quad	-8552645254146648841
	.quad	5954010232348205238
# x:
# n:
	.quad	751261011280828977
	.quad	-9166488255390167768
	.quad	-1749143908491618184
	.quad	-7921102640769165836
# y:
# n:
	.quad	-3293185490346876863
	.quad	5018391606575944421
	.quad	8408165326449822756
	.quad	-7071416502275564939
# x:
# n:
	.quad	-9178953164351172784
	.quad	4644337533075013090
	.quad	-330705315050698447
	.quad	300060080048542203
# y:
# n:
	.quad	-2644227863872584686
	.quad	2583110342369306681
	.quad	-5273841852070548351
	.quad	6064494501762838105
# x:
# n:
	.quad	-2334033044750334448
	.quad	2185354585191332688
	.quad	-6779967461008017758
	.quad	-8550289753109035191
# y:
# n:
	.quad	6559002375312027653
	.quad	-8638598145224538678
	.quad	-4916472031909645930
	.quad	-6779043584541046405
# x:
# n:
	.quad	-9165852700402101969
	.quad	-8744889957649531304
	.quad	-4494985277003268384
	.quad	-3897611897229585162
# y:
# n:
	.quad	1018991466026012746
	.quad	-8027764267490162464
	.quad	4494805400219784803
	.quad	7528037919939214975
# x:
# n:
	.quad	8440225712045962355
	.quad	3249772934274385173
	.quad	-8705553922542143315
	.quad	-2596774739184675276
# y:
# n:
	.quad	7483764392328598159
	.quad	2827011076214931449
	.quad	68678948539231973
	.quad	1739244179838739305
# x:
# n:
	.quad	2203109264158354045
	.quad	5064037916075363667
	.quad	-731821720744212047
	.quad	-5678052331423942734
# y:
# n:
	.quad	-5919814186976287085
	.quad	-2265602614759294804
	.quad	5533998236839823081
	.quad	-2665038055468163802
# x:
# n:
	.quad	1276161094288313662
	.quad	-4934065744468415897
	.quad	-928993422597190931
	.quad	-2190822246370787870
# y:
# n:
	.quad	361328398326498999
	.quad	-7051509215655453711
	.quad	5522811544868813866
	.quad	-1666553843494169644
# x:
# n:
	.quad	6441603281632064085
	.quad	1793629943918161702
	.quad	1777692588341506940
	.quad	6863477856703268599
# y:
# n:
	.quad	-3041478613168286651
	.quad	3105750887672687574
	.quad	-4953272562010507344
	.quad	6747898200157466058
# x:
# n:
	.quad	6630493636035364293
	.quad	1696626370044969677
	.quad	-2771857594894007885
	.quad	2205818485600997558
# y:
# n:
	.quad	55341599344769752
	.quad	-3524579594552584896
	.quad	2396884536795338632
	.quad	-589096159129045626
# x:
# n:
	.quad	-2634944457408062277
	.quad	-3112559362603476380
	.quad	4970936003153976877
	.quad	8949493410208701639
# y:
# n:
	.quad	-8488765110552597516
	.quad	-319722505083557580
	.quad	741492135179753534
	.quad	9151362785775565044
# x:
# n:
	.quad	-6020424692933721685
	.quad	7225610168401827055
	.quad	-53444758804698614
	.quad	-2833118780210622885
# y:
# n:
	.quad	128377623084624087
	.quad	1039353156366881091
	.quad	-360545952550765516
	.quad	7968817153080653385
# x:
# n:
	.quad	-2602420930054573980
	.quad	9198422062839155648
	.quad	-1811399072904175460
	.quad	9067827327705311963
# y:
# n:
	.quad	886926722155822304
	.quad	-2610929424517093570
	.quad	-253835922872718872
	.quad	-7502358430828931446
# x:
# n:
	.quad	-4587943389810952166
	.quad	1563787466283807126
	.quad	-3487547615138519800
	.quad	4128182064489615009
# y:
# n:
	.quad	4111844834388445574
	.quad	1149914133335845177
	.quad	-3623531373496252780
	.quad	-1402618166100239840
# x:
# n:
	.quad	5919948928484838886
	.quad	-7172529412747060745
	.quad	-5518231509487298326
	.quad	-6659473352680518819
# y:
# n:
	.quad	26899780467000962
	.quad	-1829031742409667303
	.quad	-1588772912809594577
	.quad	-2442722905585284746
# x:
# n:
	.quad	-3264473194332626322
	.quad	1025205361761546811
	.quad	-7015457422522903272
	.quad	1330676642618241304
# y:
# n:
	.quad	7963684941981919417
	.quad	-6338238338277436628
	.quad	8619714927574902099
	.quad	-3569581188382196687
# x:
# n:
	.quad	4305829416476963696
	.quad	5052542948406124712
	.quad	1789810851634978573
	.quad	8968117954846407520
# y:
# n:
	.quad	8003933687977288662
	.quad	5097422087186621990
	.quad	704519468077989265
	.quad	-396942735228906165
# x:
# n:
	.quad	-3419302503970202999
	.quad	-7018537654113831723
	.quad	-6822424198184606776
	.quad	-6171658778539972813
# y:
# n:
	.quad	2593843622774366755
	.quad	-741366438314396818
	.quad	4915965114205765402
	.quad	-1059557131445970236
# x:
# n:
	.quad	2009477635561903628
	.quad	3584015528402925602
	.quad	5644292230900820871
	.quad	8304536408113290364
# y:
# n:
	.quad	-339352105269856224
	.quad	2287967489137556995
	.quad	5304714843888830679
	.quad	-7534585686765340292
# x:
# n:
	.quad	2380454536589384669
	.quad	-6523521853253893361
	.quad	2766765758716073240
	.quad	-2972558015589551603
# y:
# n:
	.quad	-5660163791328929627
	.quad	-8679820736713691163
	.quad	2953676707089248793
	.quad	-4920819033352375884
# x:
# n:
	.quad	960406440317438768
	.quad	-2118772592699784936
	.quad	77141353368412677
	.quad	-5501285159873207602
# y:
# n:
	.quad	-6051933596786859599
	.quad	-8659293265173995607
	.quad	2895844491257212041
	.quad	-4043015487163289306
# x:
# n:
	.quad	-448350213624201501
	.quad	2156725924464950392
	.quad	-2971142394612996105
	.quad	4052090360859384680
# y:
# n:
	.quad	7176435380031473232
	.quad	-3974996103109168227
	.quad	6434124200534795125
	.quad	-7980487017011206020
# x:
# n:
	.quad	7855093589078930624
	.quad	4132182815437639053
	.quad	-485167889371517022
	.quad	2154337296694011043
# y:
# n:
	.quad	-6377344897130315267
	.quad	-226382169273573087
	.quad	931825720312454840
	.quad	-888345361541745674
# x:
# n:
	.quad	8710464374555842285
	.quad	-8731529519522497872
	.quad	8380061435634658989
	.quad	8681789545482531565
# y:
# n:
	.quad	7074449172268729286
	.quad	7126319159263901790
	.quad	8116918171868634336
	.quad	-3003114242261998186
# x:
# n:
	.quad	919639745931654315
	.quad	2291601487489638238
	.quad	-8336168500278768123
	.quad	-754617386006064364
# y:
# n:
	.quad	-1188223961845600451
	.quad	-4549773888580694228
	.quad	7887983390286062263
	.quad	-165088812122154151
# x:
# n:
	.quad	9217557428692876838
	.quad	-4132553726720380225
	.quad	6069478194580603426
	.quad	8221983759226869894
# y:
# n:
	.quad	4089163893615671990
	.quad	-6120998323163356722
	.quad	960354655223064457
	.quad	-7711486679082625958
# x:
# n:
	.quad	7327558198218081390
	.quad	-5544501943846026901
	.quad	-2120138702503421013
	.quad	3014893480318684310
# y:
# n:
	.quad	-35810671974742119
	.quad	-1179443476349414273
	.quad	-2482998966105163918
	.quad	-6294437726231554666
# x:
# n:
	.quad	-6280604270880774034
	.quad	-7130514101981358628
	.quad	8428053468427297002
	.quad	3853978149483099957
# y:
# n:
	.quad	-7463369833146894870
	.quad	-1238372420545989617
	.quad	-8720656158479463859
	.quad	-8814371582518299505
# x:
# n:
	.quad	7054854633416321395
	.quad	-6341405558603610091
	.quad	-5668747119877029264
	.quad	8215827685494186386
# y:
# n:
	.quad	4678771983520455982
	.quad	-521428563970733120
	.quad	4463372345144066364
	.quad	9012076384803908162
# x:
# n:
	.quad	-338309021242405231
	.quad	3790576583384420652
	.quad	-8188322950074698969
	.quad	-6604057624368663430
# y:
# n:
	.quad	-4207592033478800268
	.quad	2416938416367255424
	.quad	-3622726100777428505
	.quad	7610781870778006589
# x:
# n:
	.quad	-4782931459629827087
	.quad	-4643508203525235409
	.quad	754029233144702080
	.quad	1040109357982262432
# y:
# n:
	.quad	-8175948592058851257
	.quad	-6228240707815130788
	.quad	-324077920562114482
	.quad	7493688225434568542
# x:
# n:
	.quad	-1811069612928636244
	.quad	5979376202181899445
	.quad	2177134480836210640
	.quad	-8605744382830206225
# y:
# n:
	.quad	6270292393581906230
	.quad	2790136697590789760
	.quad	-6571296030513622565
	.quad	4259180342332262911
# x:
# n:
	.quad	4705126765903184869
	.quad	-661894810402989653
	.quad	6082537469507351028
	.quad	-7003530077236718274
# y:
# n:
	.quad	-7322131431532324065
	.quad	-4594577965530478555
	.quad	8748525320753487277
	.quad	3269813105821574885
# x:
# n:
	.quad	2696823847962587024
	.quad	-1617438799177824171
	.quad	-7026404601603304431
	.quad	-6153933161288573080
# y:
# n:
	.quad	180646004445554402
	.quad	6859606979832410984
	.quad	2492273540979180489
	.quad	-6090803567880677839
# x:
# n:
	.quad	4780411932466537611
	.quad	-8708721286246636971
	.quad	2131076899935321200
	.quad	3489151818734076411
# y:
# n:
	.quad	8618959315941852571
	.quad	5850114355462695499
	.quad	6059295224079555748
	.quad	-3399831068200582262
# x:
# n:
	.quad	3937695073901312140
	.quad	-4529241534421622870
	.quad	-4329746116388816135
	.quad	3210734597685202844
# y:
# n:
	.quad	4880753208125248142
	.quad	-274853201132023911
	.quad	-2824195620656510331
	.quad	9068734696044859980
# x:
# n:
	.quad	7219199507927135741
	.quad	-3798169328695771489
	.quad	6263577864474809209
	.quad	5390783415512036963
# y:
# n:
	.quad	-4394283825740855242
	.quad	1155300743688756325
	.quad	-2453794650447519632
	.quad	-6496816499032078828
# x:
# n:
	.quad	3626605242156046211
	.quad	1139305260599554007
	.quad	4507201834659138130
	.quad	-598464968340666036
# y:
# n:
	.quad	4990971713945326023
	.quad	-4153821520658001605
	.quad	7925229389153490115
	.quad	-5103630152814920538
# x:
# n:
	.quad	4041461290074549130
	.quad	-6372789373082425540
	.quad	7623227441931045917
	.quad	2209027008426571025
# y:
# n:
	.quad	1141568403100720406
	.quad	-1469336729181770349
	.quad	-758229449174008036
	.quad	1327570424251732904
# x:
# n:
	.quad	-6996189256626897570
	.quad	-8527808804167094151
	.quad	6946697930086297979
	.quad	-1771411416964560784
# y:
# n:
	.quad	-3287144375436615416
	.quad	4295293124440637977
	.quad	-1549397324107098111
	.quad	7887481532841095705
# x:
# n:
	.quad	-3418167413256543336
	.quad	-1817184540215580975
	.quad	-1688565437603745759
	.quad	-4120308031487556574
# y:
# n:
	.quad	-6706881060083249159
	.quad	-500348999388648937
	.quad	-2322478924251553995
	.quad	3357173364252940452
# x:
# n:
	.quad	-8326204200382319908
	.quad	-1911032786135049985
	.quad	-1263018342781323332
	.quad	981695687221302635
# y:
# n:
	.quad	-8505329454373121688
	.quad	3282285357652349666
	.quad	8858868917995157584
	.quad	-7516661245927683040
# x:
# n:
	.quad	5029172516855359098
	.quad	-6649726795356509454
	.quad	-838964377175718667
	.quad	8684553585441729254
# y:
# n:
	.quad	-6704790973043092057
	.quad	-2483503716443678448
	.quad	1878455395554011169
	.quad	-7477757815598490111
# x:
# n:
	.quad	-2079018110852227139
	.quad	4856183938908391356
	.quad	8421373037743624041
	.quad	-377431749646473241
# y:
# n:
	.quad	-4097970777066287490
	.quad	-6074123314259885824
	.quad	-5704376312235637944
	.quad	-4220628955400031368
# x:
# n:
	.quad	7978839354362129108
	.quad	2732615040204632375
	.quad	-7259987118930967734
	.quad	-7001853864506463111
# y:
# n:
	.quad	2582441483642581861
	.quad	-6672689502993086308
	.quad	-8755202478336391781
	.quad	6813152558848728165
# x:
# n:
	.quad	8358910995491588852
	.quad	3463453835541037289
	.quad	-3974298863759825709
	.quad	7695229330084958623
# y:
# n:
	.quad	-8090902318138927309
	.quad	-3982631117587029867
	.quad	3497772684157709149
	.quad	-5230945215615688818
# x:
# n:
	.quad	2569958784085993038
	.quad	-5518459861937890622
	.quad	3766631413044282130
	.quad	1886891721366955493
# y:
# n:
	.quad	-4221104392789576614
	.quad	5955982929785488779
	.quad	1538671261108150703
	.quad	-3725802858031103941
# x:
# n:
	.quad	-3127314853780899284
	.quad	-7597597014192806549
	.quad	44361970582661180
	.quad	5757051315168740408
# y:
# n:
	.quad	-107449997121103932
	.quad	7703527298600965584
	.quad	8464971535940560757
	.quad	463284152805179588
# x:
# n:
	.quad	3068249322791963578
	.quad	-391347384013870618
	.quad	3523238880684200437
	.quad	528871788764993964
# y:
# n:
	.quad	5853888829841281104
	.quad	-1985714814420017884
	.quad	7143577874127272587
	.quad	5555476260752734336
# x:
# n:
	.quad	2847745781598015107
	.quad	-5450717107549287660
	.quad	-918821087456138664
	.quad	448448815857321177
# y:
# n:
	.quad	4872620075226534986
	.quad	-8671391463507797677
	.quad	658475180962067521
	.quad	8086915863904338236
# x:
# n:
	.quad	-2780872333548699667
	.quad	-7311550582456142980
	.quad	-8469772133226441249
	.quad	-329979884035911851
# y:
# n:
	.quad	8998330973935057364
	.quad	261443253644015024
	.quad	-7873890338000762014
	.quad	325383812708125376
# x:
# n:
	.quad	-1184607440670554702
	.quad	7151657396098291292
	.quad	-9008595776379144008
	.quad	3515010347523983397
# y:
# n:
	.quad	2223099187061809582
	.quad	8190598683465299148
	.quad	-6340208600530315480
	.quad	6253087130549271818
# x:
# n:
	.quad	-2247888775147779564
	.quad	-7576883607891784526
	.quad	-3296003684725849969
	.quad	1439643599766271869
# y:
# n:
	.quad	-7306958282954669840
	.quad	-4709909361598635060
	.quad	-1376974642476690907
	.quad	-1193784572933820142
# x:
# n:
	.quad	7431296941973000236
	.quad	-7415748983203780638
	.quad	8795054026916203819
	.quad	4760638015970784187
# y:
# n:
	.quad	3811611242318273765
	.quad	-4235872626897203215
	.quad	7837572133753097581
	.quad	-6796736702369130435
# x:
# n:
	.quad	3533039044926282987
	.quad	7682843115913464719
	.quad	540342504735695630
	.quad	-3296653446844036679
# y:
# n:
	.quad	6998933522752777890
	.quad	-4888414935009065457
	.quad	3079424961150386363
	.quad	6506813849396292371
# x:
# n:
	.quad	-3003598583927097894
	.quad	4044541737365061235
	.quad	2228847512356843432
	.quad	5060877187985057037
# y:
# n:
	.quad	-5965612517796680314
	.quad	8105360940611684209
	.quad	2220331536249120694
	.quad	2375353038609338016
# x:
# n:
	.quad	3115035191127819432
	.quad	-861663218213823462
	.quad	-7400965901672524995
	.quad	2412047461082714621
# y:
# n:
	.quad	3563853760577990038
	.quad	-5426448630430562737
	.quad	-8365684622358808378
	.quad	-1640921930003008697
# x:
# n:
	.quad	-4251080167289964981
	.quad	-3059539904556196382
	.quad	-1152366005156738154
	.quad	-1659717968932452899
# y:
# n:
	.quad	1997292084181461601
	.quad	3584915641920950040
	.quad	-9191745736628252320
	.quad	8089871125092359583
# x:
# n:
	.quad	6965347413020301632
	.quad	-1404712202863416529
	.quad	-5826757269884902207
	.quad	298064584769651935
# y:
# n:
	.quad	-7128303617360051666
	.quad	1736815738507045829
	.quad	-2173527543482270375
	.quad	5885697494764344221
# x:
# n:
	.quad	-5003892376911162098
	.quad	6008728022682645316
	.quad	-5680142733566923465
	.quad	-765392709735182093
# y:
# n:
	.quad	-5834882796164325217
	.quad	-170239408996397341
	.quad	8505083224226018320
	.quad	5313275896476496960
# x:
# n:
	.quad	1930741940155476550
	.quad	-607659576980660195
	.quad	-4262740372263597353
	.quad	-1313566822904972223
# y:
# n:
	.quad	744086322569282644
	.quad	-8055943115709283113
	.quad	-276785438229001767
	.quad	-1408065093907809359
# x:
# n:
	.quad	-4602895542782240507
	.quad	4376721796461562811
	.quad	-335546767005098233
	.quad	7453632720558943258
# y:
# n:
	.quad	-1003932233029738887
	.quad	2315148013342143301
	.quad	-9010879251522163524
	.quad	-1850694837565998140
# x:
# n:
	.quad	-6021341476196638517
	.quad	-4881441478237834235
	.quad	4867912740430600642
	.quad	7742762801134174133
# y:
# n:
	.quad	-8581958936826795031
	.quad	-1913777939576224179
	.quad	8659426160157739567
	.quad	598835841540406759
# x:
# n:
	.quad	-7053187443139993311
	.quad	1108047938470339459
	.quad	6936170617352538839
	.quad	6530751792509415624
# y:
# n:
	.quad	5476889345180813788
	.quad	-6551866159223821650
	.quad	1570280220791774932
	.quad	3622533132909532560
# x:
# n:
	.quad	2103736433701815206
	.quad	1044433032089549246
	.quad	-7770815445934200223
	.quad	-6321353316255758699
# y:
# n:
	.quad	9154059759494333738
	.quad	7895609010622066820
	.quad	-7899476047633668427
	.quad	-666643125672187669
# x:
# n:
	.quad	4337409412878843079
	.quad	7338843636413036261
	.quad	-6571060381656724452
	.quad	-415600716228120929
# y:
# n:
	.quad	4321336751297870724
	.quad	-9025109297158218835
	.quad	2379622205410963693
	.quad	-7643414508876746302
# x:
# n:
	.quad	-5215825422237883754
	.quad	-818244405225787907
	.quad	-135759826879198848
	.quad	-90813916333707963
# y:
# n:
	.quad	4701233704364266833
	.quad	8136726839908933150
	.quad	7331353580897042106
	.quad	-5133122373876432224
# x:
# n:
	.quad	8856827885965128350
	.quad	5363093374072260257
	.quad	-5819872022954929177
	.quad	-7104028515057535480
# y:
# n:
	.quad	-6987348115848046723
	.quad	-2709612963980043072
	.quad	-6990905116097818528
	.quad	-2797768871930728143
# x:
# n:
	.quad	2007946013693453666
	.quad	2897897424863515677
	.quad	-1713707115432147386
	.quad	-8120948025547582176
# y:
# n:
	.quad	6078485135899737710
	.quad	675335773426029111
	.quad	6522777850388551030
	.quad	4460541183017212024
# x:
# n:
	.quad	6006692885667567954
	.quad	-5798686317088655892
	.quad	-942382389672907003
	.quad	7868322985270553781
# y:
# n:
	.quad	7950560023575812891
	.quad	-166746807745982345
	.quad	-7268570433609843848
	.quad	-8276837831831042445
# x:
# n:
	.quad	-9198947735901315327
	.quad	3641955113385019817
	.quad	-5271183486110884192
	.quad	-2555482197744750321
# y:
# n:
	.quad	-3758050895365062931
	.quad	3102836381942174314
	.quad	-7856811118864071936
	.quad	5141644085110316943
# x:
# n:
	.quad	3783436278902868827
	.quad	-984974779016629937
	.quad	8335936537528092352
	.quad	-4071572478794469581
# y:
# n:
	.quad	2577948217805180944
	.quad	7931561847229953126
	.quad	-7568232677953832439
	.quad	-1427849461681762995
# x:
# n:
	.quad	8224594195640287939
	.quad	-2722845701865403091
	.quad	-7943996823478068212
	.quad	8301384854079629610
# y:
# n:
	.quad	5568307048441859716
	.quad	3637881263503545037
	.quad	-8064740041616393036
	.quad	-2088231020915699229
# x:
# n:
	.quad	2260143519760119330
	.quad	6664144966615408830
	.quad	-5089138072703047422
	.quad	2578282002520976283
# y:
# n:
	.quad	4998504601211318655
	.quad	-8996650148275309015
	.quad	-5041231198216387929
	.quad	-4874514429982041578
# x:
# n:
	.quad	6809159766078818963
	.quad	-7784947350976164654
	.quad	150877460962743372
	.quad	4886162001852765564
# y:
# n:
	.quad	502395920668007758
	.quad	4023477461223622962
	.quad	3708753274546617604
	.quad	2272920527103051264
# x:
# n:
	.quad	48159517554900574
	.quad	5222404088655034679
	.quad	8423336995239627743
	.quad	-8953280432163918348
# y:
# n:
	.quad	-3801593225161489492
	.quad	2828197680959068921
	.quad	5918785719195433637
	.quad	2985464897945626171
# x:
# n:
	.quad	-8870734246853580005
	.quad	4911812520349431897
	.quad	-2986103041319173054
	.quad	7401917014615484814
# y:
# n:
	.quad	-6169920828783546476
	.quad	-1258566399271500691
	.quad	-501084077761968238
	.quad	-5720560883127833011
# x:
# n:
	.quad	-4146305235706953481
	.quad	6713113878235066295
	.quad	2834323124445057310
	.quad	-97222692642574855
# y:
# n:
	.quad	3857009901802288454
	.quad	-7604662984409274129
	.quad	-5484588208365126516
	.quad	-9130371605049555319
# x:
# n:
	.quad	-6027969379302058498
	.quad	6064273256823168889
	.quad	-3551934365890680980
	.quad	-4822093784651356524
# y:
# n:
	.quad	-4174403941300191400
	.quad	-1303214994769551461
	.quad	6929456388804599731
	.quad	7445663291755067296
# x:
# n:
	.quad	9016427295767906205
	.quad	4128582139318946355
	.quad	437285184494751618
	.quad	-5512294805120511025
# y:
# n:
	.quad	6469764248370282053
	.quad	5883187590741198842
	.quad	-2989649089729523673
	.quad	-4662320971820718074
# x:
# n:
	.quad	2900607814067791338
	.quad	-8939377125568138511
	.quad	-6296793539942451096
	.quad	-4971926471771817850
# y:
# n:
	.quad	-4096174802420817189
	.quad	-8265646778843709557
	.quad	1758501552164725206
	.quad	5389231738206641970
# x:
# n:
	.quad	-8732255372686503252
	.quad	-7341360448998846618
	.quad	4447603345587683297
	.quad	8671600136361362001
# y:
# n:
	.quad	-252230441123283209
	.quad	4121197606643110337
	.quad	-984606405453889716
	.quad	8439841868361908748
# x:
# n:
	.quad	-4019343192897141421
	.quad	6650948892382721187
	.quad	1196678701706010320
	.quad	-3659056629665676315
# y:
# n:
	.quad	5161505450620708369
	.quad	7258802319409732166
	.quad	-8928331139498667751
	.quad	-5841411165302146533
# x:
# n:
	.quad	8034883304578962441
	.quad	3050965198292758653
	.quad	5619184836306044769
	.quad	-7720033505485573011
# y:
# n:
	.quad	-7130686481717730813
	.quad	-4586774911334171191
	.quad	4652665054328994791
	.quad	3631580514555458544
# x:
# n:
	.quad	-4520380100583490485
	.quad	9163076640424918666
	.quad	-8510010918245459428
	.quad	5987982593294813744
# y:
# n:
	.quad	7589173498605146282
	.quad	1843451573431095513
	.quad	2152552240220019645
	.quad	5004640969702276581
# x:
# n:
	.quad	5011582696385699389
	.quad	1826874142644912774
	.quad	-3457159354709866602
	.quad	4060382449734925969
# y:
# n:
	.quad	-779595048669777615
	.quad	-4251259943317421198
	.quad	-4836737933771806251
	.quad	6090089966407029893
# x:
# n:
	.quad	510731232619711571
	.quad	-5061334461952453491
	.quad	-7429659691637798905
	.quad	6435111507295268250
# y:
# n:
	.quad	5357313381886144746
	.quad	3236696879997859215
	.quad	-2256410231067909269
	.quad	132852704641544431
# x:
# n:
	.quad	-5150840304976005098
	.quad	2234786124904655554
	.quad	4326729977081596504
	.quad	-4685799426111783491
# y:
# n:
	.quad	-3722472848394666970
	.quad	4830341072890683884
	.quad	-5764842686696420072
	.quad	-7339937936025579343
# x:
# n:
	.quad	-5102930331817601454
	.quad	4517714765705645657
	.quad	6143739021815320309
	.quad	7142713393990633523
# y:
# n:
	.quad	-9050836630149654460
	.quad	-4907038094761048815
	.quad	6636058142036987275
	.quad	-4950250100097697582
# x:
# n:
	.quad	5572108359177865878
	.quad	5291940710909576577
	.quad	-6975399961049942372
	.quad	-5211101228153789944
# y:
# n:
	.quad	7300784787305270629
	.quad	-1456516619365460788
	.quad	-6781201047950709451
	.quad	4875062249488956764
# x:
# n:
	.quad	3211949018367803581
	.quad	-7953485792660265193
	.quad	2538892456625814061
	.quad	-6984894286785699936
# y:
# n:
	.quad	1229898317169632097
	.quad	-5541901573452251208
	.quad	-8669317498198155470
	.quad	-8842727067812740010
# x:
# n:
	.quad	-6595512465959086412
	.quad	-2674708830860392175
	.quad	-5114615700893985442
	.quad	8500752050723854312
# y:
# n:
	.quad	-5160651396454197635
	.quad	-3917122706011358554
	.quad	-6820082208435669214
	.quad	-8051156146694126715
# x:
# n:
	.quad	-9085559498337860408
	.quad	3557487542061438470
	.quad	-8654697830919770610
	.quad	3172215842819865950
# y:
# n:
	.quad	1533926444263576080
	.quad	4296695760535247033
	.quad	-8437197991819043152
	.quad	4196402895462648668
# x:
# n:
	.quad	-9006213670293366423
	.quad	-8006484230051030458
	.quad	5072827919747721243
	.quad	-3963317328231086898
# y:
# n:
	.quad	-2000674078945610666
	.quad	4601251461803807254
	.quad	-4588871253984369573
	.quad	2116863306524081798
# x:
# n:
	.quad	5877339849782265956
	.quad	-1418679698257195904
	.quad	-8579499860580579101
	.quad	-5539329325788967588
# y:
# n:
	.quad	2831208724761074403
	.quad	-865079470754771552
	.quad	4745523362125592438
	.quad	3196825510589877747
# x:
# n:
	.quad	-5818712997941196386
	.quad	924170598953274577
	.quad	7405716767174887409
	.quad	-3778453607799337640
# y:
# n:
	.quad	-7026793712664673350
	.quad	8651063255110241336
	.quad	3094253172905373056
	.quad	-8145218873661487480
# x:
# n:
	.quad	-3709959706404072986
	.quad	-636014624968398871
	.quad	9199084951171235561
	.quad	1916100247963299890
# y:
# n:
	.quad	269808565984546041
	.quad	1435403961948138917
	.quad	6285295426290935030
	.quad	3239333172755142361
# x:
# n:
	.quad	7610924414873384575
	.quad	3023112401376258302
	.quad	-2449781007931567425
	.quad	-2951884184616629111
# y:
# n:
	.quad	-5905840002043930082
	.quad	-5177179544336123733
	.quad	-6819046964389132585
	.quad	-353757399933896328
# x:
# n:
	.quad	2543706317949075782
	.quad	-8072097828027718811
	.quad	-8549532091091923437
	.quad	1285866433185648375
# y:
# n:
	.quad	-212816313579458929
	.quad	7577618712617349734
	.quad	-5829402089677356308
	.quad	230073867823337011
# x:
# n:
	.quad	7435709988179489442
	.quad	-810739460472465424
	.quad	-8829225380558021244
	.quad	8995381711251452833
# y:
# n:
	.quad	8426106840267215728
	.quad	-3061929173512698318
	.quad	-2188234710710828745
	.quad	7996948769276237810
# x:
# n:
	.quad	-3931606829352816297
	.quad	696419923697095014
	.quad	681356994766888624
	.quad	-4791090203114000820
# y:
# n:
	.quad	-5738189960360277307
	.quad	8413837135496290286
	.quad	6486391546080639613
	.quad	6060949319122235933
# x:
# n:
	.quad	300658832705165892
	.quad	1701392907379356124
	.quad	-1320245768414731511
	.quad	8032099306658411712
# y:
# n:
	.quad	8684026020962344302
	.quad	-969168849649393954
	.quad	9119484765324404548
	.quad	7361227027444815850
# x:
# n:
	.quad	-1467018221964107436
	.quad	-6505771631231049532
	.quad	6567214284497406616
	.quad	-928526759810617745
# y:
# n:
	.quad	6174196424902801502
	.quad	1356730291258301537
	.quad	-8946663967363774038
	.quad	-2072198451642145687
# x:
# n:
	.quad	6089920451282660019
	.quad	3316626872615108644
	.quad	8721851009924728979
	.quad	-4545755282241736505
# y:
# n:
	.quad	2353305582975058754
	.quad	381998038269338554
	.quad	5181833879166331382
	.quad	-791122328002251080
# x:
# n:
	.quad	-7022420624175661837
	.quad	4465021215359238727
	.quad	-3271394741463174269
	.quad	2568906323996328343
# y:
# n:
	.quad	920018110823874271
	.quad	-5161882490833846227
	.quad	-5775406527056684712
	.quad	4247626980215992526
# x:
# n:
	.quad	-5971976351348518
	.quad	-2110422816844033265
	.quad	8367694592843695289
	.quad	-6018734768986650946
# y:
# n:
	.quad	7620954918159663993
	.quad	3033730218514972756
	.quad	-7935775192420244917
	.quad	2865589941315519183
# x:
# n:
	.quad	-3596576243137836476
	.quad	-1116661704237885498
	.quad	-4507057766959364757
	.quad	-5519778951819648191
# y:
# n:
	.quad	-3266165249144467708
	.quad	459524990781720969
	.quad	-3169303293536281148
	.quad	-1767322153485441743
# x:
# n:
	.quad	1807108307132750404
	.quad	-647854116058115690
	.quad	4190048303364993177
	.quad	-5821640106781242261
# y:
# n:
	.quad	5096427296300276527
	.quad	-9066756455116143730
	.quad	1108613609521450882
	.quad	-5297038208189077138
# x:
# n:
	.quad	-4843382672412809187
	.quad	-8934411082872087730
	.quad	6765467186788306153
	.quad	1743317236275647586
# y:
# n:
	.quad	-8445652078726687010
	.quad	8783986543409771665
	.quad	-1873636777153837415
	.quad	-6811677662159896351
# x:
# n:
	.quad	-8340654528615269960
	.quad	1015759422365275677
	.quad	6697151054225492742
	.quad	5484740402788777550
# y:
# n:
	.quad	6508572278468154747
	.quad	-7167331915737559200
	.quad	-2782932172367535297
	.quad	-3722265956627261755
# x:
# n:
	.quad	-7647172734076412184
	.quad	-8864760017465439510
	.quad	1728812601895474100
	.quad	-1083645375213988508
# y:
# n:
	.quad	-6509105917885647017
	.quad	-2929836481022166674
	.quad	2041402338774253865
	.quad	5408234401427112986
# x:
# n:
	.quad	6746686057012109346
	.quad	-5424142637442228301
	.quad	-6658156065848475919
	.quad	-8870757998811258052
# y:
# n:
	.quad	-8887154002743463988
	.quad	7768448120262344645
	.quad	470139062170393148
	.quad	7228598605803438507
# x:
# n:
	.quad	1651300247262466090
	.quad	-7496765031965214545
	.quad	1984754381491202416
	.quad	-6408613809191879813
# y:
# n:
	.quad	8638051671490273881
	.quad	-2287699779689408217
	.quad	125492870552211469
	.quad	-7997380246724486167
# x:
# n:
	.quad	-3241054166440204973
	.quad	2409523149805597661
	.quad	-1191835139643260612
	.quad	3419018817486902984
# y:
# n:
	.quad	-5942949019065255528
	.quad	627160413865596975
	.quad	-5036687580590894502
	.quad	-8771592068812726685
# x:
# n:
	.quad	3362410809362926711
	.quad	-4532052935830589117
	.quad	-1049442959100549330
	.quad	693288556635793689
# y:
# n:
	.quad	7068943632433493629
	.quad	-4157942178363118464
	.quad	8400941617468571369
	.quad	4896792334364074078
# x:
# n:
	.quad	-3234616823888700780
	.quad	-4554217794471289549
	.quad	-1310904764639662036
	.quad	1945327576462549925
# y:
# n:
	.quad	9153025553736265798
	.quad	-7308068969954129816
	.quad	5247691606837731450
	.quad	-8848502559965903815
# x:
# n:
	.quad	7380643464578106669
	.quad	6339267731262177170
	.quad	4838902270483676764
	.quad	5345206308668708359
# y:
# n:
	.quad	-4663997314831099468
	.quad	6335286700392529725
	.quad	7142779092819303994
	.quad	-7668764843282999557
# x:
# n:
	.quad	4059065988281974325
	.quad	-7611885322844751055
	.quad	-7762507017935076606
	.quad	6468753298026459956
# y:
# n:
	.quad	1632852627119344100
	.quad	2970385297123796607
	.quad	4632236047442606975
	.quad	4675434871851507323
# x:
# n:
	.quad	-1135801360181505755
	.quad	6965913738544661960
	.quad	6217508156157643795
	.quad	6272325502678664673
# y:
# n:
	.quad	-3577061256711965243
	.quad	8597436807253199941
	.quad	-9007654564951153001
	.quad	6178928964979339333
# x:
# n:
	.quad	7098717518615817956
	.quad	-5866182859687447080
	.quad	7070363790551957554
	.quad	-4792485958695197469
# y:
# n:
	.quad	2557966671762881286
	.quad	-2824378670683099761
	.quad	1817034184910229861
	.quad	-4088093356100378854
# x:
# n:
	.quad	-5632141088934869412
	.quad	-8414714289215994278
	.quad	8184705831690755982
	.quad	-6376918685528598019
# y:
# n:
	.quad	3573034919944643740
	.quad	6008683526811960914
	.quad	-7044622246940703578
	.quad	-519807098719080059
# x:
# n:
	.quad	-8741250506438851606
	.quad	1488792907441843089
	.quad	9196319304697790720
	.quad	-1104715956761857721
# y:
# n:
	.quad	-5295638750340635484
	.quad	7869584005398136468
	.quad	-6362021011715381332
	.quad	2556473071454162691
# x:
# n:
	.quad	1603244293086887722
	.quad	2321420319491414841
	.quad	6147201757104440474
	.quad	4042097339971842392
# y:
# n:
	.quad	4913201723975943112
	.quad	-466462628703165658
	.quad	4709922933979901268
	.quad	760246618887725706
# x:
# n:
	.quad	-5098758543403632051
	.quad	-3466501056383804650
	.quad	3466605469098861155
	.quad	-6126804332348682474
# y:
# n:
	.quad	762466040484431065
	.quad	-4601269335988328326
	.quad	-8775708915065491703
	.quad	9086122399297969553
# x:
# n:
	.quad	-4145536404906473862
	.quad	-775355572187134724
	.quad	-3518174588832658615
	.quad	1336305174610129398
# y:
# n:
	.quad	5950716720588559497
	.quad	-5015336277659707002
	.quad	1100284569066564562
	.quad	-284309813195551718
# x:
# n:
	.quad	442883540475650530
	.quad	-6715048621898997089
	.quad	-1629072947759167948
	.quad	8952500880969156790
# y:
# n:
	.quad	-5486101015419713174
	.quad	-5482592228678408306
	.quad	1581158205394852497
	.quad	-6793540177819233455
# x:
# n:
	.quad	7973265747085103812
	.quad	8458406136511028525
	.quad	2385584690435826091
	.quad	6961821903451832750
# y:
# n:
	.quad	5943572244652087228
	.quad	-1317922565315064762
	.quad	5404453037909917416
	.quad	7325019384451420299
# x:
# n:
	.quad	5695096082736848145
	.quad	-5769474504414595953
	.quad	6910747933734747512
	.quad	7572016498855285254
# y:
# n:
	.quad	6427785950260769371
	.quad	-6906315138868372826
	.quad	6928381706218420481
	.quad	3169057172321476627
# x:
# n:
	.quad	-8383718594417307975
	.quad	-1329193876457397192
	.quad	2810580072115542910
	.quad	-1841010729458339704
# y:
# n:
	.quad	8838497445944783343
	.quad	1992026722916472398
	.quad	646889115121398997
	.quad	6528854214782037524
# x:
# n:
	.quad	-1271633722310413996
	.quad	-1011387565305945764
	.quad	7968135068158721586
	.quad	1026545657460537817
# y:
# n:
	.quad	3378039979519279123
	.quad	5102410410540339555
	.quad	1175962162262157073
	.quad	5132026820542601199
# x:
# n:
	.quad	446060675301377623
	.quad	-120895498444692984
	.quad	-2385126533915784003
	.quad	-5403164791570467798
# y:
# n:
	.quad	5666055660387937623
	.quad	2962640622242695039
	.quad	8516820264949648316
	.quad	5665551876208571105
# x:
# n:
	.quad	-213143699529311530
	.quad	-2323965167603390027
	.quad	-6920018932895304315
	.quad	-1925786952255106823
# y:
# n:
	.quad	2092745336687452077
	.quad	3252395460447400396
	.quad	-7467656173778149939
	.quad	-4233236466946868582
# x:
# n:
	.quad	-1955482199474371562
	.quad	-7771505130605602114
	.quad	3050932498271011682
	.quad	1174052982339917607
# y:
# n:
	.quad	-8041409922362758035
	.quad	7644276885970571921
	.quad	-2158518798128938724
	.quad	-1463538723166368102
# x:
# n:
	.quad	-2910909844991452558
	.quad	-240120330090427657
	.quad	3674071665383901486
	.quad	1628510692850665467
# y:
# n:
	.quad	796042993324790019
	.quad	5301520582429158928
	.quad	-7178076187848648013
	.quad	-3462800557724560999
# x:
# n:
	.quad	-8792853550427512455
	.quad	-8543566780315993767
	.quad	5445732872646818914
	.quad	1431937716926479778
# y:
# n:
	.quad	8286560906987973236
	.quad	-2822896109425131548
	.quad	8421181584417292136
	.quad	2135622908767956107
# x:
# n:
	.quad	-2875858820071608835
	.quad	-1608164321209168699
	.quad	-3194609813187650842
	.quad	3319175367037421810
# y:
# n:
	.quad	3195002081726782360
	.quad	-7403353609714434092
	.quad	-6634595799991387161
	.quad	-3652842293665282272
# x:
# n:
	.quad	-4490828231072739135
	.quad	6713644924970475760
	.quad	-6363555669794624891
	.quad	-5752949147944085076
# y:
# n:
	.quad	-5635281519457198831
	.quad	-7533952429935311339
	.quad	-2020914821322458922
	.quad	1814042254423633310
# x:
# n:
	.quad	2056957635550135887
	.quad	-6370862172172081013
	.quad	-188354986238921381
	.quad	-459055616099969388
# y:
# n:
	.quad	-5976200472316001315
	.quad	8500728597369708316
	.quad	-8278493073255513746
	.quad	-8317692899372953609
# x:
# n:
	.quad	993825634392138354
	.quad	9007228529574391988
	.quad	-8288652977381921428
	.quad	-2817578008417525414
# y:
# n:
	.quad	6149044674598581121
	.quad	-3857843457756803204
	.quad	-1927626021710405706
	.quad	-1904019165649805173
# x:
# n:
	.quad	-6039062987243772317
	.quad	-22172577801278981
	.quad	7998311906640940738
	.quad	-4406811176031804952
# y:
# n:
	.quad	-9206619816049676123
	.quad	1878494608529772747
	.quad	-457390285283637555
	.quad	-8308569577664588999
# x:
# n:
	.quad	-1731231872598872027
	.quad	-659935994139330594
	.quad	-4684558954177651562
	.quad	-4957260354750743303
# y:
# n:
	.quad	9110831230389745723
	.quad	7174799596368911092
	.quad	9048315881441818685
	.quad	-4468174623473859670
# x:
# n:
	.quad	2659478389809125867
	.quad	-456739983656192678
	.quad	2912393584061899049
	.quad	1329060552272409791
# y:
# n:
	.quad	6203475272958495296
	.quad	-7961850225203317958
	.quad	9034159682922840835
	.quad	1322092753610666685
# x:
# n:
	.quad	-1852785963772640669
	.quad	2052353116425521986
	.quad	-3685939014869201226
	.quad	8513857885817397843
# y:
# n:
	.quad	1992885160938130938
	.quad	-4421734116854995795
	.quad	-5671019827964392176
	.quad	947508437311210382
# x:
# n:
	.quad	4200227455280005848
	.quad	3678595869299338004
	.quad	-3174379558089221128
	.quad	-8250381818045432199
# y:
# n:
	.quad	6494148411319638579
	.quad	-65783970605577629
	.quad	-5894842299184250292
	.quad	-8728689736522450299
# x:
# n:
	.quad	3860041186649858671
	.quad	6569574396886707271
	.quad	3925947231857167426
	.quad	4908472261763156281
# y:
# n:
	.quad	-2700037136897788557
	.quad	5439648380543425969
	.quad	8913861624919649359
	.quad	4445913260895948507
# x:
# n:
	.quad	-6786569689095197816
	.quad	5311151166849296317
	.quad	-3270186022230804424
	.quad	1213881129456933107
# y:
# n:
	.quad	6025029080674268213
	.quad	8616541966490077502
	.quad	-6619228185216903207
	.quad	1576045661057332733
# x:
# n:
	.quad	360128219972170446
	.quad	1007571045682930896
	.quad	7765587322078014198
	.quad	4134549243483498864
# y:
# n:
	.quad	8251712487273850547
	.quad	8711234147122275609
	.quad	-6987051066187179393
	.quad	4384375176772874360
# x:
# n:
	.quad	-7616365424353134376
	.quad	-6086592315693275089
	.quad	1446862654937408309
	.quad	-6775181033557063079
# y:
# n:
	.quad	3437672584064896362
	.quad	-3999080516474803380
	.quad	-8871499656189634589
	.quad	-2497744892822878512
# x:
# n:
	.quad	-8822574616042693150
	.quad	7107245841168678602
	.quad	9026375241003208922
	.quad	1714668755680701330
# y:
# n:
	.quad	-5702941520780113739
	.quad	-4765415067680121465
	.quad	-5716153601061485408
	.quad	8210933284521516951
# x:
# n:
	.quad	2885277639693582594
	.quad	-4087222252356531895
	.quad	7243134210595502624
	.quad	1215263953759048406
# y:
# n:
	.quad	4043157044553614700
	.quad	-616720820148315937
	.quad	4837222249213816831
	.quad	1595605938058640199
# x:
# n:
	.quad	8384361608493041817
	.quad	5826402031452141092
	.quad	4886178122874081897
	.quad	9136710520510633677
# y:
# n:
	.quad	2000637619347463925
	.quad	2268074488477423420
	.quad	4879433203460119394
	.quad	265179652526592742
# x:
# n:
	.quad	2343186075744764538
	.quad	5518232273462276712
	.quad	1498039276157945199
	.quad	-757296704775224457
# y:
# n:
	.quad	6349947289128516739
	.quad	3910510168774381577
	.quad	561504612134338860
	.quad	3196345099658529207
# x:
# n:
	.quad	1318247585125748838
	.quad	6686786307264640293
	.quad	-5085383321695599841
	.quad	8399315157797744323
# y:
# n:
	.quad	-4333652163461126031
	.quad	4184482550360211494
	.quad	-8905493397158503245
	.quad	9018135461556178791
# x:
# n:
	.quad	-2622115086903341841
	.quad	-1703607263568151605
	.quad	-4977844948089940444
	.quad	5623713246328582399
# y:
# n:
	.quad	-3181287058615739376
	.quad	1865407841246397660
	.quad	3754268672973825753
	.quad	623838862148911398
# x:
# n:
	.quad	1231127686659134640
	.quad	2509267362509015635
	.quad	8394290914688530956
	.quad	-856859646953746125
# y:
# n:
	.quad	2989432936275398563
	.quad	-4835822410361137471
	.quad	-4216883592647765081
	.quad	-8749221016958113669
# x:
# n:
	.quad	916962445485154630
	.quad	1527021320755300934
	.quad	151308612130408617
	.quad	-3589844329114178998
# y:
# n:
	.quad	-3125872655894485783
	.quad	-6687259577938595766
	.quad	2598009689031630749
	.quad	6670015301242106512
# x:
# n:
	.quad	-6583135128768546961
	.quad	4658280604440926810
	.quad	3572533572981628812
	.quad	-7904008749067892271
# y:
# n:
	.quad	-4038162391421949426
	.quad	5062057179703886252
	.quad	1497881089697661868
	.quad	-8287774868851172874
# x:
# n:
	.quad	-3687572058066559137
	.quad	-5621559913885245688
	.quad	652672523625265682
	.quad	-6946708442791619795
# y:
# n:
	.quad	5989237976183255848
	.quad	5317266818870266070
	.quad	-4623588622346744969
	.quad	-23023371710217146
# x:
# n:
	.quad	1347084423033235686
	.quad	-7935389181602645243
	.quad	3091705789937746384
	.quad	-5417163212661532862
# y:
# n:
	.quad	-5084100156524934474
	.quad	100748183012071444
	.quad	8224188954939783648
	.quad	-8497175202859803796
# x:
# n:
	.quad	4255143266766961791
	.quad	-5026274712608798490
	.quad	7813080120998075867
	.quad	9172955003509396066
# y:
# n:
	.quad	-7995109879003996209
	.quad	-5395024050614199622
	.quad	2603435597599156452
	.quad	8431979632888339879
# x:
# n:
	.quad	8141463685167834308
	.quad	-996377180938413545
	.quad	-5560470687672459355
	.quad	7490725399024401972
# y:
# n:
	.quad	5723220539474098034
	.quad	-5786720993596956286
	.quad	1621996936728697118
	.quad	8093027457662756477
# x:
# n:
	.quad	2069820100843755667
	.quad	9005402820188758770
	.quad	-353088084397189019
	.quad	2031335282341619533
# y:
# n:
	.quad	-2147195162562174371
	.quad	1598348812469568794
	.quad	-8978571498472783899
	.quad	3974680119097950733
# x:
# n:
	.quad	151413972722999319
	.quad	8461579394706434980
	.quad	-5950712451501821695
	.quad	978081707557382481
# y:
# n:
	.quad	6741655375240835294
	.quad	821336219980487249
	.quad	-6657897136406025278
	.quad	-270871854914980099
# x:
# n:
	.quad	5381261753609977571
	.quad	-6116590294276132318
	.quad	4390109862486103462
	.quad	4279093370216637574
# y:
# n:
	.quad	-8112981885871957799
	.quad	-8349897076899729661
	.quad	-7451669296558312176
	.quad	-2019997687006591392
# x:
# n:
	.quad	5628128421077273068
	.quad	-2696651411361911704
	.quad	-5491115156313231943
	.quad	-4127802998882516659
# y:
# n:
	.quad	-8721434459860311207
	.quad	-2568532247070329976
	.quad	1958047877687098975
	.quad	-812917004125762507
# x:
# n:
	.quad	8698928951231608731
	.quad	6329859781216383654
	.quad	-2296086874407858911
	.quad	-4430295570872941306
# y:
# n:
	.quad	6388505583453643350
	.quad	-7319891632905079902
	.quad	4561461202495401513
	.quad	-3079586653373644417
# x:
# n:
	.quad	-8365014591922332728
	.quad	134550534021876138
	.quad	8370892526160550068
	.quad	8916605135937439666
# y:
# n:
	.quad	-3474944595148045573
	.quad	895577538768185765
	.quad	-1927592537263234680
	.quad	-2326665791466789836
# x:
# n:
	.quad	-8657179874396256613
	.quad	-812099641688692078
	.quad	722138847507821647
	.quad	-9103693267904740477
# y:
# n:
	.quad	-8029280129897628622
	.quad	-7935651456056466673
	.quad	5413409380650493271
	.quad	3558863869747309888
# x:
# n:
	.quad	-4440024795970724485
	.quad	-6919429968932429522
	.quad	-8479374270370619466
	.quad	-7047973634041556160
# y:
# n:
	.quad	1950098033061879078
	.quad	-5061945090344761516
	.quad	-3740138209596351979
	.quad	-6082717111349774487
# x:
# n:
	.quad	-139706760215941401
	.quad	-8606664834337651976
	.quad	385586801409433060
	.quad	69577068205074209
# y:
# n:
	.quad	8749895988771480640
	.quad	3520693140239155915
	.quad	-3534422107236595732
	.quad	-2653076751542332560
# x:
# n:
	.quad	6919800040677652425
	.quad	6216730189850169231
	.quad	-8453422747182817139
	.quad	7477192317051101637
# y:
# n:
	.quad	-5286801690168423414
	.quad	-1202576104721133723
	.quad	1287123271250825123
	.quad	-3028571936685445406
# x:
# n:
	.quad	-984302547827737298
	.quad	2136987363109463370
	.quad	3284697621364123672
	.quad	-5735156413074495749
# y:
# n:
	.quad	7506111581599371019
	.quad	-1343369663796443866
	.quad	3603692554342082988
	.quad	-7121931423640774613
# x:
# n:
	.quad	88536508864007216
	.quad	-8435180259251093837
	.quad	8507040023886212698
	.quad	-2072499798845341136
# y:
# n:
	.quad	-5400155424315165199
	.quad	-7404461189687034086
	.quad	683235045036606792
	.quad	-6005554134876200877
# x:
# n:
	.quad	6115413540823837924
	.quad	1221521192017265244
	.quad	8196913320476284604
	.quad	8643550593181313667
# y:
# n:
	.quad	-7603342482944999850
	.quad	-1480663429288979233
	.quad	-2982817855555541174
	.quad	7026046409826941028
# x:
# n:
	.quad	2286297050191525623
	.quad	7589848925519721557
	.quad	682792336323725707
	.quad	-3392365447001402288
# y:
# n:
	.quad	4302987736178934518
	.quad	-3675762724882185560
	.quad	-3776356758784290155
	.quad	-3386809083169945269
# x:
# n:
	.quad	954229823157092587
	.quad	3093938031746741508
	.quad	-9107039905847953687
	.quad	3450327515396257619
# y:
# n:
	.quad	4546712444343072914
	.quad	-5392281282282416961
	.quad	-427946557622159594
	.quad	2875115434114394480
# x:
# n:
	.quad	-4871600380920125907
	.quad	2032097630166247022
	.quad	-1213658999804177280
	.quad	-7719251407808791131
# y:
# n:
	.quad	-3165640035236019675
	.quad	5131490308798049373
	.quad	-2671605816050321539
	.quad	5759460237940473483
# x:
# n:
	.quad	-1309433791698301706
	.quad	-5775021708325409131
	.quad	1691922194529903349
	.quad	-6911762922488711636
# y:
# n:
	.quad	9166513498600950284
	.quad	7488298105361782972
	.quad	3349905139676834252
	.quad	-4027343877882785098
# x:
# n:
	.quad	-724613487959885458
	.quad	-4524064716293216651
	.quad	1369957181108943418
	.quad	-7927032877183023950
# y:
# n:
	.quad	2595245999343360581
	.quad	-6403293633931206202
	.quad	8593871818190485115
	.quad	-940557494838953217
# x:
# n:
	.quad	8959383066553120763
	.quad	-6107934190366274811
	.quad	-6720908813945812634
	.quad	437896146470082353
# y:
# n:
	.quad	-8925429698627951782
	.quad	765977317224345632
	.quad	-8896243643620505092
	.quad	2501249970291038389
# x:
# n:
	.quad	1291755806549592966
	.quad	-5435795192206365066
	.quad	-8276823509616697782
	.quad	7292323822101825512
# y:
# n:
	.quad	5748023088346852939
	.quad	-2297188639560096637
	.quad	-6563797699544555193
	.quad	-5012211728874848047
# x:
# n:
	.quad	3522695110873553303
	.quad	5723872882445974161
	.quad	-1979483611972018255
	.quad	8888609674659743851
# y:
# n:
	.quad	2103891266590190061
	.quad	-8855611241672903161
	.quad	5525949492856153098
	.quad	792016094682766653
# x:
# n:
	.quad	-4558620449840820756
	.quad	9009870680639068305
	.quad	5890005847062575190
	.quad	-4905161680328468464
# y:
# n:
	.quad	3584437623299836590
	.quad	6232483172132556737
	.quad	5299837587126099225
	.quad	2493773623415448780
# x:
# n:
	.quad	8620397813046938907
	.quad	-8397728993710649890
	.quad	2038960915650250658
	.quad	2037142923129916684
# y:
# n:
	.quad	-981515991002288400
	.quad	-7358889564929708519
	.quad	-4824687969548958019
	.quad	-5145535856984514706
# x:
# n:
	.quad	-1236202314033937536
	.quad	7533387233883969115
	.quad	-2946513951443488459
	.quad	-6202033897073707962
# y:
# n:
	.quad	5301539723339337631
	.quad	-9069324523050065473
	.quad	3938317616987925111
	.quad	-7340613875387613616
# x:
# n:
	.quad	-3089852596465849628
	.quad	2044235760843530115
	.quad	4856101210904383457
	.quad	16833684845805011
# y:
# n:
	.quad	4511111936211164242
	.quad	-4902202029019640828
	.quad	5564105076222799122
	.quad	-3468904710428854796
# x:
# n:
	.quad	-4540446606635004261
	.quad	-5245277632273868296
	.quad	1087996234820202666
	.quad	6255665994788671244
# y:
# n:
	.quad	-788773660477703921
	.quad	7808960312690619371
	.quad	8205154285367834897
	.quad	-3013436802329696582
# x:
# n:
	.quad	-3926544796851264643
	.quad	5410858430465694641
	.quad	-1045976019768935580
	.quad	-8081560112345140984
# y:
# n:
	.quad	4814611621535506369
	.quad	-5626266957608225819
	.quad	6006689605669289556
	.quad	8875818863861815359
# x:
# n:
	.quad	206585561589700746
	.quad	-2835987263639374218
	.quad	8716463810231156264
	.quad	7220145650274800396
# y:
# n:
	.quad	4732233146685409885
	.quad	7155718312134863215
	.quad	6531488553387292799
	.quad	-6980212397119009814
# x:
# n:
	.quad	-6676985124512554141
	.quad	5433642928156781679
	.quad	5634634880848218630
	.quad	7776893161680860715
# y:
# n:
	.quad	-285493755866655983
	.quad	-8732096826484635849
	.quad	8457539509375380607
	.quad	-8267660944187326394
# x:
# n:
	.quad	-8496863937895128945
	.quad	-6807226773253643907
	.quad	-429188247720171653
	.quad	-2177272182496058585
# y:
# n:
	.quad	-3704825137106017897
	.quad	-1817253848924852384
	.quad	805377949090736316
	.quad	8927154281116312429
# x:
# n:
	.quad	-428238819464107940
	.quad	4936850421021775404
	.quad	3520203748550456509
	.quad	-7020410582939637671
# y:
# n:
	.quad	1264408042385755905
	.quad	-2373542791286879846
	.quad	-3000105789628443537
	.quad	-3775382534026542057
# x:
# n:
	.quad	1176601843618953032
	.quad	6590751260090441352
	.quad	5183175199156885075
	.quad	-218003439059503139
# y:
# n:
	.quad	-3657812785971128228
	.quad	7469863550483603686
	.quad	433808243288876912
	.quad	423111346412516504
# x:
# n:
	.quad	4041402639141444392
	.quad	8846455873753629881
	.quad	3001050237359506663
	.quad	-535315714829859713
# y:
# n:
	.quad	-7919302557681050270
	.quad	2616765775585626173
	.quad	-4616338680319639495
	.quad	-7820543920226533469
# x:
# n:
	.quad	-1342277944897138296
	.quad	3809969949704791887
	.quad	-1595943775210045172
	.quad	7745600009131953402
# y:
# n:
	.quad	-917829456528334230
	.quad	1716686198245550654
	.quad	-676696982526760898
	.quad	2341034895106193572
# x:
# n:
	.quad	8343436915761688752
	.quad	-7878718557008820331
	.quad	-8134339401661782675
	.quad	-1636863675868285102
# y:
# n:
	.quad	3953478037237304050
	.quad	-5361703759217175681
	.quad	7248103503837915126
	.quad	8437743895187443243
# x:
# n:
	.quad	-8396215893578426450
	.quad	5289383202734371795
	.quad	-8657945342304879287
	.quad	-7092289299687184459
# y:
# n:
	.quad	5539998862896102710
	.quad	5622115741788044856
	.quad	2447857232566084559
	.quad	-9167597630648999109
# x:
# n:
	.quad	7841482252747385078
	.quad	-7698191680498929992
	.quad	1192890340995410336
	.quad	5111573060034813297
# y:
# n:
	.quad	-8561527764327451324
	.quad	-7495611212618632888
	.quad	8642554915516809895
	.quad	-8419988513125451152
# x:
# n:
	.quad	9059556921170364395
	.quad	5360168870523055870
	.quad	-4360755814052071812
	.quad	8261181016379937278
# y:
# n:
	.quad	-1625087802039172309
	.quad	-4777465821267291529
	.quad	-4287055433884635164
	.quad	-6667853900317792675
# x:
# n:
	.quad	39816095414038333
	.quad	3390304950714291218
	.quad	2176578018837452024
	.quad	2211515651190814932
# y:
# n:
	.quad	749642103854186389
	.quad	-5415959298365911279
	.quad	4848465352044143514
	.quad	2535375644067904602
# x:
# n:
	.quad	-5325453459799223367
	.quad	1919543539991744948
	.quad	-1435726682141395725
	.quad	-3164005683284261392
# y:
# n:
	.quad	-1033848911666072240
	.quad	4819349059426230732
	.quad	-1568069784891959814
	.quad	4045866274113538581
# x:
# n:
	.quad	675655595182389035
	.quad	9052257595174479634
	.quad	-2282778627911358206
	.quad	-6196091266330454155
# y:
# n:
	.quad	-4400684624157078622
	.quad	663187969012941175
	.quad	-4585003807081914099
	.quad	-251120564418192306
# x:
# n:
	.quad	-868236906150600155
	.quad	-3431716398934489003
	.quad	-1437688571657132399
	.quad	3533443641635474565
# y:
# n:
	.quad	8762787991786365196
	.quad	5418704469037963192
	.quad	-5857240022162620049
	.quad	-7310251323362698009
# x:
# n:
	.quad	5705192852030252664
	.quad	-6236227536945179601
	.quad	5724936737843698512
	.quad	248532292379310343
# y:
# n:
	.quad	-1267946560345180865
	.quad	-1909800898379180425
	.quad	-8265603198179026262
	.quad	8978843552120033290
# x:
# n:
	.quad	-4743832261797553418
	.quad	5748272865442768319
	.quad	-3816401263697457191
	.quad	8639884780098675076
# y:
# n:
	.quad	-4713442740938893757
	.quad	9119147219792601953
	.quad	-7309097959953711531
	.quad	5373142633728529971
# x:
# n:
	.quad	-1895676722834693891
	.quad	-1758325575807281156
	.quad	-6479834795369856715
	.quad	1141319626299266768
# y:
# n:
	.quad	-870118997724226058
	.quad	-4301278776490909180
	.quad	491695651508007311
	.quad	-6658173312381254898
# x:
# n:
	.quad	-2860988238602112848
	.quad	-3397798603341034741
	.quad	-4741247829852987860
	.quad	2630752636904663623
# y:
# n:
	.quad	-2172820190970973791
	.quad	111272895600524112
	.quad	-6506265197893921141
	.quad	-2889690466007709477
# x:
# n:
	.quad	-4557821722837097009
	.quad	-5003295388814837004
	.quad	7200849604176477566
	.quad	-3327341527973877221
# y:
# n:
	.quad	6025140726534243496
	.quad	7410419958189736391
	.quad	5865282714249355347
	.quad	-5147808303083111078
# x:
# n:
	.quad	-3050427227111751505
	.quad	-4258944625477072151
	.quad	2226804425899823988
	.quad	-7991359183331736219
# y:
# n:
	.quad	2155676559177784916
	.quad	-3140340026994154810
	.quad	-2466785231484531265
	.quad	-8892156451726511545
# x:
# n:
	.quad	4690050651905196729
	.quad	2834618236863079780
	.quad	-1545257417607700216
	.quad	-4394431280109604725
# y:
# n:
	.quad	-3612593307590580543
	.quad	4378726543185680429
	.quad	5467583786427072026
	.quad	-5802288611855231929
# x:
# n:
	.quad	702042205122961791
	.quad	4764453916592270447
	.quad	7729985971024960690
	.quad	5695336588859422410
# y:
# n:
	.quad	5222247557300538518
	.quad	-967465126421793214
	.quad	-841373489878502911
	.quad	-3406491677815924752
# x:
# n:
	.quad	-1092619406205481987
	.quad	8200118126868959675
	.quad	-2327091059090570427
	.quad	-3556632325355312756
# y:
# n:
	.quad	-6303436387591778163
	.quad	9129026369705875485
	.quad	-8136425833196731242
	.quad	3240870094449656318
# x:
# n:
	.quad	1421530821877226570
	.quad	8682589747039758877
	.quad	5787853524107543802
	.quad	8763316093148701165
# y:
# n:
	.quad	-7158754220933297937
	.quad	-5418535863033436664
	.quad	2578139831649100527
	.quad	-7293920454215180865
# x:
# n:
	.quad	989290486449395035
	.quad	-7497787831570100081
	.quad	1623116517377533590
	.quad	-5232332687406874528
# y:
# n:
	.quad	-683126812336144948
	.quad	-7175001549391788768
	.quad	-7694503415967052437
	.quad	6563280951784621726
# x:
# n:
	.quad	-6890812439256402550
	.quad	-4085480108013362251
	.quad	-8234612302650595621
	.quad	-7465041573707784012
# y:
# n:
	.quad	4059358841027907882
	.quad	-2410896161557120698
	.quad	-5733301651109020007
	.quad	-692233786310571534
# x:
# n:
	.quad	-3914356753463239414
	.quad	7644449556980844120
	.quad	781463128673416679
	.quad	7736329552974018571
# y:
# n:
	.quad	-4602285625597598817
	.quad	-216722629478354435
	.quad	-937527581919818833
	.quad	2382293167620346821
# x:
# n:
	.quad	-1345109037022350619
	.quad	-2650571728213018507
	.quad	6159070843641101732
	.quad	1253332899417206849
# y:
# n:
	.quad	4286294293558537527
	.quad	2153068256344586029
	.quad	6262010166961107685
	.quad	-6963122874742653943
# x:
# n:
	.quad	2277556647000399066
	.quad	6679671201659889592
	.quad	1419110626741249595
	.quad	-1294319175642468930
# y:
# n:
	.quad	5362783811096266484
	.quad	-7935903860226674030
	.quad	115901945264731063
	.quad	-8576262462371174979
# x:
# n:
	.quad	8952700981353982431
	.quad	3302782519442326038
	.quad	-3708529423422102617
	.quad	-2723491002558896164
# y:
# n:
	.quad	4689789757430074610
	.quad	6630608329496468708
	.quad	-9181183833141702579
	.quad	1387783209224459218
# x:
# n:
	.quad	-3203466549103153143
	.quad	-4424922705997316060
	.quad	-997030320655866617
	.quad	-6376603942275360386
# y:
# n:
	.quad	-6210022273813140860
	.quad	-2263284171083310464
	.quad	-8977567020038095875
	.quad	-1947178144459360272
# x:
# n:
	.quad	3214344117596168991
	.quad	-7054343707187452715
	.quad	1806092187739088545
	.quad	-2847989963267410718
# y:
# n:
	.quad	602105748388842451
	.quad	7775069539201984995
	.quad	4667847868773955372
	.quad	1011388249900647280
# x:
# n:
	.quad	-2582456265155506188
	.quad	3260765700178120916
	.quad	76748531255455533
	.quad	-6925692951421231583
# y:
# n:
	.quad	-1875511302094828981
	.quad	-6358723352599662806
	.quad	-812658627294859177
	.quad	-6785956938728312235
# x:
# n:
	.quad	-8793590538699909692
	.quad	5443986565585067451
	.quad	-2548423060397129407
	.quad	-997988241143505060
# y:
# n:
	.quad	-6810673490193314827
	.quad	7746473882944520622
	.quad	-935796160424752164
	.quad	1273660099128937142
# x:
# n:
	.quad	-4644451628788166649
	.quad	1105944951278367569
	.quad	3262205012894587942
	.quad	5940357513089039461
# y:
# n:
	.quad	-1247475023522357560
	.quad	-7618002076916059581
	.quad	-2761663659690417956
	.quad	274071425702162994
# x:
# n:
	.quad	-3420722734527329601
	.quad	8292324222753513810
	.quad	3148450810727592256
	.quad	-6195134968545894036
# y:
# n:
	.quad	-2526489932009789926
	.quad	-7972711608228198151
	.quad	-53723543839848713
	.quad	-9085813027695394855
# x:
# n:
	.quad	-6359513253006402604
	.quad	4944501585803674061
	.quad	-4450031795178267995
	.quad	8796795139540095338
# y:
# n:
	.quad	7956278936880428395
	.quad	-174391027891724535
	.quad	-9058093097275631035
	.quad	-3369450998297483065
# x:
# n:
	.quad	274974116580286428
	.quad	-562049194516026013
	.quad	-6687579075545594500
	.quad	4127394846690793596
# y:
# n:
	.quad	-3040553753388742834
	.quad	893466052546655786
	.quad	8940100173848323506
	.quad	1401956251798764242
# x:
# n:
	.quad	7007455039481446841
	.quad	-59858645925468351
	.quad	-1358001836380252903
	.quad	-6794544416887514068
# y:
# n:
	.quad	925502522722177391
	.quad	3104203589838401382
	.quad	-4747346567347097825
	.quad	-1989937519883671732
# x:
# n:
	.quad	3337387493747726397
	.quad	7647119689534146203
	.quad	-7627690335318348416
	.quad	732433811312953988
# y:
# n:
	.quad	-9099405961399847832
	.quad	3831803500034512454
	.quad	-5735626582519242888
	.quad	4058017969293345244
# x:
# n:
	.quad	-7688474881660708355
	.quad	9206947065237248994
	.quad	5487686361702343935
	.quad	-2998250921926928119
# y:
# n:
	.quad	-540897042335775327
	.quad	8893767026940900447
	.quad	4623086806286275910
	.quad	-5950711059194164811
# x:
# n:
	.quad	1205311633123758312
	.quad	-7321929706164647278
	.quad	3604535374946959458
	.quad	-3862290343068510128
# y:
# n:
	.quad	6061757786800363258
	.quad	7431871938073305005
	.quad	5645082983444919557
	.quad	-9071078754578415801
# x:
# n:
	.quad	3027701563188341104
	.quad	-7470567223207473438
	.quad	-5743636918461630295
	.quad	3531249609512369026
# y:
# n:
	.quad	-4082590752160661000
	.quad	-7715644414918387052
	.quad	-6833146521600043624
	.quad	5629837416677303403
# x:
# n:
	.quad	8963495087232745518
	.quad	-2679819337860681340
	.quad	-5920897524714765688
	.quad	-2282989203116351803
# y:
# n:
	.quad	8366065113599260333
	.quad	-3742521191304584582
	.quad	-3909637366623147335
	.quad	3699914624907490180
# x:
# n:
	.quad	8999333951509833324
	.quad	2967024015756072886
	.quad	1243951586118585717
	.quad	2156690073113696013
# y:
# n:
	.quad	7157924183200031531
	.quad	-7176079396312457513
	.quad	9151524944643228096
	.quad	9195311821328003976
# x:
# n:
	.quad	-8496273622445422711
	.quad	180053926457120507
	.quad	-5795647700799387568
	.quad	-6337177702353353715
# y:
# n:
	.quad	6223273401411336342
	.quad	2125072949594139484
	.quad	-2184186090018249011
	.quad	5071442278305864389
# x:
# n:
	.quad	-6918520376680151540
	.quad	7979027478802801456
	.quad	7481940939749173442
	.quad	5277248214659222725
# y:
# n:
	.quad	-1368715358644934029
	.quad	-3596847631634114528
	.quad	-2048693014253597656
	.quad	-1490109371605776546
# x:
# n:
	.quad	6839192594878318560
	.quad	-2456018586451651337
	.quad	-1325415142571661303
	.quad	4802264391709421561
# y:
# n:
	.quad	-3841418909797228909
	.quad	915078967551574306
	.quad	1657549223905268913
	.quad	5417931687344992540
# x:
# n:
	.quad	2142000764208138933
	.quad	3003614336756857694
	.quad	-5939226783839907576
	.quad	-1248469448332312885
# y:
# n:
	.quad	-7424824915729626256
	.quad	7610677264378761078
	.quad	8571503214168605355
	.quad	-2239801829966296068
# x:
# n:
	.quad	-4306931221990116952
	.quad	-4643218145130978366
	.quad	-2664248757854529560
	.quad	3740525114696160808
# y:
# n:
	.quad	7284886770318701433
	.quad	-200464581885187071
	.quad	-9176912873604975716
	.quad	-6220607606603457748
# x:
# n:
	.quad	-4992027974574054363
	.quad	-8815369796978996182
	.quad	-4276235584805739069
	.quad	5401548290364712484
# y:
# n:
	.quad	2444773939415396457
	.quad	-8379021541922971588
	.quad	3711296987606586841
	.quad	5401096430685840398
# x:
# n:
	.quad	-1256942957031022734
	.quad	6591946581549354087
	.quad	-4285984685278888248
	.quad	2906457826676653878
# y:
# n:
	.quad	-3840754429142339965
	.quad	-3476894264437738022
	.quad	5613666542812293713
	.quad	-1380420961384873513
# x:
# n:
	.quad	2664772180825598094
	.quad	4058640942936114324
	.quad	4135171795012627857
	.quad	1947476456279599318
# y:
# n:
	.quad	-6924896310002456651
	.quad	8425115473307524341
	.quad	-516075973570573137
	.quad	4461220724688949812
# x:
# n:
	.quad	-7337622606960023136
	.quad	8275093101854923834
	.quad	-57059674194592741
	.quad	-3534407450631726814
# y:
# n:
	.quad	-3916012910515871405
	.quad	2908932038359460885
	.quad	-5587070894371858736
	.quad	-6184994298802168597
# x:
# n:
	.quad	3831582831409862796
	.quad	5718650190053323413
	.quad	-3954088634729244463
	.quad	4171350663336696254
# y:
# n:
	.quad	-2751644837848235044
	.quad	8277728240420329387
	.quad	60999962184288100
	.quad	6252827504964971501
# x:
# n:
	.quad	1453628492329654392
	.quad	6710899113759548517
	.quad	-5865441469496472868
	.quad	2940584252181697448
# y:
# n:
	.quad	2070118278610722428
	.quad	-8834592231017720511
	.quad	8595456004694674741
	.quad	-8030616504943445196
# x:
# n:
	.quad	7456176357421504469
	.quad	-737380991983930413
	.quad	-5949882871803654752
	.quad	4051801486371746151
# y:
# n:
	.quad	1104875386354887586
	.quad	-4139611047919843019
	.quad	2754361170351783532
	.quad	1274052464822404289
# x:
# n:
	.quad	53821367264156527
	.quad	-3973449406274701036
	.quad	-3942766227279414504
	.quad	-6984591613402424387
# y:
# n:
	.quad	-387071339414787410
	.quad	-4568629504730398202
	.quad	-3257641907899921392
	.quad	3699876042777637889
# x:
# n:
	.quad	3811262927886150342
	.quad	5776365993881746054
	.quad	3434617541818246876
	.quad	3758123359455764095
# y:
# n:
	.quad	4794668522193048442
	.quad	7180147924167805723
	.quad	2584600860007660714
	.quad	-657438362281801880
# x:
# n:
	.quad	-6033838017273510895
	.quad	2855838690586598632
	.quad	2170690928589587497
	.quad	4936663650135068047
# y:
# n:
	.quad	-8631732815612206744
	.quad	-4639764383025422095
	.quad	-313330034844054371
	.quad	5152676922370158837
# x:
# n:
	.quad	6135649047332038984
	.quad	-894453348668391366
	.quad	-8966802443181065155
	.quad	-8054388148648413604
# y:
# n:
	.quad	416858766409328234
	.quad	8836071068871421661
	.quad	-2753098196051929542
	.quad	1844096340050984894
# x:
# n:
	.quad	-558068224175716507
	.quad	3816761794929524846
	.quad	6592042491602966087
	.quad	-5485696646966099782
# y:
# n:
	.quad	6475606093723263720
	.quad	-3132298834731229471
	.quad	6474877407399075683
	.quad	-3088414653231903555
# x:
# n:
	.quad	-6778981303623218620
	.quad	8830844484301428897
	.quad	-3451261931408301827
	.quad	-737131804481106154
# y:
# n:
	.quad	-1891614534559757256
	.quad	-1382932830919213293
	.quad	-8874707395634942912
	.quad	-8751771564005088905
# x:
# n:
	.quad	-1136050282401919497
	.quad	5919437070409468753
	.quad	-3092321414844167904
	.quad	2756535882937701191
# y:
# n:
	.quad	646491245719110151
	.quad	-1452236558747038214
	.quad	1812773028835952449
	.quad	1270302355276233010
# x:
# n:
	.quad	-2003923523002002693
	.quad	-5102807871719196605
	.quad	2600378709794342649
	.quad	-8200715917596402519
# y:
# n:
	.quad	-8862457797604077036
	.quad	4642097912042785564
	.quad	769541263723323608
	.quad	-4652735052089701579
# x:
# n:
	.quad	-5098764220728355878
	.quad	4671708765514432066
	.quad	3294448312466994429
	.quad	-1336800465068702988
# y:
# n:
	.quad	7296088935014272039
	.quad	-9156598937259130495
	.quad	-4486358002452387177
	.quad	5603113563391089788
# x:
# n:
	.quad	7036679968845694666
	.quad	-3123843999660755302
	.quad	5184192363867689662
	.quad	-6320791358280225517
# y:
# n:
	.quad	1392029275693880267
	.quad	-6378298484636014035
	.quad	916393213183498140
	.quad	8913299387058506758
# x:
# n:
	.quad	8787172674477923839
	.quad	2046703169446839033
	.quad	-3754994226903257391
	.quad	-8602993275048996629
# y:
# n:
	.quad	-3245686321721443642
	.quad	-8585891669064296035
	.quad	-3236665525329242896
	.quad	7825616340280210694
# x:
# n:
	.quad	9167180794330912741
	.quad	-51754111038223338
	.quad	-8398880490270251068
	.quad	-5262934994549872120
# y:
# n:
	.quad	-5694696157425284697
	.quad	6800234783732921355
	.quad	3182459002790195780
	.quad	-7410551711537083914
# x:
# n:
	.quad	8735856935819954703
	.quad	-8371908309245012773
	.quad	5236034443834673936
	.quad	338106406997348384
# y:
# n:
	.quad	-1233678559641573879
	.quad	431222816051474391
	.quad	-3931027505991763271
	.quad	-6446344078526763851
# x:
# n:
	.quad	7125127648475216786
	.quad	1077545371461865175
	.quad	-5254679151422739613
	.quad	-8375074482581618587
# y:
# n:
	.quad	-6947278015634976234
	.quad	7547456555477123909
	.quad	-8421594216996344555
	.quad	7378019646553086652
# x:
# n:
	.quad	881514008784607010
	.quad	-3192048440044344720
	.quad	-4273821738644311154
	.quad	-5941190246026274329
# y:
# n:
	.quad	7947927323174517588
	.quad	-5440451983483343853
	.quad	2828229045449533471
	.quad	-289074469978675969
# x:
# n:
	.quad	7450376748302143664
	.quad	-8660055687581523455
	.quad	2359578313774974679
	.quad	1308029707516299186
# y:
# n:
	.quad	-3430858466620310611
	.quad	345552938426533450
	.quad	8698702860257009949
	.quad	4110736182663525663
# x:
# n:
	.quad	-6215127783788529203
	.quad	-5713813309922016803
	.quad	6664873400659565836
	.quad	5245370921688626518
# y:
# n:
	.quad	7835368125019012960
	.quad	-8770277256733468877
	.quad	8779315963682595122
	.quad	-4755042049978577346
# x:
# n:
	.quad	-1121703558292112191
	.quad	-4871712295656832903
	.quad	-2600456330070620206
	.quad	6164102504571922351
# y:
# n:
	.quad	5860639577106120786
	.quad	8489921299310742727
	.quad	483821853837074367
	.quad	2149927040591976762
# x:
# n:
	.quad	-7519112218825527674
	.quad	1596974611313976973
	.quad	-6933018173479170931
	.quad	-5809721533818174880
# y:
# n:
	.quad	-7366905571858398035
	.quad	9115997476855378226
	.quad	7539472908784038086
	.quad	-2450342839799725263
# x:
# n:
	.quad	7102751109505229455
	.quad	-5907675951618499500
	.quad	4067492649153040103
	.quad	3145073179446782357
# y:
# n:
	.quad	2270380863060624286
	.quad	8960575010914453440
	.quad	1324061645971067958
	.quad	-5115258016059750371
# x:
# n:
	.quad	-2674715445806739423
	.quad	-1773902925158243874
	.quad	-671943700433524501
	.quad	-2333939790151294157
# y:
# n:
	.quad	-4584642040224349395
	.quad	6980116501094247332
	.quad	3890705872917477057
	.quad	5269006348046270353
# x:
# n:
	.quad	-7611449273391166613
	.quad	843913663668676809
	.quad	5179974635244674790
	.quad	1715292681650031604
# y:
# n:
	.quad	8364227677736013435
	.quad	-6365824239842036994
	.quad	-6194770155117504485
	.quad	6727671042856333022
# x:
# n:
	.quad	8676630292191612125
	.quad	-7879233979428621424
	.quad	259631716716246789
	.quad	-2415303479542264236
# y:
# n:
	.quad	5294796841073375438
	.quad	-5426962304797287685
	.quad	-776832132546172434
	.quad	6991972867327371827
# x:
# n:
	.quad	-5840379710209095568
	.quad	7907723104444017495
	.quad	5455416227019864061
	.quad	-8382635494588757482
# y:
# n:
	.quad	5434027751662634781
	.quad	-3406020153817505698
	.quad	-4772265485909136934
	.quad	9141383517047953977
# x:
# n:
	.quad	-6087217745719673817
	.quad	350727639628137758
	.quad	7068087680181757429
	.quad	8411867206831472814
# y:
# n:
	.quad	4912969233884293672
	.quad	1367878063435980955
	.quad	3983335669764489404
	.quad	-6400322597204905862
# x:
# n:
	.quad	-6063417141323448292
	.quad	-5941798495894853911
	.quad	-3073127513508658486
	.quad	-8348504471419581095
# y:
# n:
	.quad	5454651478355971094
	.quad	3776586878778418407
	.quad	-3734733107716187227
	.quad	-5240435991692584180
# x:
# n:
	.quad	4944812001126789155
	.quad	-4410590928873776956
	.quad	-5857051052276495173
	.quad	-3869569935456986235
# y:
# n:
	.quad	-130308261069365992
	.quad	9051021846845935638
	.quad	-667302316560791329
	.quad	7676026930017409166
# x:
# n:
	.quad	38602832531009132
	.quad	8388271381968808894
	.quad	-7555327407371217329
	.quad	8541988849052167478
# y:
# n:
	.quad	-7827521109639082551
	.quad	-2454002874309390022
	.quad	-5365560109745380182
	.quad	6810035054749270640
# x:
# n:
	.quad	4064521119144091148
	.quad	8242588961552426866
	.quad	6152926514932668082
	.quad	-677097186662898477
# y:
# n:
	.quad	1145954414515663169
	.quad	2731984774471540213
	.quad	-4600383096763406246
	.quad	-5782449388790628344
# x:
# n:
	.quad	-3742043573856572595
	.quad	288558679757546315
	.quad	3092149679912160777
	.quad	5559252206748033906
# y:
# n:
	.quad	-2266503760674454357
	.quad	2752794170554210074
	.quad	8372572638667403710
	.quad	6289264489597184537
# x:
# n:
	.quad	4498447310909752079
	.quad	-4907789901200169361
	.quad	1211463703199830824
	.quad	7840669071727953449
# y:
# n:
	.quad	-7650167055450107033
	.quad	-1697030244269258314
	.quad	4992924731280300630
	.quad	1995689332281619016
# x:
# n:
	.quad	4432791621946753649
	.quad	-8710081771530563846
	.quad	8669417223475052632
	.quad	3155550925395064763
# y:
# n:
	.quad	-7079169094889205644
	.quad	2552869651904845282
	.quad	2229811257057278424
	.quad	-4396920945947113873
# x:
# n:
	.quad	1087715999031890337
	.quad	7868299211844475072
	.quad	3642800779972953852
	.quad	5382471850994692730
# y:
# n:
	.quad	2706090043520173291
	.quad	-6452643507447263813
	.quad	2426533261852076052
	.quad	-1927923186593956095
# x:
# n:
	.quad	-6335379603791999866
	.quad	2084719998676666046
	.quad	5035679308840443252
	.quad	8946229501995413141
# y:
# n:
	.quad	-4884289856312095479
	.quad	735107069766602313
	.quad	7411553592261578852
	.quad	8091820600587458074
# x:
# n:
	.quad	-7521811465609628970
	.quad	2966599060383199256
	.quad	-1367954020008598043
	.quad	-5503326486932873856
# y:
# n:
	.quad	5463770325660330921
	.quad	-3167362055929306390
	.quad	-7493651743161883912
	.quad	1121263710166405195
# x:
# n:
	.quad	3148813237389731969
	.quad	-6193203781924498831
	.quad	6539500092533708707
	.quad	-3382708480246095609
# y:
# n:
	.quad	7592433242527133376
	.quad	6888752233634282515
	.quad	295248128170727904
	.quad	431631410000901601
# x:
# n:
	.quad	-4441475703019385432
	.quad	1280470470129093744
	.quad	-1421098884796217776
	.quad	-5773710154591908748
# y:
# n:
	.quad	-174726233461208519
	.quad	8693570460803986054
	.quad	-5156041494975685155
	.quad	-5661328030023954746
# x:
# n:
	.quad	514522983704420834
	.quad	5820239239070867771
	.quad	-5182360869164701414
	.quad	6507646837439943866
# y:
# n:
	.quad	6374659149271870746
	.quad	5210074300373654462
	.quad	-5291894995863221353
	.quad	6550420979930289875
# x:
# n:
	.quad	-956192125353816690
	.quad	3945612311089430446
	.quad	3567334855410193123
	.quad	6017675963664516451
# y:
# n:
	.quad	2485921213663891433
	.quad	-758161292423281365
	.quad	635635426244664630
	.quad	1127150981217910796
# x:
# n:
	.quad	4625641296310087355
	.quad	-3521178494095881652
	.quad	72152109776766272
	.quad	-6109058126678721284
# y:
# n:
	.quad	-7861083894927026710
	.quad	-6586742694155606983
	.quad	-1438243379146789677
	.quad	-5821311768393685462
# x:
# n:
	.quad	3184498660340778881
	.quad	-7344240411667478356
	.quad	-1672139442484525149
	.quad	-1366576313540390642
# y:
# n:
	.quad	-5637136249670879665
	.quad	1068599177892384585
	.quad	-5221097350941405316
	.quad	4171670846686664785
# x:
# n:
	.quad	4601674340616017968
	.quad	4576196301536399595
	.quad	-3247707858527166617
	.quad	-91747383808017295
# y:
# n:
	.quad	7244303524740812185
	.quad	6058618514943553068
	.quad	2400235879700772133
	.quad	-6555091887475311242
# x:
# n:
	.quad	63300512427449739
	.quad	-6905661133851302170
	.quad	-5395899167731587088
	.quad	-731249888695802227
# y:
# n:
	.quad	2186658019543986632
	.quad	1174065575132752372
	.quad	4958438259323153968
	.quad	138720529959403058
# x:
# n:
	.quad	353432588579552859
	.quad	2465389188404861978
	.quad	4043905153272986895
	.quad	-1536226353338937363
# y:
# n:
	.quad	6316328270721703176
	.quad	-2441180476339972873
	.quad	6282090581960942240
	.quad	2662153897656556783
# x:
# n:
	.quad	-7397303243424836123
	.quad	902146161104055114
	.quad	8543232357679678815
	.quad	-6226321103338634675
# y:
# n:
	.quad	7594860384300278860
	.quad	823802468387933429
	.quad	-3129408305226180329
	.quad	-7137863861704755464
# x:
# n:
	.quad	1208174381972813809
	.quad	-456235135888760505
	.quad	8274312966868805365
	.quad	1089915621078990450
# y:
# n:
	.quad	-6143233935307400911
	.quad	241647449154051370
	.quad	7338603997802453002
	.quad	-3575489357437230234
# x:
# n:
	.quad	-6737085035174799597
	.quad	-2416335612494695050
	.quad	7741387961295853275
	.quad	-433605656154585695
# y:
# n:
	.quad	-7656748563633721837
	.quad	-6615552376194707650
	.quad	-3674120600226570349
	.quad	5899327772864479489
# x:
# n:
	.quad	7408141724243505624
	.quad	4759642653102841513
	.quad	-8517736655340223296
	.quad	-3028097680758005938
# y:
# n:
	.quad	-43984604469904614
	.quad	15156610871191330
	.quad	-385373424594974737
	.quad	6844496272210966109
# x:
# n:
	.quad	-1375182261783840038
	.quad	-4662284212204618285
	.quad	-1619332993980860226
	.quad	-7815541474515674549
# y:
# n:
	.quad	-7914571171836319426
	.quad	-308923444711426798
	.quad	4842291304178774637
	.quad	-6802078643132865796
# x:
# n:
	.quad	-8021880919349452584
	.quad	-9217095840110707963
	.quad	-3084728702793241592
	.quad	-8079329603847776452
# y:
# n:
	.quad	-4587863731468137717
	.quad	-1369306276248626191
	.quad	-1948382428571851052
	.quad	-9035702026672373751
# x:
# n:
	.quad	8942983301270049956
	.quad	3916744293163363221
	.quad	3932931821244691618
	.quad	1208003271887765628
# y:
# n:
	.quad	263466520433608231
	.quad	2519211818483974350
	.quad	6297304456830354857
	.quad	-1108613468474533309
# x:
# n:
	.quad	1885248077117916558
	.quad	-4976648077568646824
	.quad	8458584082554190097
	.quad	-3466489695581081667
# y:
# n:
	.quad	6013773195908983670
	.quad	898894560334851513
	.quad	-5424933598447723286
	.quad	4903399995743578440
# x:
# n:
	.quad	-5795762675169037779
	.quad	3252482217898113127
	.quad	1475185971385075230
	.quad	6041423554128515575
# y:
# n:
	.quad	-8432720898496909608
	.quad	2011423932441891806
	.quad	4369386214638377220
	.quad	-5555091152079629540
# x:
# n:
	.quad	1948122158907168575
	.quad	52754390567194820
	.quad	2259588268019585020
	.quad	-5055846397800695222
# y:
# n:
	.quad	-266576251905335621
	.quad	789719853722043045
	.quad	-7940833154695813709
	.quad	374591153882906669
# x:
# n:
	.quad	-2354593930942194120
	.quad	7287213288006176146
	.quad	-7333137222695144188
	.quad	-1681746004796201821
# y:
# n:
	.quad	-2296038406452473528
	.quad	-7128658854781776877
	.quad	-7006600058174270260
	.quad	8726734175741427690
# x:
# n:
	.quad	9074220878729114418
	.quad	281665865610554747
	.quad	6526484923625740712
	.quad	-6025480987924668385
# y:
# n:
	.quad	8041498058090925636
	.quad	-1002623089112513930
	.quad	-4055073454833808637
	.quad	-7500079876774829208
# x:
# n:
	.quad	-1619800017844673476
	.quad	-4489467259420386876
	.quad	3387919167512890693
	.quad	-6037967274513708322
# y:
# n:
	.quad	-9183858394655706966
	.quad	-4989432911104694493
	.quad	7734329008995601138
	.quad	8183569756028384632
# x:
# n:
	.quad	-2453254701559352500
	.quad	1060126974109273861
	.quad	2081040521521611193
	.quad	-6357751182687434350
# y:
# n:
	.quad	-1712393726927501085
	.quad	705879058555213404
	.quad	-9089516001674842851
	.quad	-3678870026321220755
# x:
# n:
	.quad	-7123772664564984179
	.quad	-7245864419774851794
	.quad	3008447509722955315
	.quad	-4590390299677098576
# y:
# n:
	.quad	-1477946042091247928
	.quad	-4158479274317195523
	.quad	-5426715127446640669
	.quad	-7141062170808587402
# x:
# n:
	.quad	-6563540111624455577
	.quad	2678497715057843330
	.quad	-1605733063868337188
	.quad	-9065491068406620584
# y:
# n:
	.quad	-6393670341116773569
	.quad	1760387577785209622
	.quad	-775939439713524123
	.quad	704559497224541393
# x:
# n:
	.quad	217445678041052615
	.quad	-1925345605058606527
	.quad	4113637623124809303
	.quad	8217995506797106061
# y:
# n:
	.quad	-6945718847201286972
	.quad	7879917704108901117
	.quad	-1968619739711032428
	.quad	-8775943237371899530
# x:
# n:
	.quad	1741385226170675279
	.quad	6638478741240711375
	.quad	6830346007215882286
	.quad	2754872333961559281
# y:
# n:
	.quad	7391247159401006136
	.quad	2857436703977369565
	.quad	-153803272866061254
	.quad	3825440592113679820
# x:
# n:
	.quad	1277131725427953864
	.quad	6494236251867562983
	.quad	2283538455635361376
	.quad	5682273213180984145
# y:
# n:
	.quad	6400398049368140598
	.quad	-5932050023564394862
	.quad	3625904764932893519
	.quad	-5439505144729154790
# x:
# n:
	.quad	8778304277342066535
	.quad	1029056619276247225
	.quad	-8664320989773833467
	.quad	-843254591404806619
# y:
# n:
	.quad	785386143461542648
	.quad	-184521367343789776
	.quad	7357432087839905237
	.quad	-5212318329780992930
# x:
# n:
	.quad	-1329688297894597304
	.quad	5879975758652501864
	.quad	1868618886148928654
	.quad	6431030169389415710
# y:
# n:
	.quad	7720712001710576406
	.quad	-8380734143414273108
	.quad	-2493028613118778865
	.quad	5909234119923754971
# x:
# n:
	.quad	-2007323538665902926
	.quad	6187647977856934727
	.quad	2750946040607666752
	.quad	-9062565615676825307
# y:
# n:
	.quad	-5212882382937756607
	.quad	6529823499307491616
	.quad	-1730721262562025373
	.quad	-5910136158814091762
# x:
# n:
	.quad	-1244566145081342614
	.quad	266966755087699435
	.quad	-8822596421820730947
	.quad	-8237374488745996449
# y:
# n:
	.quad	-5208068984488572410
	.quad	-6197939814081350122
	.quad	-5677450696778572470
	.quad	1574859661846072959
# x:
# n:
	.quad	-2299561538365683187
	.quad	-5174078152512380750
	.quad	6491071707724000995
	.quad	3131715651670934567
# y:
# n:
	.quad	-8877463944589919068
	.quad	-4940429860238301885
	.quad	-8071028678544306825
	.quad	-7971796042331397303
	.hidden	CURVE_B
	.globl	CURVE_B
	.align 4
	.type	CURVE_B, @object
	.size	CURVE_B, 4
CURVE_B:
	.long	7
	.align 32
	.type	secp256k1_ge_const_g, @object
	.size	secp256k1_ge_const_g, 88
secp256k1_ge_const_g:
# x:
# n:
	.quad	705178180786072
	.quad	3855836460717471
	.quad	4089131105950716
	.quad	3301581525494108
	.quad	133858670344668
# y:
# n:
	.quad	2199641648059576
	.quad	1278080618437060
	.quad	3959378566518708
	.quad	3455034269351872
	.quad	79417610544803
# infinity:
	.long	0
	.zero	4
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.long	1779033703
	.long	-1150833019
	.long	1013904242
	.long	-1521486534
	.align 16
.LC4:
	.long	1359893119
	.long	-1694144372
	.long	528734635
	.long	1541459225
	.align 16
.LC5:
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.byte	92
	.align 16
.LC6:
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.byte	106
	.ident	"GCC: (GNU) 6.3.1 20170306"
	.section	.note.GNU-stack,"",@progbits
