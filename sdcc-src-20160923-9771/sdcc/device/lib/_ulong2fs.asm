;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
___ulong2fs_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___ulong2fs_a_1_20:
	.ds 4
___ulong2fs_exp_1_21:
	.ds 2
___ulong2fs_fl_1_21:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated with name '___ulong2fs_a_1_20'
;exp                       Allocated with name '___ulong2fs_exp_1_21'
;fl                        Allocated with name '___ulong2fs_fl_1_21'
;sloc0                     Allocated with name '___ulong2fs_sloc0_1_0'
;------------------------------------------------------------
;	_ulong2fs.c:83: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#___ulong2fs_a_1_20
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:88: if (!a)
	mov	dptr,#___ulong2fs_a_1_20
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00115$
;	_ulong2fs.c:90: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
;	_ulong2fs.c:93: while (a & NORM) 
00115$:
	mov	r6,#0x96
	mov	r7,#0x00
00103$:
	mov	dptr,#___ulong2fs_a_1_20
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	jz	00117$
;	_ulong2fs.c:96: a >>= 1;
	mov	a,r5
	clr	c
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	dptr,#___ulong2fs_a_1_20
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:97: exp++;
	inc	r6
;	_ulong2fs.c:100: while (a < HIDDEN)
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00117$:
	mov	___ulong2fs_sloc0_1_0,r6
	mov	(___ulong2fs_sloc0_1_0 + 1),r7
00106$:
	mov	dptr,#___ulong2fs_a_1_20
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0x80
	mov	a,r5
	subb	a,#0x00
	jnc	00120$
;	_ulong2fs.c:102: a <<= 1;
	mov	a,r2
	add	a,r2
	mov	r0,a
	mov	a,r3
	rlc	a
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r7,a
	mov	dptr,#___ulong2fs_a_1_20
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:103: exp--;
	dec	___ulong2fs_sloc0_1_0
	mov	a,#0xff
	cjne	a,___ulong2fs_sloc0_1_0,00137$
	dec	(___ulong2fs_sloc0_1_0 + 1)
00137$:
	sjmp	00106$
00120$:
	mov	dptr,#___ulong2fs_exp_1_21
	mov	a,___ulong2fs_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ulong2fs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:107: if ((a&0x7fffff)==0x7fffff) {
	anl	ar4,#0x7f
	mov	r5,#0x00
	cjne	r2,#0xff,00110$
	cjne	r3,#0xff,00110$
	cjne	r4,#0x7f,00110$
	cjne	r5,#0x00,00110$
;	_ulong2fs.c:108: a=0;
	mov	dptr,#___ulong2fs_a_1_20
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:109: exp++;
	mov	dptr,#___ulong2fs_exp_1_21
	inc	a
	add	a,___ulong2fs_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___ulong2fs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00110$:
;	_ulong2fs.c:113: a &= ~HIDDEN ;
	mov	dptr,#___ulong2fs_a_1_20
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#___ulong2fs_a_1_20
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,#0x7f
	anl	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:115: fl.l = PACK(0,(unsigned long)exp, a);
	mov	dptr,#___ulong2fs_exp_1_21
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	ar5,r6
	mov	a,r7
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r4,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	dptr,#___ulong2fs_a_1_20
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	orl	ar6,a
	mov	a,r1
	orl	ar7,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dptr,#___ulong2fs_fl_1_21
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_ulong2fs.c:117: return (fl.f);
	mov	dptr,#___ulong2fs_fl_1_21
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
