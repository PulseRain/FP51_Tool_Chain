;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul_PARM_2
	.globl ___fsmul
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
___fsmul_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
___fsmul_PARM_2:
	.ds 4
___fsmul_a1_1_20:
	.ds 4
___fsmul_fl1_1_21:
	.ds 4
___fsmul_fl2_1_21:
	.ds 4
___fsmul_result_1_21:
	.ds 4
___fsmul_exp_1_21:
	.ds 2
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fsmul_sloc0_1_0'
;a2                        Allocated with name '___fsmul_PARM_2'
;a1                        Allocated with name '___fsmul_a1_1_20'
;fl1                       Allocated with name '___fsmul_fl1_1_21'
;fl2                       Allocated with name '___fsmul_fl2_1_21'
;result                    Allocated with name '___fsmul_result_1_21'
;exp                       Allocated with name '___fsmul_exp_1_21'
;sign                      Allocated with name '___fsmul_sign_1_21'
;------------------------------------------------------------
;	_fsmul.c:241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
___fsmul:
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
	mov	dptr,#___fsmul_a1_1_20
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
;	_fsmul.c:247: fl1.f = a1;
	mov	dptr,#___fsmul_a1_1_20
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
	mov	dptr,#___fsmul_fl1_1_21
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:248: fl2.f = a2;
	mov	dptr,#___fsmul_PARM_2
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
	mov	dptr,#___fsmul_fl2_1_21
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:250: if (!fl1.l || !fl2.l)
	mov	dptr,#___fsmul_fl1_1_21
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
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00101$
	mov	dptr,#___fsmul_fl2_1_21
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
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00102$
00101$:
;	_fsmul.c:251: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	_fsmul.c:254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	mov	dptr,#___fsmul_fl1_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r4,a
	mov	dptr,#___fsmul_fl2_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	xrl	a,r4
	mov	r7,a
;	_fsmul.c:255: exp = EXP (fl1.l) - EXCESS;
	mov	dptr,#___fsmul_fl1_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	ar3,r5
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	clr	a
	mov	r4,a
	mov	a,r3
	add	a,#0x82
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#___fsmul_exp_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:256: exp += EXP (fl2.l);
	mov	dptr,#___fsmul_fl2_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	ar3,r5
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	r4,#0x00
	mov	dptr,#___fsmul_exp_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	ar1,r5
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	dptr,#___fsmul_exp_1_21
	mov	a,r3
	add	a,r1
	movx	@dptr,a
	mov	a,r4
	addc	a,r2
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:258: fl1.l = MANT (fl1.l);
	mov	dptr,#___fsmul_fl1_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	anl	ar5,#0x7f
	mov	r6,#0x00
	orl	ar5,#0x80
	mov	dptr,#___fsmul_fl1_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:259: fl2.l = MANT (fl2.l);
	mov	dptr,#___fsmul_fl2_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	anl	ar5,#0x7f
	mov	r6,#0x00
	orl	ar5,#0x80
	mov	dptr,#___fsmul_fl2_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:262: result = (fl1.l >> 8) * (fl2.l >> 8);
	mov	dptr,#___fsmul_fl1_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	___fsmul_sloc0_1_0,r4
	mov	(___fsmul_sloc0_1_0 + 1),r5
	mov	(___fsmul_sloc0_1_0 + 2),r6
	mov	(___fsmul_sloc0_1_0 + 3),#0x00
	mov	dptr,#___fsmul_fl2_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar0,r1
	mov	ar1,r2
	mov	ar2,r6
	mov	r6,#0x00
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,___fsmul_sloc0_1_0
	mov	dph,(___fsmul_sloc0_1_0 + 1)
	mov	b,(___fsmul_sloc0_1_0 + 2)
	mov	a,(___fsmul_sloc0_1_0 + 3)
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	dptr,#___fsmul_result_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:263: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	mov	dptr,#___fsmul_fl1_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	___fsmul_sloc0_1_0,r3
	mov	(___fsmul_sloc0_1_0 + 1),#0x00
	mov	(___fsmul_sloc0_1_0 + 2),#0x00
	mov	(___fsmul_sloc0_1_0 + 3),#0x00
	mov	dptr,#___fsmul_fl2_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar0,r1
	mov	ar1,r2
	mov	ar2,r6
	mov	r6,#0x00
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,___fsmul_sloc0_1_0
	mov	dph,(___fsmul_sloc0_1_0 + 1)
	mov	b,(___fsmul_sloc0_1_0 + 2)
	mov	a,(___fsmul_sloc0_1_0 + 3)
	lcall	__mullong
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	___fsmul_sloc0_1_0,r4
	mov	(___fsmul_sloc0_1_0 + 1),r5
	mov	(___fsmul_sloc0_1_0 + 2),r6
	mov	(___fsmul_sloc0_1_0 + 3),#0x00
	mov	dptr,#___fsmul_result_1_21
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
	mov	r6,a
	mov	dptr,#___fsmul_result_1_21
	mov	a,___fsmul_sloc0_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(___fsmul_sloc0_1_0 + 1)
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsmul_sloc0_1_0 + 2)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsmul_sloc0_1_0 + 3)
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:264: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	mov	dptr,#___fsmul_fl2_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	___fsmul_sloc0_1_0,r3
	mov	(___fsmul_sloc0_1_0 + 1),#0x00
	mov	(___fsmul_sloc0_1_0 + 2),#0x00
	mov	(___fsmul_sloc0_1_0 + 3),#0x00
	mov	dptr,#___fsmul_fl1_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar0,r1
	mov	ar1,r2
	mov	ar2,r6
	mov	r6,#0x00
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,___fsmul_sloc0_1_0
	mov	dph,(___fsmul_sloc0_1_0 + 1)
	mov	b,(___fsmul_sloc0_1_0 + 2)
	mov	a,(___fsmul_sloc0_1_0 + 3)
	lcall	__mullong
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	___fsmul_sloc0_1_0,r4
	mov	(___fsmul_sloc0_1_0 + 1),r5
	mov	(___fsmul_sloc0_1_0 + 2),r6
	mov	(___fsmul_sloc0_1_0 + 3),#0x00
	mov	dptr,#___fsmul_result_1_21
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
	mov	r6,a
	mov	dptr,#___fsmul_result_1_21
	mov	a,___fsmul_sloc0_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(___fsmul_sloc0_1_0 + 1)
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsmul_sloc0_1_0 + 2)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(___fsmul_sloc0_1_0 + 3)
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:267: result += 0x40;
	mov	dptr,#___fsmul_result_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#___fsmul_result_1_21
	mov	a,#0x40
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:269: if (result & SIGNBIT)
	mov	dptr,#___fsmul_result_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	jnb	acc.7,00105$
