;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
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
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
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
_sincosf_PARM_2:
	.ds 1
_sincosf_x_1_25:
	.ds 4
_sincosf_y_1_26:
	.ds 4
_sincosf_f_1_26:
	.ds 4
_sincosf_XN_1_26:
	.ds 4
_sincosf_sign_1_26:
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;sloc1                     Allocated with name '_sincosf_sloc1_1_0'
;iscos                     Allocated with name '_sincosf_PARM_2'
;x                         Allocated with name '_sincosf_x_1_25'
;y                         Allocated with name '_sincosf_y_1_26'
;f                         Allocated with name '_sincosf_f_1_26'
;r                         Allocated with name '_sincosf_r_1_26'
;g                         Allocated with name '_sincosf_g_1_26'
;XN                        Allocated with name '_sincosf_XN_1_26'
;N                         Allocated with name '_sincosf_N_1_26'
;sign                      Allocated with name '_sincosf_sign_1_26'
;------------------------------------------------------------
;	sincosf.c:50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
_sincosf:
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
	mov	dptr,#_sincosf_x_1_25
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
;	sincosf.c:56: if(iscos)
	mov	dptr,#_sincosf_PARM_2
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00105$
;	sincosf.c:58: y=fabsf(x)+HALF_PI;
	mov	dptr,#_sincosf_x_1_25
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
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_fabsf
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xdb
	movx	@dptr,a
	mov	a,#0x0f
	inc	dptr
	movx	@dptr,a
	mov	a,#0xc9
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	dptr,#_sincosf_y_1_26
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
;	sincosf.c:59: sign=0;
	mov	dptr,#_sincosf_sign_1_26
	clr	a
	movx	@dptr,a
	ljmp	00106$
00105$:
;	sincosf.c:63: if(x<0.0)
	mov	dptr,#_sincosf_x_1_25
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
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x05
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fslt
	mov	a,dpl
	push	acc
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r3,a
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	acc
	jz	00102$
;	sincosf.c:64: { y=-x; sign=1; }
	mov	dptr,#_sincosf_y_1_26
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sincosf_sign_1_26
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00106$
00102$:
;	sincosf.c:66: { y=x; sign=0; }
	mov	dptr,#_sincosf_y_1_26
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
	mov	dptr,#_sincosf_sign_1_26
	clr	a
	movx	@dptr,a
00106$:
;	sincosf.c:69: if(y>YMAX)
	mov	dptr,#_sincosf_y_1_26
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
	mov	dptr,#___fsgt_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x0c
	inc	dptr
	movx	@dptr,a
	mov	a,#0x49
	inc	dptr
	movx	@dptr,a
	mov	a,#0x46
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x05
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsgt
	mov	a,dpl
	push	acc
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r3,a
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	acc
	jz	00108$
;	sincosf.c:71: errno=ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sincosf.c:72: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00108$:
;	sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	mov	dptr,#___fsmul_PARM_2
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
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dptr,#0xf983
	mov	b,#0xa2
	mov	a,#0x3e
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	dptr,#___fsadd_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2sint
	mov	r5,dpl
	mov	r6,dph
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	sincosf.c:79: if(N&1) sign=!sign;
	mov	a,r5
	jnb	acc.0,00110$
	mov	dptr,#_sincosf_sign_1_26
	movx	a,@dptr
	mov	r4,a
	cjne	a,#0x01,00144$
00144$:
	clr	a
	rlc	a
	movx	@dptr,a
