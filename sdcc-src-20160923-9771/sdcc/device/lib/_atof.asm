;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _aligned_alloc_PARM_2
	.globl _atof
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
_atof_sloc1_1_0:
	.ds 4
_atof_sloc2_1_0:
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
_atof_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_aligned_alloc_PARM_2:
	.ds 2
_atof_s_1_41:
	.ds 3
_atof_value_1_42:
	.ds 4
_atof_fraction_1_42:
	.ds 4
_atof_iexp_1_42:
	.ds 1
_atof_sign_1_42:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
;s                         Allocated with name '_atof_s_1_41'
;__00010001                Allocated with name '_atof___00010001_5_57'
;value                     Allocated with name '_atof_value_1_42'
;fraction                  Allocated with name '_atof_fraction_1_42'
;iexp                      Allocated with name '_atof_iexp_1_42'
;sign                      Allocated with name '_atof_sign_1_42'
;__00030002                Allocated with name '_atof___00030002_4_56'
;c                         Allocated with name '_atof_c_4_56'
;__00020004                Allocated with name '_atof___00020004_6_60'
;__00040005                Allocated with name '_atof___00040005_5_59'
;c                         Allocated with name '_atof_c_5_59'
;------------------------------------------------------------
;	_atof.c:33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_atof_s_1_41
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atof.c:40: while (isspace(*s)) s++;
	mov	dptr,#_atof_s_1_41
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r3
	lcall	_isspace
	mov	a,dpl
	mov	b,dph
	push	acc
	mov	r0,_spx
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
	orl	a,b
	jz	00155$
	inc	r5
	cjne	r5,#0x00,00189$
	inc	r6
