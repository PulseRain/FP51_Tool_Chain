;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module gets
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
	.globl _putchar
	.globl _getchar
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
_gets_s_1_11:
	.ds 3
_gets_count_1_12:
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_1_11'
;c                         Allocated with name '_gets_c_1_12'
;count                     Allocated with name '_gets_count_1_12'
;------------------------------------------------------------
;	gets.c:32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
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
	mov	dptr,#_gets_s_1_11
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	gets.c:35: unsigned int count = 0;
	mov	dptr,#_gets_count_1_12
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	gets.c:37: while (1)
00109$:
;	gets.c:39: c = getchar ();
	lcall	_getchar
	mov	r7,dpl
;	gets.c:40: switch(c)
	cjne	r7,#0x08,00128$
	sjmp	00101$
00128$:
	cjne	r7,#0x0a,00129$
	ljmp	00105$
00129$:
	cjne	r7,#0x0d,00130$
	ljmp	00105$
00130$:
	ljmp	00106$
;	gets.c:42: case '\b': /* backspace */
00101$:
;	gets.c:43: if (count)
	mov	dptr,#_gets_count_1_12
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gets_count_1_12
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00109$
;	gets.c:45: putchar ('\b');
	push	ar0
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x0008
	lcall	_putchar
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	mov	_spx,r0
;	gets.c:46: putchar (' ');
	push	ar0
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x0020
	lcall	_putchar
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	mov	_spx,r0
;	gets.c:47: putchar ('\b');
	push	ar0
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x0008
	lcall	_putchar
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	mov	_spx,r0
;	gets.c:48: --s;
	mov	dptr,#_gets_s_1_11
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_gets_s_1_11
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	gets.c:49: --count;
	dec	r5
	cjne	r5,#0xff,00132$
	dec	r6
00132$:
	mov	dptr,#_gets_count_1_12
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	gets.c:51: break;
	ljmp	00109$
;	gets.c:54: case '\r': /* CR or LF */
00105$:
;	gets.c:55: putchar ('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	gets.c:56: putchar ('\n');
	mov	dptr,#0x000a
	lcall	_putchar
;	gets.c:57: *s = 0;
	mov	dptr,#_gets_s_1_11
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	gets.c:58: return s;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	gets.c:60: default:
	ret
00106$:
;	gets.c:61: *s++ = c;
	mov	dptr,#_gets_s_1_11
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	dptr,#_gets_s_1_11
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	gets.c:62: ++count;
	mov	dptr,#_gets_count_1_12
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	gets.c:63: putchar (c);
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
;	gets.c:65: }
	ljmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