00110$:
;	sincosf.c:81: XN=N;
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r5
	mov	dph,r6
	lcall	___sint2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	dptr,#_sincosf_XN_1_26
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
;	sincosf.c:83: if(iscos) XN-=0.5;
	mov	a,r7
	jz	00112$
	mov	dptr,#___fssub_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_sincosf_XN_1_26
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
;	sincosf.c:85: y=fabsf(x);
	mov	dptr,#_sincosf_x_1_25
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
	lcall	_fabsf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	sincosf.c:86: r=(int)y;
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r2
	mov	dph,r3
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	ar0
;	sincosf.c:87: g=y-r;
	mov	dptr,#___fssub_PARM_2
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
;	sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r1
	movx	@r0,a
	inc	r0
	pop	acc
	push	acc
	movx	@r0,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	_sincosf_sloc0_1_0,dpl
	mov	(_sincosf_sloc0_1_0 + 1),dph
	mov	(_sincosf_sloc0_1_0 + 2),b
	mov	(_sincosf_sloc0_1_0 + 3),a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	push	acc
	dec	r0
	movx	a,@r0
	mov	r1,a
	dec	r0
	movx	a,@r0
	mov	r2,a
	dec	r0
	movx	a,@r0
	mov	r3,a
	mov	_spx,r0
	mov	dptr,#_sincosf_XN_1_26
	movx	a,@dptr
	mov	_sincosf_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 3),a
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r1
	movx	@r0,a
	inc	r0
	pop	acc
	push	acc
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x0000
	mov	b,#0x49
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	push	acc
	dec	r0
	movx	a,@r0
	mov	r1,a
	dec	r0
	movx	a,@r0
	mov	r2,a
	dec	r0
	movx	a,@r0
	mov	r3,a
	mov	_spx,r0
	pop	ar0
	mov	dptr,#___fssub_PARM_2
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#___fsadd_PARM_2
	mov	a,_sincosf_sloc0_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dptr,#0xaa22
	mov	b,#0x7d
	mov	a,#0x3a
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	ar0
	mov	dptr,#___fssub_PARM_2
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_sincosf_f_1_26
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
;	sincosf.c:90: g=f*f;
	mov	dptr,#___fsmul_PARM_2
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
;	sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_sincosf_sloc1_1_0,dpl
	mov	(_sincosf_sloc1_1_0 + 1),dph
	mov	(_sincosf_sloc1_1_0 + 2),b
	mov	(_sincosf_sloc1_1_0 + 3),a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0xf3
	movx	@dptr,a
	mov	a,#0xff
	inc	dptr
	movx	@dptr,a
	mov	a,#0x7f
	inc	dptr
	movx	@dptr,a
	mov	a,#0x33
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,_sincosf_sloc1_1_0
	mov	dph,(_sincosf_sloc1_1_0 + 1)
	mov	b,(_sincosf_sloc1_1_0 + 2)
	mov	a,(_sincosf_sloc1_1_0 + 3)
	lcall	___fsgt
	mov	a,dpl
	push	acc
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	acc
	jnz	00146$
	ljmp	00114$
00146$:
;	sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x9c5b
	mov	b,#0x2e
	mov	a,#0x36
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	mov	a,#0xb2
	inc	dptr
	movx	@dptr,a
	mov	a,#0x4f
	inc	dptr
	movx	@dptr,a
	mov	a,#0xb9
	inc	dptr
	movx	@dptr,a
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x3e
	movx	@dptr,a
	mov	a,#0x87
	inc	dptr
	movx	@dptr,a
	mov	a,#0x08
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3c
	inc	dptr
	movx	@dptr,a
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xa4
	movx	@dptr,a
	mov	a,#0xaa
	inc	dptr
	movx	@dptr,a
	mov	a,#0x2a
	inc	dptr
	movx	@dptr,a
	mov	a,#0xbe
	inc	dptr
	movx	@dptr,a
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincosf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	sincosf.c:94: f+=f*r;
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	ar0
	mov	dptr,#___fsmul_PARM_2
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
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	pop	ar0
	mov	dptr,#___fsadd_PARM_2
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_sincosf_f_1_26
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
00114$:
;	sincosf.c:96: return (sign?-f:f);
	mov	dptr,#_sincosf_sign_1_26
	movx	a,@dptr
	jz	00117$
	mov	dptr,#_sincosf_f_1_26
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
	cpl	acc.7
	mov	r7,a
	sjmp	00118$
00117$:
	mov	dptr,#_sincosf_f_1_26
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
00118$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
