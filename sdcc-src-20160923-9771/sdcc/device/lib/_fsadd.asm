;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd
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
___fsadd_sloc0_1_0:
	.ds 4
___fsadd_sloc1_1_0:
	.ds 2
___fsadd_sloc2_1_0:
	.ds 4
___fsadd_sloc3_1_0:
	.ds 4
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
___fsadd_PARM_2:
	.ds 4
___fsadd_a1_1_20:
	.ds 4
___fsadd_mant1_1_21:
	.ds 4
___fsadd_mant2_1_21:
	.ds 4
___fsadd_exp1_1_21:
	.ds 2
___fsadd_sign_1_21:
	.ds 1
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a2                        Allocated with name '___fsadd_PARM_2'
;a1                        Allocated with name '___fsadd_a1_1_20'
;mant1                     Allocated with name '___fsadd_mant1_1_21'
;mant2                     Allocated with name '___fsadd_mant2_1_21'
;pfl1                      Allocated with name '___fsadd_pfl1_1_21'
;pfl2                      Allocated with name '___fsadd_pfl2_1_21'
;exp1                      Allocated with name '___fsadd_exp1_1_21'
;exp2                      Allocated with name '___fsadd_exp2_1_21'
;expd                      Allocated with name '___fsadd_expd_1_21'
;sign                      Allocated with name '___fsadd_sign_1_21'
;sloc0                     Allocated with name '___fsadd_sloc0_1_0'
;sloc1                     Allocated with name '___fsadd_sloc1_1_0'
;sloc2                     Allocated with name '___fsadd_sloc2_1_0'
;sloc3                     Allocated with name '___fsadd_sloc3_1_0'
;------------------------------------------------------------
;	_fsadd.c:170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
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
	mov	dptr,#___fsadd_a1_1_20
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
;	_fsadd.c:178: pfl2 = (long _AUTOMEM *)&a2;
;	_fsadd.c:179: exp2 = EXP (*pfl2);
	mov	dptr,#___fsadd_PARM_2
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
	mov	___fsadd_sloc0_1_0,r4
	mov	(___fsadd_sloc0_1_0 + 1),r5
	mov	(___fsadd_sloc0_1_0 + 2),r6
	mov	(___fsadd_sloc0_1_0 + 3),r7
	mov	r0,(___fsadd_sloc0_1_0 + 2)
	mov	a,(___fsadd_sloc0_1_0 + 3)
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r3,#0x00
	mov	___fsadd_sloc1_1_0,r0
;	1-genFromRTrack replaced	mov	(___fsadd_sloc1_1_0 + 1),#0x00
	mov	(___fsadd_sloc1_1_0 + 1),r3