;	_fsmul.c:272: result += 0x40;
	mov	dptr,#___fsmul_result_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#___fsmul_result_1_21
	mov	a,#0x40
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:273: result >>= 8;
	mov	dptr,#___fsmul_result_1_21
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r4
	mov	ar4,r5
	mov	ar5,r6
	mov	r6,#0x00
	mov	dptr,#___fsmul_result_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00105$:
;	_fsmul.c:277: result >>= 7;
	mov	dptr,#___fsmul_result_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	r4,a
	mov	a,r5
	add	a,r5
	orl	a,r4
	mov	r4,a
	mov	a,r6
	mov	c,acc.7
	xch	a,r5
	rlc	a
	xch	a,r5
	rlc	a
	xch	a,r5
	anl	a,#0x01
	mov	r6,a
	mov	dptr,#___fsmul_result_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:278: exp--;
	mov	dptr,#___fsmul_exp_1_21
	movx	a,@dptr
	add	a,#0xff
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r6,a
	mov	dptr,#___fsmul_exp_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00106$:
;	_fsmul.c:281: result &= ~HIDDEN;
	mov	dptr,#___fsmul_result_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#___fsmul_result_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,#0x7f
	anl	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsmul.c:284: if (exp >= 0x100)
	mov	dptr,#___fsmul_exp_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x81
	jc	00111$
;	_fsmul.c:285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	mov	a,r7
	jz	00115$
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x80
	sjmp	00116$
00115$:
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00116$:
	orl	ar5,#0x80
	orl	ar6,#0x7f
	mov	dptr,#___fsmul_fl1_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00112$
00111$:
;	_fsmul.c:286: else if (exp < 0)
	mov	dptr,#___fsmul_exp_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	jnb	acc.7,00108$
;	_fsmul.c:287: fl1.l = 0;
	mov	dptr,#___fsmul_fl1_1_21
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00112$
00108$:
;	_fsmul.c:289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	mov	a,r7
	jz	00117$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x80
	sjmp	00118$
00117$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
	mov	dptr,#___fsmul_exp_1_21
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	ar0,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	ar2,r0
	mov	a,r1
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	clr	a
	mov	r1,a
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	dptr,#___fsmul_result_1_21
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
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	dptr,#___fsmul_fl1_1_21
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00112$:
;	_fsmul.c:290: return (fl1.f);
	mov	dptr,#___fsmul_fl1_1_21
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
