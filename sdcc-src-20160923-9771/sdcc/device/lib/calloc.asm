;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module calloc
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _calloc
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
_calloc_PARM_2:
	.ds 2
_calloc_nmemb_1_41:
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;size                      Allocated with name '_calloc_PARM_2'
;nmemb                     Allocated with name '_calloc_nmemb_1_41'
;ptr                       Allocated with name '_calloc_ptr_1_42'
;------------------------------------------------------------
;	calloc.c:38: void XDATA *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_calloc_nmemb_1_41
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	calloc.c:42: if (ptr = malloc(nmemb * size))
	mov	dptr,#_calloc_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_calloc_nmemb_1_41
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	push	ar0
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	pop	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	mov	a,r4
	orl	a,r5
	jz	00102$
;	calloc.c:43: memset(ptr, 0, nmemb * size);
	mov	ar2,r4
	mov	ar3,r5
	mov	ar1,r3
	mov	r3,#0x00
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	lcall	_memset
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	r0
	movx	a,@r0
	mov	r5,a
	mov	_spx,r0
00102$:
;	calloc.c:45: return(ptr);
	mov	dpl,r4
	mov	dph,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