;	_fsadd.c:180: mant2 = MANT (*pfl2) << 4;
	mov	ar0,r4
	mov	ar1,r5
	mov	a,#0x7f
	anl	a,r6
	mov	r2,a
	mov	r3,#0x00
	orl	ar2,#0x80
	mov	(___fsadd_sloc2_1_0 + 2),r2
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,(___fsadd_sloc2_1_0 + 2)
	swap	a
	xch	a,(___fsadd_sloc2_1_0 + 2)
	xrl	a,(___fsadd_sloc2_1_0 + 2)
	xch	a,(___fsadd_sloc2_1_0 + 2)
	anl	a,#0xf0
	xch	a,(___fsadd_sloc2_1_0 + 2)
	xrl	a,(___fsadd_sloc2_1_0 + 2)
	mov	(___fsadd_sloc2_1_0 + 3),a
	mov	a,r1
	swap	a
	anl	a,#0x0f
	orl	a,(___fsadd_sloc2_1_0 + 2)
	mov	(___fsadd_sloc2_1_0 + 2),a
	mov	___fsadd_sloc2_1_0,r0
	mov	a,r1
	swap	a
	anl	a,#0xf0
	xch	a,___fsadd_sloc2_1_0
	swap	a
	xch	a,___fsadd_sloc2_1_0
	xrl	a,___fsadd_sloc2_1_0
	xch	a,___fsadd_sloc2_1_0
	anl	a,#0xf0
	xch	a,___fsadd_sloc2_1_0
	xrl	a,___fsadd_sloc2_1_0
	mov	(___fsadd_sloc2_1_0 + 1),a
	mov	dptr,#___fsadd_mant2_1_21
	mov	a,___fsadd_sloc2_1_0
	movx	@dptr,a
	mov	a,(___fsadd_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsadd_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsadd_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:181: if (SIGN (*pfl2))
	mov	a,(___fsadd_sloc0_1_0 + 3)
	rl	a
	anl	a,#0x01
	mov	r3,a
	jz	00102$
;	_fsadd.c:182: mant2 = -mant2;
	mov	dptr,#___fsadd_mant2_1_21
	clr	c
	clr	a
	subb	a,___fsadd_sloc2_1_0
	movx	@dptr,a
	clr	a
	subb	a,(___fsadd_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(___fsadd_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(___fsadd_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00102$:
;	_fsadd.c:184: if (!*pfl2)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00104$
;	_fsadd.c:185: return (a1);
	mov	dptr,#___fsadd_a1_1_20
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
00104$:
;	_fsadd.c:187: pfl1 = (long _AUTOMEM *)&a1;
;	_fsadd.c:188: exp1 = EXP (*pfl1);
	mov	dptr,#___fsadd_a1_1_20
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
	mov	___fsadd_sloc2_1_0,r4
	mov	(___fsadd_sloc2_1_0 + 1),r5
	mov	(___fsadd_sloc2_1_0 + 2),r6
	mov	(___fsadd_sloc2_1_0 + 3),r7
	mov	r0,(___fsadd_sloc2_1_0 + 2)
	mov	a,(___fsadd_sloc2_1_0 + 3)
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r3,#0x00
	mov	___fsadd_sloc0_1_0,r0
;	1-genFromRTrack replaced	mov	(___fsadd_sloc0_1_0 + 1),#0x00
	mov	(___fsadd_sloc0_1_0 + 1),r3
	mov	dptr,#___fsadd_exp1_1_21
	mov	a,___fsadd_sloc0_1_0
	movx	@dptr,a
	mov	a,(___fsadd_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:189: mant1 = MANT (*pfl1) << 4;
	mov	ar0,r4
	mov	ar1,r5
	mov	a,#0x7f
	anl	a,r6
	mov	r2,a
	mov	r3,#0x00
	orl	ar2,#0x80
	mov	(___fsadd_sloc3_1_0 + 2),r2
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,(___fsadd_sloc3_1_0 + 2)
	swap	a
	xch	a,(___fsadd_sloc3_1_0 + 2)
	xrl	a,(___fsadd_sloc3_1_0 + 2)
	xch	a,(___fsadd_sloc3_1_0 + 2)
	anl	a,#0xf0
	xch	a,(___fsadd_sloc3_1_0 + 2)
	xrl	a,(___fsadd_sloc3_1_0 + 2)
	mov	(___fsadd_sloc3_1_0 + 3),a
	mov	a,r1
	swap	a
	anl	a,#0x0f
	orl	a,(___fsadd_sloc3_1_0 + 2)
	mov	(___fsadd_sloc3_1_0 + 2),a
	mov	___fsadd_sloc3_1_0,r0
	mov	a,r1
	swap	a
	anl	a,#0xf0
	xch	a,___fsadd_sloc3_1_0
	swap	a
	xch	a,___fsadd_sloc3_1_0
	xrl	a,___fsadd_sloc3_1_0
	xch	a,___fsadd_sloc3_1_0
	anl	a,#0xf0
	xch	a,___fsadd_sloc3_1_0
	xrl	a,___fsadd_sloc3_1_0
	mov	(___fsadd_sloc3_1_0 + 1),a
	mov	dptr,#___fsadd_mant1_1_21
	mov	a,___fsadd_sloc3_1_0
	movx	@dptr,a
	mov	a,(___fsadd_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsadd_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsadd_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:190: if (SIGN(*pfl1))
	mov	a,(___fsadd_sloc2_1_0 + 3)
	rl	a
	anl	a,#0x01
	mov	r3,a
	jz	00108$
;	_fsadd.c:191: if (*pfl1 & 0x80000000)
	mov	a,r7
	jnb	acc.7,00108$
;	_fsadd.c:192: mant1 = -mant1;
	mov	dptr,#___fsadd_mant1_1_21
	clr	c
	clr	a
	subb	a,___fsadd_sloc3_1_0
	movx	@dptr,a
	clr	a
	subb	a,(___fsadd_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(___fsadd_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(___fsadd_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00108$:
;	_fsadd.c:194: if (!*pfl1)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00110$
;	_fsadd.c:195: return (a2);
	mov	dptr,#___fsadd_PARM_2
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
00110$:
;	_fsadd.c:197: expd = exp1 - exp2;
	mov	a,___fsadd_sloc0_1_0
	clr	c
	subb	a,___fsadd_sloc1_1_0
	mov	r6,a
	mov	a,(___fsadd_sloc0_1_0 + 1)
	subb	a,(___fsadd_sloc1_1_0 + 1)
	mov	r7,a
;	_fsadd.c:198: if (expd > 25)
	clr	c
	mov	a,#0x19
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
;	_fsadd.c:199: return (a1);
	mov	dptr,#___fsadd_a1_1_20
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00112$:
;	_fsadd.c:200: if (expd < -25)
	clr	c
	mov	a,r6
	subb	a,#0xe7
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00114$
;	_fsadd.c:201: return (a2);
	mov	dptr,#___fsadd_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00114$:
;	_fsadd.c:203: if (expd < 0)
	mov	a,r7
	jnb	acc.7,00116$
;	_fsadd.c:205: expd = -expd;
	clr	c
	clr	a
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
;	_fsadd.c:206: exp1 += expd;
	mov	dptr,#___fsadd_exp1_1_21
	mov	a,r4
	add	a,___fsadd_sloc0_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a,(___fsadd_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:207: mant1 >>= expd;
	mov	dptr,#___fsadd_mant1_1_21
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
	mov	b,r4
	inc	b
	mov	a,r3
	rlc	a
	mov	ov,c
	sjmp	00211$
00210$:
	mov	c,ov
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
00211$:
	djnz	b,00210$
	mov	dptr,#___fsadd_mant1_1_21
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00117$
00116$:
;	_fsadd.c:211: mant2 >>= expd;
	mov	dptr,#___fsadd_mant2_1_21
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
	mov	b,r6
	inc	b
	mov	a,r5
	rlc	a
	mov	ov,c
	sjmp	00213$
00212$:
	mov	c,ov
	mov	a,r5
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
00213$:
	djnz	b,00212$
	mov	dptr,#___fsadd_mant2_1_21
	mov	a,r2
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
00117$:
;	_fsadd.c:213: mant1 += mant2;
	mov	dptr,#___fsadd_mant2_1_21
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
	mov	dptr,#___fsadd_mant1_1_21
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
	mov	dptr,#___fsadd_mant1_1_21
	mov	a,r4
	add	a,r0
	movx	@dptr,a
	mov	a,r5
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:215: sign = false;
	mov	dptr,#___fsadd_sign_1_21
	clr	a
	movx	@dptr,a
;	_fsadd.c:217: if (mant1 < 0)
	mov	dptr,#___fsadd_mant1_1_21
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
	jnb	acc.7,00121$
;	_fsadd.c:219: mant1 = -mant1;
	mov	dptr,#___fsadd_mant1_1_21
	clr	c
	clr	a
	subb	a,r4
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:220: sign = true;
	mov	dptr,#___fsadd_sign_1_21
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00154$
00121$:
;	_fsadd.c:222: else if (!mant1)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00154$
;	_fsadd.c:223: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
;	_fsadd.c:226: while (mant1 < (HIDDEN<<4)) {
00154$:
	mov	dptr,#___fsadd_exp1_1_21
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00123$:
	push	ar6
	push	ar7
	mov	dptr,#___fsadd_mant1_1_21
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
	mov	ar0,r2
	mov	ar1,r3
	mov	ar6,r4
	mov	ar7,r5
	clr	c
	mov	a,r7
	subb	a,#0x08
	pop	ar7
	pop	ar6
	jnc	00157$
;	_fsadd.c:227: mant1 <<= 1;
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#___fsadd_mant1_1_21
	mov	a,r2
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
;	_fsadd.c:228: exp1--;
	dec	r6
	cjne	r6,#0xff,00217$
	dec	r7
00217$:
;	_fsadd.c:232: while (mant1 & 0xf0000000) {
	sjmp	00123$
00157$:
	mov	___fsadd_sloc3_1_0,r6
	mov	(___fsadd_sloc3_1_0 + 1),r7
00128$:
	mov	dptr,#___fsadd_mant1_1_21
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
	anl	a,#0xf0
	jz	00130$
;	_fsadd.c:233: if (mant1&1)
	mov	a,r2
	jnb	acc.0,00127$
;	_fsadd.c:234: mant1 += 2;
	mov	dptr,#___fsadd_mant1_1_21
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00127$:
;	_fsadd.c:235: mant1 >>= 1;
	mov	dptr,#___fsadd_mant1_1_21
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	dptr,#___fsadd_mant1_1_21
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
;	_fsadd.c:236: exp1++;
	inc	___fsadd_sloc3_1_0
	clr	a
	cjne	a,___fsadd_sloc3_1_0,00128$
	inc	(___fsadd_sloc3_1_0 + 1)
	sjmp	00128$
00130$:
;	_fsadd.c:240: mant1 &= ~(HIDDEN<<4);
	mov	dptr,#___fsadd_mant1_1_21
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,#0xf7
	anl	a,r5
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:243: if (exp1 >= 0x100)
	clr	c
	mov	a,(___fsadd_sloc3_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jc	00135$
;	_fsadd.c:244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	mov	r6,#___fsadd_a1_1_20
	mov	r7,#(___fsadd_a1_1_20 >> 8)
	mov	dptr,#___fsadd_sign_1_21
	movx	a,@dptr
	jz	00139$
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x80
	mov	r5,#0xff
	sjmp	00140$
00139$:
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x80
	mov	r5,#0x7f
00140$:
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
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
	ljmp	00136$
00135$:
;	_fsadd.c:245: else if (exp1 < 0)
	mov	a,(___fsadd_sloc3_1_0 + 1)
	jnb	acc.7,00132$
;	_fsadd.c:246: *pfl1 = 0;
	mov	dptr,#___fsadd_a1_1_20
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00136$
00132$:
;	_fsadd.c:248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	mov	___fsadd_sloc2_1_0,#___fsadd_a1_1_20
	mov	(___fsadd_sloc2_1_0 + 1),#(___fsadd_a1_1_20 >> 8)
	mov	dptr,#___fsadd_sign_1_21
	movx	a,@dptr
	jz	00141$
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x80
	sjmp	00142$
00141$:
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00142$:
	mov	r0,___fsadd_sloc3_1_0
	mov	a,(___fsadd_sloc3_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	ar6,r0
	mov	a,r1
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	clr	a
	mov	r1,a
	orl	ar2,a
	mov	a,r1
	orl	ar3,a
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dptr,#___fsadd_mant1_1_21
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r1
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r1
	mov	r1,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00225$
	orl	a,#0xf0
00225$:
	mov	r7,a
	mov	a,r0
	orl	ar2,a
	mov	a,r1
	orl	ar3,a
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dpl,___fsadd_sloc2_1_0
	mov	dph,(___fsadd_sloc2_1_0 + 1)
	mov	a,r2
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
00136$:
;	_fsadd.c:249: return (a1);
	mov	dptr,#___fsadd_a1_1_20
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
