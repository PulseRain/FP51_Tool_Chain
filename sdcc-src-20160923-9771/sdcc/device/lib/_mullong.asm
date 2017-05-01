;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_PARM_2
	.globl __mullong
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
__mullong_PARM_2:
	.ds 4
__mullong_a_1_1:
	.ds 4
__mullong_t_1_2:
	.ds 4
__mullong_u_1_2:
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;b                         Allocated with name '__mullong_PARM_2'
;a                         Allocated with name '__mullong_a_1_1'
;t                         Allocated with name '__mullong_t_1_2'
;u                         Allocated with name '__mullong_u_1_2'
;------------------------------------------------------------
;	_mullong.c:678: _mullong (long a, long b)
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
__mullong:
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
	mov	dptr,#__mullong_a_1_1
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
;	_mullong.c:682: t.i.hi   = bcast(a)->b.b0 * bcast(b)->b.b2;          // A
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__mullong_PARM_2 + 0x0002)
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_mullong.c:683: t.i.lo   = bcast(a)->b.b0 * bcast(b)->b.b0;          // A
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	dptr,#__mullong_t_1_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_mullong.c:684: u.bi.b3  = bcast(a)->b.b0 * bcast(b)->b.b3;          // B
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__mullong_PARM_2 + 0x0003)
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	dptr,#(__mullong_u_1_2 + 0x0003)
	movx	@dptr,a
;	_mullong.c:685: u.bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1;          // B
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__mullong_PARM_2 + 0x0001)
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	dptr,#(__mullong_u_1_2 + 0x0001)
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_mullong.c:686: u.bi.b0  = 0;                                        // B
	mov	dptr,#__mullong_u_1_2
	clr	a
	movx	@dptr,a
;	_mullong.c:687: t.l += u.l;
	mov	dptr,#__mullong_t_1_2
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
	mov	dptr,#__mullong_u_1_2
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
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#__mullong_t_1_2
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
;	_mullong.c:689: t.b.b3  += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__mullong_a_1_1 + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r6
	mul	ab
	add	a,r7
	mov	r7,a
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	@dptr,a
;	_mullong.c:690: t.b.b3  += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	mov	dptr,#(__mullong_a_1_1 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(__mullong_PARM_2 + 0x0001)
	movx	a,@dptr
	mov	b,r6
	mul	ab
	add	a,r7
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	@dptr,a
;	_mullong.c:691: t.i.hi  += bcast(a)->b.b2 * bcast(b)->b.b0;          // E
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__mullong_a_1_1 + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r5
	mul	ab
	mov	r3,b
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_mullong.c:692: t.i.hi  += bcast(a)->b.b1 * bcast(b)->b.b1;          // D
	mov	dptr,#(__mullong_a_1_1 + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(__mullong_PARM_2 + 0x0001)
	movx	a,@dptr
	mov	b,r5
	mul	ab
	mov	r3,b
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_mullong.c:694: u.bi.b3  = bcast(a)->b.b1 * bcast(b)->b.b2;          // C
	mov	dptr,#(__mullong_a_1_1 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(__mullong_PARM_2 + 0x0002)
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	dptr,#(__mullong_u_1_2 + 0x0003)
	movx	@dptr,a
;	_mullong.c:695: u.bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0;          // C
	mov	dptr,#(__mullong_a_1_1 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	dptr,#(__mullong_u_1_2 + 0x0001)
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_mullong.c:696: u.bi.b0  = 0;                                        // C
	mov	dptr,#__mullong_u_1_2
	clr	a
	movx	@dptr,a
;	_mullong.c:697: t.l += u.l;
	mov	dptr,#__mullong_t_1_2
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
	mov	dptr,#__mullong_u_1_2
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
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#__mullong_t_1_2
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
;	_mullong.c:699: return t.l;
	mov	dptr,#__mullong_t_1_2
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
