;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module assert
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __assert
	.globl _printf
	.globl __assert_PARM_3
	.globl __assert_PARM_2
	.globl _aligned_alloc_PARM_2
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
_aligned_alloc_PARM_2:
	.ds 2
__assert_PARM_2:
	.ds 3
__assert_PARM_3:
	.ds 2
__assert_expr_1_31:
	.ds 3
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
;Allocation info for local variables in function '_assert'
;------------------------------------------------------------
;filename                  Allocated with name '__assert_PARM_2'
;linenumber                Allocated with name '__assert_PARM_3'
;expr                      Allocated with name '__assert_expr_1_31'
;------------------------------------------------------------
;	assert.c:32: void _assert(char *expr, const char *filename, unsigned int linenumber)
;	-----------------------------------------
;	 function _assert
;	-----------------------------------------
__assert:
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
	mov	dptr,#__assert_expr_1_31
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	assert.c:34: printf("Assert(%s) failed at line %u in file %s.\n",
	mov	dptr,#__assert_PARM_2
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	inc	dptr
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	inc	dptr
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	mov	dptr,#__assert_PARM_3
	mov	r0,_spx
	inc	_spx
	inc	_spx
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	inc	dptr
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	mov	dptr,#__assert_expr_1_31
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	inc	dptr
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	inc	dptr
	movx	a,@dptr
	movx	@r0,a
	inc	r0
	mov	a,_spx
	mov	r0,a
	add	a,#0x03
	mov	_spx,a
	mov	a,#___str_0
	movx	@r0,a
	inc	r0
	mov	a,#(___str_0 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	lcall	_printf
	mov	a,_spx
	add	a,#0xf5
	mov	_spx,a
;	assert.c:36: while(1);
00102$:
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Assert(%s) failed at line %u in file %s."
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