00189$:
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00155$:
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atof.c:43: if (*s == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2d,00107$
;	_atof.c:45: sign=1;
	mov	dptr,#_atof_sign_1_42
	mov	a,#0x01
	movx	@dptr,a
;	_atof.c:46: s++;
	mov	dptr,#_atof_s_1_41
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00108$
00107$:
;	_atof.c:50: sign=0;
	mov	dptr,#_atof_sign_1_42
	clr	a
	movx	@dptr,a
;	_atof.c:51: if (*s == '+') s++;
	cjne	r4,#0x2b,00108$
	mov	dptr,#_atof_s_1_41
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00108$:
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	mov	dptr,#_atof_value_1_42
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_atof_s_1_41
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00126$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
;	C:/arc/Arduino_IDE/sdcc-src-20160923-9771/sdcc/bin_vc/../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r4,#0x30,00194$
00194$:
	mov	_atof_sloc0_1_0,c
	jnc	00195$
	ljmp	00156$
00195$:
	mov	a,r4
	add	a,#0xff - 0x39
	mov	_atof_sloc0_1_0,c
	jnc	00196$
	ljmp	00156$
00196$:
;	_atof.c:57: value=10.0*value+(*s-'0');
	mov	dptr,#_atof_value_1_42
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#___fsmul_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_sloc1_1_0,dpl
	mov	(_atof_sloc1_1_0 + 1),dph
	mov	(_atof_sloc1_1_0 + 2),b
	mov	(_atof_sloc1_1_0 + 3),a
	mov	r0,_spx
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r4,#0x00
	mov	a,r0
	add	a,#0xd0
	mov	r0,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r4
	lcall	___sint2fs
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	r0,_spx
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
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	mov	a,(_atof_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	r0,_spx
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
	mov	dptr,#_atof_value_1_42
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00126$
00156$:
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atof.c:61: if (*s == '.')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2e,00197$
	sjmp	00198$
00197$:
	ljmp	00112$
00198$:
;	_atof.c:63: s++;
	inc	r5
	cjne	r5,#0x00,00199$
	inc	r6
00199$:
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	mov	dptr,#_atof_fraction_1_42
	mov	a,#0xcd
	movx	@dptr,a
	dec	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3d
	inc	dptr
	movx	@dptr,a
00129$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
;	C:/arc/Arduino_IDE/sdcc-src-20160923-9771/sdcc/bin_vc/../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r4,#0x30,00200$
00200$:
	mov	_atof_sloc0_1_0,c
	jnc	00201$
	ljmp	00157$
00201$:
	mov	a,r4
	add	a,#0xff - 0x39
	mov	_atof_sloc0_1_0,c
	jnc	00202$
	ljmp	00157$
00202$:
;	_atof.c:66: value+=(*s-'0')*fraction;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	_atof_sloc1_1_0,a
	mov	a,r3
	addc	a,#0xff
	mov	(_atof_sloc1_1_0 + 1),a
	mov	dptr,#_atof_fraction_1_42
	movx	a,@dptr
	mov	_atof_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_atof_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_atof_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_atof_sloc2_1_0 + 3),a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	lcall	___sint2fs
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	r0,_spx
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
	mov	a,_atof_sloc2_1_0
	movx	@dptr,a
	mov	a,(_atof_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atof_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atof_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	___fsmul
	mov	_atof_sloc1_1_0,dpl
	mov	(_atof_sloc1_1_0 + 1),dph
	mov	(_atof_sloc1_1_0 + 2),b
	mov	(_atof_sloc1_1_0 + 3),a
	mov	r0,_spx
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
	mov	dptr,#_atof_value_1_42
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#___fsadd_PARM_2
	mov	a,_atof_sloc1_1_0
	movx	@dptr,a
	mov	a,(_atof_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atof_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atof_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	___fsadd
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	r0,_spx
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
	mov	dptr,#_atof_value_1_42
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_atof.c:67: fraction*=0.1;
	mov	dptr,#___fsmul_PARM_2
	mov	a,_atof_sloc2_1_0
	movx	@dptr,a
	mov	a,(_atof_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atof_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atof_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dptr,#0xcccd
	mov	b,#0xcc
	mov	a,#0x3d
	lcall	___fsmul
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	r0,_spx
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
	mov	dptr,#_atof_fraction_1_42
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00129$
00157$:
	mov	dptr,#_atof_s_1_41
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00112$:
;	_atof.c:72: if (toupper(*s)=='E')
	mov	dptr,#_atof_s_1_41
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r3
	lcall	_toupper
	mov	r3,dpl
	mov	r4,dph
	mov	r0,_spx
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
	cjne	r3,#0x45,00203$
	cjne	r4,#0x00,00203$
	sjmp	00204$
00203$:
	ljmp	00120$
00204$:
;	_atof.c:74: s++;
	mov	dptr,#_atof_s_1_41
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atof.c:75: iexp=(signed char)atoi(s);
	mov	dptr,#_atof_s_1_41
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_atof_iexp_1_42
	mov	a,r6
	movx	@dptr,a
;	_atof.c:77: while(iexp!=0)
00116$:
	mov	dptr,#_atof_iexp_1_42
	movx	a,@dptr
	mov	r7,a
	jnz	00205$
	ljmp	00120$
00205$:
;	_atof.c:79: if(iexp<0)
	mov	a,r7
	jnb	acc.7,00114$
;	_atof.c:81: value*=0.1;
	mov	dptr,#_atof_value_1_42
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
	mov	dptr,#0xcccd
	mov	b,#0xcc
	mov	a,#0x3d
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
	mov	dptr,#_atof_value_1_42
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
;	_atof.c:82: iexp++;
	mov	dptr,#_atof_iexp_1_42
	mov	a,r7
	inc	a
	movx	@dptr,a
	sjmp	00116$
00114$:
;	_atof.c:86: value*=10.0;
	mov	dptr,#_atof_value_1_42
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
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
	mov	dptr,#_atof_value_1_42
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
;	_atof.c:87: iexp--;
	mov	a,r7
	dec	a
	mov	dptr,#_atof_iexp_1_42
	movx	@dptr,a
	ljmp	00116$
00120$:
;	_atof.c:93: if(sign) value*=-1.0;
	mov	dptr,#_atof_sign_1_42
	movx	a,@dptr
	jz	00122$
	mov	dptr,#_atof_value_1_42
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
	mov	dptr,#_atof_value_1_42
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
00122$:
;	_atof.c:94: return (value);
	mov	dptr,#_atof_value_1_42
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
