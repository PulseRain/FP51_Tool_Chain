;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
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
_output_float_sloc0_1_0:
	.ds 4
_output_float_sloc1_1_0:
	.ds 4
_output_float_sloc2_1_0:
	.ds 4
__print_format_sloc0_1_0:
	.ds 1
__print_format_sloc1_1_0:
	.ds 1
__print_format_sloc2_1_0:
	.ds 1
__print_format_sloc3_1_0:
	.ds 1
__print_format_sloc4_1_0:
	.ds 1
__print_format_sloc5_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_lower_case:
	.ds 1
_output_char:
	.ds 2
_p:
	.ds 3
_value:
	.ds 5
_charsOutputted:
	.ds 2
__output_char_c_1_51:
	.ds 1
_output_digit_n_1_53:
	.ds 1
_output_2digits_b_1_56:
	.ds 1
_calculate_digit_radix_1_58:
	.ds 1
_output_float_PARM_2:
	.ds 1
_output_float_PARM_3:
	.ds 1
_output_float_PARM_4:
	.ds 1
_output_float_PARM_5:
	.ds 1
_output_float_PARM_6:
	.ds 1
_output_float_PARM_7:
	.ds 1
_output_float_f_1_62:
	.ds 4
_output_float_fpBuffer_1_63:
	.ds 128
_output_float_negative_1_63:
	.ds 1
_output_float_integerPart_1_63:
	.ds 4
_output_float_rounding_1_63:
	.ds 4
_output_float_decimalPart_1_63:
	.ds 4
_output_float_fpBI_1_63:
	.ds 1
_output_float_minWidth_1_63:
	.ds 1
_output_float_exp_1_63:
	.ds 1
__print_format_PARM_2:
	.ds 3
__print_format_PARM_3:
	.ds 3
__print_format_PARM_4:
	.ds 1
__print_format_pfn_1_99:
	.ds 2
__print_format_left_justify_1_100:
	.ds 1
__print_format_zero_padding_1_100:
	.ds 1
__print_format_prefix_sign_1_100:
	.ds 1
__print_format_prefix_space_1_100:
	.ds 1
__print_format_signed_argument_1_100:
	.ds 1
__print_format_char_argument_1_100:
	.ds 1
__print_format_long_argument_1_100:
	.ds 1
__print_format_float_argument_1_100:
	.ds 1
__print_format_lsd_1_100:
	.ds 1
__print_format_radix_1_100:
	.ds 1
__print_format_width_1_100:
	.ds 1
__print_format_decimals_1_100:
	.ds 1
__print_format_length_1_100:
	.ds 1
__print_format_c_1_100:
	.ds 1
__print_format_store_4_120:
	.ds 6
__print_format_pstore_4_120:
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
;Allocation info for local variables in function '_output_char'
;------------------------------------------------------------
;c                         Allocated with name '__output_char_c_1_51'
;------------------------------------------------------------
;	printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
__output_char:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#__output_char_c_1_51
	movx	@dptr,a
;	printf_large.c:107: output_char( c, p );
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_p
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
	lcall	00103$
	sjmp	00104$
00103$:
	mov	dptr,#_output_char
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r7
	ret
00104$:
	dec	_spx
	dec	_spx
	dec	_spx
;	printf_large.c:108: charsOutputted++;
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;n                         Allocated with name '_output_digit_n_1_53'
;------------------------------------------------------------
;	printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	mov	a,dpl
	mov	dptr,#_output_digit_n_1_53
	movx	@dptr,a
;	printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	movx	a,@dptr
;	printf_large.c:134: if (c > (unsigned char)'9')
	add	a,#0x30
	mov	r7,a
	add	a,#0xff - 0x39
	jnc	00104$
;	printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r7
	mov	r7,a
;	printf_large.c:137: if (lower_case)
	mov	dptr,#_lower_case
	movx	a,@dptr
	mov	r6,a
	jz	00104$
;	printf_large.c:138: c = tolower(c);
	orl	ar7,#0x20
00104$:
;	printf_large.c:140: _output_char( c );
	mov	dpl,r7
	ljmp	__output_char
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated with name '_output_2digits_b_1_56'
;------------------------------------------------------------
;	printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	mov	a,dpl
	mov	dptr,#_output_2digits_b_1_56
	movx	@dptr,a
;	printf_large.c:159: output_digit( b>>4   );
	movx	a,@dptr
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r6
	lcall	_output_digit
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:160: output_digit( b&0x0F );
	anl	ar7,#0x0f
	mov	dpl,r7
	ljmp	_output_digit
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated with name '_calculate_digit_radix_1_58'
;ul                        Allocated to registers r4 r5 r6 r7 
;b4                        Allocated to registers r3 
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	mov	a,dpl
	mov	dptr,#_calculate_digit_radix_1_58
	movx	@dptr,a
;	printf_large.c:191: register unsigned long ul = value.ul;
	mov	dptr,#_value
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
;	printf_large.c:192: register unsigned char b4 = value.byte[4];
	mov	dptr,#(_value + 0x0004)
	movx	a,@dptr
	mov	r3,a
;	printf_large.c:193: register unsigned char i = 32;
	mov	r2,#0x20
;	printf_large.c:195: do
	mov	dptr,#_calculate_digit_radix_1_58
	movx	a,@dptr
	mov	r1,a
00103$:
;	printf_large.c:197: b4 = (b4 << 1);
	mov	a,r3
	add	a,r3
	mov	r3,a
;	printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	r0,a
	orl	ar3,a
;	printf_large.c:199: ul <<= 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	printf_large.c:201: if (radix <= b4 )
	clr	c
	mov	a,r3
	subb	a,r1
	jc	00104$
;	printf_large.c:203: b4 -= radix;
	mov	a,r3
	clr	c
	subb	a,r1
	mov	r3,a
;	printf_large.c:204: ul |= 1;
	orl	ar4,#0x01
00104$:
;	printf_large.c:206: } while (--i);
	mov	a,r2
	dec	a
	mov	r0,a
	mov	r2,a
	jnz	00103$
;	printf_large.c:207: value.ul = ul;
	mov	dptr,#_value
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
;	printf_large.c:208: value.byte[4] = b4;
	mov	dptr,#(_value + 0x0004)
	mov	a,r3
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_float'
;------------------------------------------------------------
;sloc0                     Allocated with name '_output_float_sloc0_1_0'
;sloc1                     Allocated with name '_output_float_sloc1_1_0'
;sloc2                     Allocated with name '_output_float_sloc2_1_0'
;reqWidth                  Allocated with name '_output_float_PARM_2'
;reqDecimals               Allocated with name '_output_float_PARM_3'
;left                      Allocated with name '_output_float_PARM_4'
;zero                      Allocated with name '_output_float_PARM_5'
;sign                      Allocated with name '_output_float_PARM_6'
;space                     Allocated with name '_output_float_PARM_7'
;f                         Allocated with name '_output_float_f_1_62'
;fpBuffer                  Allocated with name '_output_float_fpBuffer_1_63'
;negative                  Allocated with name '_output_float_negative_1_63'
;integerPart               Allocated with name '_output_float_integerPart_1_63'
;rounding                  Allocated with name '_output_float_rounding_1_63'
;decimalPart               Allocated with name '_output_float_decimalPart_1_63'
;fpBI                      Allocated with name '_output_float_fpBI_1_63'
;fpBD                      Allocated with name '_output_float_fpBD_1_63'
;minWidth                  Allocated with name '_output_float_minWidth_1_63'
;i                         Allocated with name '_output_float_i_1_63'
;exp                       Allocated with name '_output_float_exp_1_63'
;------------------------------------------------------------
;	printf_large.c:241: output_float (float f, unsigned char reqWidth,
;	-----------------------------------------
;	 function output_float
;	-----------------------------------------
_output_float:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_output_float_f_1_62
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
;	printf_large.c:247: bool negative = 0;
	mov	dptr,#_output_float_negative_1_63
	clr	a
	movx	@dptr,a
;	printf_large.c:253: signed char exp = -128;
	mov	dptr,#_output_float_exp_1_63
	mov	a,#0x80
	movx	@dptr,a
;	printf_large.c:256: if (f<0)
	mov	dptr,#_output_float_f_1_62
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
	lcall	___fslt
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
	jz	00102$
;	printf_large.c:258: negative=1;
	mov	dptr,#_output_float_negative_1_63
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:259: f=-f;
	mov	dptr,#_output_float_f_1_62
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
00102$:
;	printf_large.c:262: if (f>0x00ffffff)
	mov	dptr,#_output_float_f_1_62
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
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x7f
	inc	dptr
	movx	@dptr,a
	mov	a,#0x4b
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
	jnz	00348$
	ljmp	00111$
00348$:
;	printf_large.c:266: for (exp = 0; f >= 10.0; exp++) f /=10.0;
	mov	r3,#0x00
00181$:
	mov	dptr,#_output_float_f_1_62
	movx	a,@dptr
	mov	_output_float_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc0_1_0 + 3),a
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x20
	inc	dptr
	movx	@dptr,a
	mov	a,#0x41
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
	mov	dpl,_output_float_sloc0_1_0
	mov	dph,(_output_float_sloc0_1_0 + 1)
	mov	b,(_output_float_sloc0_1_0 + 2)
	mov	a,(_output_float_sloc0_1_0 + 3)
	lcall	___fslt
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
	jc	00205$
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#___fsdiv_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x20
	inc	dptr
	movx	@dptr,a
	mov	a,#0x41
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
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
	mov	dpl,_output_float_sloc0_1_0
	mov	dph,(_output_float_sloc0_1_0 + 1)
	mov	b,(_output_float_sloc0_1_0 + 2)
	mov	a,(_output_float_sloc0_1_0 + 3)
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r7,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r3,a
	dec	r0
	movx	a,@r0
	dec	r0
	movx	a,@r0
	dec	r0
	movx	a,@r0
	mov	_spx,r0
	pop	ar0
	mov	dptr,#_output_float_f_1_62
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	inc	r3
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00181$
00205$:
00184$:
;	printf_large.c:267: for (       ; f < 1.0;   exp--) f *=10.0;
	mov	dptr,#_output_float_f_1_62
	movx	a,@dptr
	mov	_output_float_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc0_1_0 + 3),a
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
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
	mov	dpl,_output_float_sloc0_1_0
	mov	dph,(_output_float_sloc0_1_0 + 1)
	mov	b,(_output_float_sloc0_1_0 + 2)
	mov	a,(_output_float_sloc0_1_0 + 3)
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
	jz	00246$
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#___fsmul_PARM_2
	mov	a,_output_float_sloc0_1_0
	movx	@dptr,a
	mov	a,(_output_float_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_output_float_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_output_float_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,_spx
	mov	r0,a
	add	a,#0x04
	mov	_spx,a
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r7,a
	push	ar0
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r3,a
	dec	r0
	movx	a,@r0
	dec	r0
	movx	a,@r0
	dec	r0
	movx	a,@r0
	mov	_spx,r0
	pop	ar0
	mov	dptr,#_output_float_f_1_62
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	dec	r3
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00184$
00246$:
	mov	dptr,#_output_float_exp_1_63
	mov	a,r3
	movx	@dptr,a
;	printf_large.c:269: if (negative)
	mov	dptr,#_output_float_negative_1_63
	movx	a,@dptr
	jz	00108$
;	printf_large.c:271: OUTPUT_CHAR ('-', p);
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
	mov	dpl,#0x2d
	lcall	__output_char
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
	sjmp	00109$
00108$:
;	printf_large.c:275: if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz	00109$
;	printf_large.c:277: OUTPUT_CHAR ('+', p);
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
	mov	dpl,#0x2b
	lcall	__output_char
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
00109$:
;	printf_large.c:280: reqWidth = 0;
	mov	dptr,#_output_float_PARM_2
	clr	a
	movx	@dptr,a
;	printf_large.c:281: left = 0;
	mov	dptr,#_output_float_PARM_4
	movx	@dptr,a
;	printf_large.c:282: zero = 0;
	mov	dptr,#_output_float_PARM_5
	movx	@dptr,a
;	printf_large.c:283: sign = 0;
	mov	dptr,#_output_float_PARM_6
	movx	@dptr,a
;	printf_large.c:284: space = 0;
	mov	dptr,#_output_float_PARM_7
	movx	@dptr,a
00111$:
;	printf_large.c:288: if (reqDecimals==-1)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0xff,00113$
;	printf_large.c:289: reqDecimals=DEFAULT_FLOAT_PRECISION;
	mov	dptr,#_output_float_PARM_3
	mov	a,#0x06
	movx	@dptr,a
00113$:
;	printf_large.c:292: rounding = 0.5;
	mov	dptr,#_output_float_rounding_1_63
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	mov	r3,a
00187$:
	mov	a,r3
	jz	00114$
;	printf_large.c:295: rounding /= 10.0;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_output_float_rounding_1_63
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
	mov	r7,a
	mov	dptr,#___fsdiv_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x20
	inc	dptr
	movx	@dptr,a
	mov	a,#0x41
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r3
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r3,a
	dec	_spx
	mov	dptr,#_output_float_rounding_1_63
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
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	dec	r3
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00187$
00114$:
;	printf_large.c:297: f += rounding;
	mov	dptr,#_output_float_rounding_1_63
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
	mov	dptr,#_output_float_f_1_62
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
;	printf_large.c:300: integerPart = f;
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
	lcall	___fs2ulong
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
	mov	dptr,#_output_float_integerPart_1_63
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
;	printf_large.c:301: decimalPart = f - integerPart;
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___ulong2fs
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
	mov	dptr,#_output_float_decimalPart_1_63
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
;	printf_large.c:304: while (integerPart)
	mov	r7,#0x00
00115$:
	mov	dptr,#_output_float_integerPart_1_63
	movx	a,@dptr
	mov	_output_float_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc1_1_0 + 3),a
	mov	a,_output_float_sloc1_1_0
	orl	a,(_output_float_sloc1_1_0 + 1)
	orl	a,(_output_float_sloc1_1_0 + 2)
	orl	a,(_output_float_sloc1_1_0 + 3)
	jnz	00356$
	ljmp	00248$
00356$:
;	printf_large.c:306: fpBuffer[fpBI++]='0' + integerPart%10;
	mov	ar2,r7
	inc	r7
	mov	a,r2
	add	a,#_output_float_fpBuffer_1_63
	mov	_output_float_sloc0_1_0,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_63 >> 8)
	mov	(_output_float_sloc0_1_0 + 1),a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,_output_float_sloc1_1_0
	mov	dph,(_output_float_sloc1_1_0 + 1)
	mov	b,(_output_float_sloc1_1_0 + 2)
	mov	a,(_output_float_sloc1_1_0 + 3)
	lcall	__modulong
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	a,#0x30
	add	a,r0
	mov	r0,a
	mov	dpl,_output_float_sloc0_1_0
	mov	dph,(_output_float_sloc0_1_0 + 1)
	movx	@dptr,a
;	printf_large.c:307: integerPart /= 10;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,_output_float_sloc1_1_0
	mov	dph,(_output_float_sloc1_1_0 + 1)
	mov	b,(_output_float_sloc1_1_0 + 2)
	mov	a,(_output_float_sloc1_1_0 + 3)
	lcall	__divulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	mov	dptr,#_output_float_integerPart_1_63
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
	ljmp	00115$
00248$:
	mov	dptr,#_output_float_fpBI_1_63
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:309: if (!fpBI)
	mov	a,r7
	jnz	00119$
;	printf_large.c:312: fpBuffer[fpBI++]='0';
	mov	dptr,#_output_float_fpBI_1_63
	mov	a,r7
	inc	a
	movx	@dptr,a
	mov	a,r7
	add	a,#_output_float_fpBuffer_1_63
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_63 >> 8)
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
00119$:
;	printf_large.c:316: fpBD=fpBI;
	mov	dptr,#_output_float_fpBI_1_63
	movx	a,@dptr
	mov	_output_float_sloc1_1_0,a
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	mov	r6,a
	mov	_output_float_sloc0_1_0,_output_float_sloc1_1_0
	mov	ar4,r6
00190$:
	mov	a,r4
	jnz	00358$
	ljmp	00120$
00358$:
;	printf_large.c:320: decimalPart *= 10.0;
	push	ar6
	mov	dptr,#_output_float_decimalPart_1_63
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
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar0
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
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
	mov	_spx,r0
	pop	ar0
	mov	dptr,#_output_float_decimalPart_1_63
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
;	printf_large.c:322: integerPart = decimalPart;
	mov	dptr,#_output_float_decimalPart_1_63
	movx	a,@dptr
	mov	_output_float_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_output_float_sloc2_1_0 + 3),a
	push	ar0
	mov	a,r4
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,_output_float_sloc2_1_0
	mov	dph,(_output_float_sloc2_1_0 + 1)
	mov	b,(_output_float_sloc2_1_0 + 2)
	mov	a,(_output_float_sloc2_1_0 + 3)
	lcall	___fs2ulong
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	_spx
;	printf_large.c:323: fpBuffer[fpBD++] = '0' + integerPart;
	mov	r2,_output_float_sloc0_1_0
	inc	_output_float_sloc0_1_0
	mov	a,r2
	add	a,#_output_float_fpBuffer_1_63
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_63 >> 8)
	mov	dph,a
	mov	ar2,r3
	mov	a,#0x30
	add	a,r2
	movx	@dptr,a
;	printf_large.c:324: decimalPart -= integerPart;
	push	ar0
	mov	a,r4
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___ulong2fs
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	_spx
	mov	dptr,#___fssub_PARM_2
	mov	a,r3
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
	push	ar0
	mov	a,r4
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,_output_float_sloc2_1_0
	mov	dph,(_output_float_sloc2_1_0 + 1)
	mov	b,(_output_float_sloc2_1_0 + 2)
	mov	a,(_output_float_sloc2_1_0 + 3)
	lcall	___fssub
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r4,a
	dec	_spx
	mov	dptr,#_output_float_decimalPart_1_63
	mov	a,r3
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
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	dec	r4
	pop	ar6
	ljmp	00190$
00120$:
;	printf_large.c:328: minWidth+=reqDecimals?reqDecimals+1:0; // maybe these
	mov	a,r6
	jz	00198$
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	mov	r7,a
	inc	r7
	sjmp	00199$
00198$:
	mov	r7,#0x00
00199$:
	mov	r6,_output_float_sloc1_1_0
	mov	a,r7
	add	a,r6
	mov	r7,a
	mov	dptr,#_output_float_minWidth_1_63
	movx	@dptr,a
;	printf_large.c:329: if (negative || sign || space)
	mov	dptr,#_output_float_negative_1_63
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jnz	00121$
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jnz	00121$
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz	00122$
00121$:
;	printf_large.c:330: minWidth++; // and maybe even this :)
	mov	dptr,#_output_float_minWidth_1_63
	mov	a,r7
	inc	a
	movx	@dptr,a
00122$:
;	printf_large.c:332: if (!left && reqWidth>i)
	mov	dptr,#_output_float_PARM_4
	movx	a,@dptr
	jz	00363$
	ljmp	00159$
00363$:
	mov	dptr,#_output_float_PARM_2
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,r7
	jc	00364$
	ljmp	00159$
00364$:
;	printf_large.c:334: if (zero)
	mov	dptr,#_output_float_PARM_5
	movx	a,@dptr
	jz	00228$
;	printf_large.c:336: if (negative)
	mov	a,r6
	jz	00131$
;	printf_large.c:338: OUTPUT_CHAR('-', p);
	mov	dpl,#0x2d
	lcall	__output_char
	sjmp	00226$
00131$:
;	printf_large.c:340: else if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz	00128$
;	printf_large.c:342: OUTPUT_CHAR('+', p);
	mov	dpl,#0x2b
	lcall	__output_char
	sjmp	00226$
00128$:
;	printf_large.c:344: else if (space)
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz	00226$
;	printf_large.c:346: OUTPUT_CHAR(' ', p);
	mov	dpl,#0x20
	lcall	__output_char
;	printf_large.c:348: while (reqWidth-->minWidth)
00226$:
	mov	dptr,#_output_float_minWidth_1_63
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_output_float_PARM_2
	movx	a,@dptr
	mov	r5,a
00133$:
	mov	ar4,r5
	dec	r5
	clr	c
	mov	a,r6
	subb	a,r4
	jc	00369$
	ljmp	00250$
00369$:
;	printf_large.c:350: OUTPUT_CHAR('0', p);
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
	mov	dpl,#0x30
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r5,a
	dec	r0
	movx	a,@r0
	mov	r6,a
	mov	_spx,r0
;	printf_large.c:355: while (reqWidth-->minWidth)
	sjmp	00133$
00228$:
	mov	dptr,#_output_float_minWidth_1_63
	movx	a,@dptr
	mov	r6,a
00136$:
	mov	ar4,r7
	dec	r7
	clr	c
	mov	a,r6
	subb	a,r4
	jnc	00251$
;	printf_large.c:357: OUTPUT_CHAR(' ', p);
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
	mov	dpl,#0x20
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	sjmp	00136$
00251$:
	mov	dptr,#_output_float_PARM_2
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:359: if (negative)
	mov	dptr,#_output_float_negative_1_63
	movx	a,@dptr
	jz	00145$
;	printf_large.c:361: OUTPUT_CHAR('-', p);
	mov	dpl,#0x2d
	lcall	__output_char
	sjmp	00160$
00145$:
;	printf_large.c:363: else if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz	00142$
;	printf_large.c:365: OUTPUT_CHAR('+', p);
	mov	dpl,#0x2b
	lcall	__output_char
	sjmp	00160$
00142$:
;	printf_large.c:367: else if (space)
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz	00160$
;	printf_large.c:369: OUTPUT_CHAR(' ', p);
	mov	dpl,#0x20
	lcall	__output_char
	sjmp	00160$
00159$:
;	printf_large.c:375: if (negative)
	mov	dptr,#_output_float_negative_1_63
	movx	a,@dptr
	jz	00156$
;	printf_large.c:377: OUTPUT_CHAR('-', p);
	mov	dpl,#0x2d
	lcall	__output_char
	sjmp	00160$
00156$:
;	printf_large.c:379: else if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz	00153$
;	printf_large.c:381: OUTPUT_CHAR('+', p);
	mov	dpl,#0x2b
	lcall	__output_char
	sjmp	00160$
00153$:
;	printf_large.c:383: else if (space)
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz	00160$
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	mov	dpl,#0x20
	lcall	__output_char
;	printf_large.c:428: return;
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	sjmp	00160$
00250$:
	mov	dptr,#_output_float_PARM_2
	mov	a,r5
	movx	@dptr,a
00160$:
;	printf_large.c:390: i=fpBI-1;
	mov	dptr,#_output_float_fpBI_1_63
	movx	a,@dptr
	mov	r7,a
	dec	a
	mov	r6,a
;	printf_large.c:391: do {
00162$:
;	printf_large.c:392: OUTPUT_CHAR (fpBuffer[i], p);
	mov	a,r6
	add	a,#_output_float_fpBuffer_1_63
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
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
	mov	dpl,r5
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
;	printf_large.c:393: } while (i--);
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jnz	00162$
;	printf_large.c:396: if (reqDecimals)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jz	00169$
;	printf_large.c:398: OUTPUT_CHAR ('.', p);
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
	mov	dpl,#0x2e
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
;	printf_large.c:400: while (reqDecimals--)
00165$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jz	00169$
;	printf_large.c:402: OUTPUT_CHAR (fpBuffer[i++], p);
	mov	ar5,r7
	inc	r7
	mov	a,r5
	add	a,#_output_float_fpBuffer_1_63
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
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
	mov	dpl,r5
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	sjmp	00165$
00169$:
;	printf_large.c:406: if (left && reqWidth>minWidth)
	mov	dptr,#_output_float_PARM_4
	movx	a,@dptr
	jz	00174$
	mov	dptr,#_output_float_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_output_float_minWidth_1_63
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jnc	00174$
;	printf_large.c:408: while (reqWidth-->minWidth)
00170$:
	mov	ar5,r7
	dec	r7
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00174$
;	printf_large.c:410: OUTPUT_CHAR(' ', p);
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
	mov	dpl,#0x20
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
	sjmp	00170$
00174$:
;	printf_large.c:414: if (exp != -128)
	mov	dptr,#_output_float_exp_1_63
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00383$
	ret
00383$:
;	printf_large.c:416: OUTPUT_CHAR ('e', p);
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x65
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:417: if (exp<0)
	mov	a,r7
	jnb	acc.7,00177$
;	printf_large.c:419: OUTPUT_CHAR ('-', p);
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x2d
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:420: exp = -exp;
	mov	dptr,#_output_float_exp_1_63
	clr	c
	clr	a
	subb	a,r7
	movx	@dptr,a
00177$:
;	printf_large.c:422: OUTPUT_CHAR ('0'+exp/10, p);
	mov	dptr,#_output_float_exp_1_63
	movx	a,@dptr
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,r7
	jnb	acc.7,00385$
	cpl	F0
	cpl	a
	inc	a
00385$:
	div	ab
	jnb	F0,00386$
	cpl	a
	inc	a
00386$:
	add	a,#0x30
	mov	r6,a
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r6
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:423: OUTPUT_CHAR ('0'+exp%10, p);
	mov	b,#0x0a
	mov	a,r7
	clr	F0
	jnb	acc.7,00387$
	setb	F0
	cpl	a
	inc	a
00387$:
	div	ab
	mov	a,b
	jnb	F0,00388$
	cpl	a
	inc	a
00388$:
	add	a,#0x30
	mov	dpl,a
	lcall	__output_char
;	printf_large.c:428: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;sloc2                     Allocated with name '__print_format_sloc2_1_0'
;sloc3                     Allocated with name '__print_format_sloc3_1_0'
;sloc4                     Allocated with name '__print_format_sloc4_1_0'
;sloc5                     Allocated with name '__print_format_sloc5_1_0'
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated with name '__print_format_pfn_1_99'
;left_justify              Allocated with name '__print_format_left_justify_1_100'
;zero_padding              Allocated with name '__print_format_zero_padding_1_100'
;prefix_sign               Allocated with name '__print_format_prefix_sign_1_100'
;prefix_space              Allocated with name '__print_format_prefix_space_1_100'
;signed_argument           Allocated with name '__print_format_signed_argument_1_100'
;char_argument             Allocated with name '__print_format_char_argument_1_100'
;long_argument             Allocated with name '__print_format_long_argument_1_100'
;float_argument            Allocated with name '__print_format_float_argument_1_100'
;lsd                       Allocated with name '__print_format_lsd_1_100'
;radix                     Allocated with name '__print_format_radix_1_100'
;width                     Allocated with name '__print_format_width_1_100'
;decimals                  Allocated with name '__print_format_decimals_1_100'
;length                    Allocated with name '__print_format_length_1_100'
;c                         Allocated with name '__print_format_c_1_100'
;memtype                   Allocated with name '__print_format_memtype_5_117'
;store                     Allocated with name '__print_format_store_4_120'
;pstore                    Allocated with name '__print_format_pstore_4_120'
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#__print_format_pfn_1_99
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	printf_large.c:461: output_char = pfn;
	mov	dptr,#__print_format_pfn_1_99
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_output_char
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	printf_large.c:462: p = pvoid;
	mov	dptr,#__print_format_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_p
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	printf_large.c:466: charsOutputted = 0;
	mov	dptr,#_charsOutputted
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	printf_large.c:475: while( c=*format++ )
00240$:
	mov	dptr,#__print_format_PARM_3
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
	mov	dptr,#__print_format_PARM_3
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
	mov	a,r4
	jnz	00491$
	ljmp	00242$
00491$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r4,#0x25,00492$
	sjmp	00493$
00492$:
	ljmp	00238$
00493$:
;	printf_large.c:479: left_justify    = 0;
	mov	dptr,#__print_format_left_justify_1_100
	clr	a
	movx	@dptr,a
;	printf_large.c:480: zero_padding    = 0;
	mov	dptr,#__print_format_zero_padding_1_100
	movx	@dptr,a
;	printf_large.c:481: prefix_sign     = 0;
	mov	dptr,#__print_format_prefix_sign_1_100
	movx	@dptr,a
;	printf_large.c:482: prefix_space    = 0;
	mov	dptr,#__print_format_prefix_space_1_100
	movx	@dptr,a
;	printf_large.c:483: signed_argument = 0;
	mov	dptr,#__print_format_signed_argument_1_100
	movx	@dptr,a
;	printf_large.c:484: char_argument   = 0;
	mov	dptr,#__print_format_char_argument_1_100
	movx	@dptr,a
;	printf_large.c:485: long_argument   = 0;
	mov	dptr,#__print_format_long_argument_1_100
	movx	@dptr,a
;	printf_large.c:486: float_argument  = 0;
	mov	dptr,#__print_format_float_argument_1_100
	movx	@dptr,a
;	printf_large.c:487: radix           = 0;
	mov	dptr,#__print_format_radix_1_100
	movx	@dptr,a
;	printf_large.c:488: width           = 0;
	mov	dptr,#__print_format_width_1_100
	movx	@dptr,a
;	printf_large.c:489: decimals        = -1;
	mov	dptr,#__print_format_decimals_1_100
	dec	a
	movx	@dptr,a
;	printf_large.c:491: get_conversion_spec:
	mov	dptr,#__print_format_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
;	printf_large.c:493: c = *format++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#__print_format_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__print_format_c_1_100
	mov	a,r3
	movx	@dptr,a
;	printf_large.c:495: if (c=='%')
	cjne	r3,#0x25,00103$
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	mov	dpl,r3
	lcall	__output_char
;	printf_large.c:498: continue;
	ljmp	00240$
00103$:
;	printf_large.c:501: if (isdigit(c))
	cjne	r3,#0x30,00496$
00496$:
	jc	00110$
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00110$
;	printf_large.c:503: if (decimals==-1)
	mov	dptr,#__print_format_decimals_1_100
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0xff,00107$
;	printf_large.c:505: width = 10*width + c - '0';
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	b,#0x0a
	mul	ab
	add	a,r3
	add	a,#0xd0
	movx	@dptr,a
;	printf_large.c:506: if (width == 0)
	pop	ar7
	pop	ar6
	pop	ar5
	movx	a,@dptr
	jnz	00101$
;	printf_large.c:509: zero_padding = 1;
	mov	dptr,#__print_format_zero_padding_1_100
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	mov	a,r2
	mov	b,#0x0a
	mul	ab
	mov	r2,a
	add	a,r3
	add	a,#0xd0
	mov	dptr,#__print_format_decimals_1_100
	movx	@dptr,a
;	printf_large.c:516: goto get_conversion_spec;
	sjmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	mov	dptr,#__print_format_c_1_100
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x2e,00115$
;	printf_large.c:521: if (decimals==-1)
	mov	dptr,#__print_format_decimals_1_100
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0xff,00504$
	sjmp	00505$
00504$:
	ljmp	00101$
00505$:
;	printf_large.c:522: decimals=0;
	mov	dptr,#__print_format_decimals_1_100
	clr	a
	movx	@dptr,a
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	cjne	r3,#0x61,00506$
00506$:
	jc	00117$
	mov	a,r3
	add	a,#0xff - 0x7a
	jc	00117$
;	printf_large.c:530: c = toupper(c);
	mov	dptr,#__print_format_c_1_100
	mov	a,#0xdf
	anl	a,r3
	movx	@dptr,a
;	printf_large.c:531: lower_case = 1;
	mov	dptr,#_lower_case
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00118$
00117$:
;	printf_large.c:534: lower_case = 0;
	mov	dptr,#_lower_case
	clr	a
	movx	@dptr,a
00118$:
;	printf_large.c:536: switch( c )
	mov	dptr,#__print_format_c_1_100
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x20,00509$
	sjmp	00122$
00509$:
	cjne	r3,#0x2b,00510$
	sjmp	00121$
00510$:
	cjne	r3,#0x2d,00511$
	sjmp	00120$
00511$:
	cjne	r3,#0x42,00512$
	sjmp	00123$
00512$:
	cjne	r3,#0x43,00513$
	ljmp	00129$
00513$:
	cjne	r3,#0x44,00514$
	ljmp	00166$
00514$:
	cjne	r3,#0x46,00515$
	ljmp	00170$
00515$:
	cjne	r3,#0x48,00516$
	ljmp	00101$
00516$:
	cjne	r3,#0x49,00517$
	ljmp	00166$
00517$:
	cjne	r3,#0x4a,00518$
	ljmp	00101$
00518$:
	cjne	r3,#0x4c,00519$
	sjmp	00128$
00519$:
	cjne	r3,#0x4f,00520$
	ljmp	00167$
00520$:
	cjne	r3,#0x50,00521$
	ljmp	00152$
00521$:
	cjne	r3,#0x53,00522$
	ljmp	00133$
00522$:
	cjne	r3,#0x54,00523$
	ljmp	00101$
00523$:
	cjne	r3,#0x55,00524$
	ljmp	00168$
00524$:
	cjne	r3,#0x58,00525$
	ljmp	00169$
00525$:
	cjne	r3,#0x5a,00526$
	ljmp	00101$
00526$:
	ljmp	00171$
;	printf_large.c:538: case '-':
00120$:
;	printf_large.c:539: left_justify = 1;
	mov	dptr,#__print_format_left_justify_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:541: case '+':
00121$:
;	printf_large.c:542: prefix_sign = 1;
	mov	dptr,#__print_format_prefix_sign_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:544: case ' ':
00122$:
;	printf_large.c:545: prefix_space = 1;
	mov	dptr,#__print_format_prefix_space_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:547: case 'B': /* byte */
00123$:
;	printf_large.c:548: char_argument = 1;
	mov	dptr,#__print_format_char_argument_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:556: case 'L': /* long */
00128$:
;	printf_large.c:557: long_argument = 1;
	mov	dptr,#__print_format_long_argument_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:560: case 'C':
00129$:
;	printf_large.c:561: if( char_argument )
	mov	dptr,#__print_format_char_argument_1_100
	movx	a,@dptr
	jz	00131$
;	printf_large.c:562: c = va_arg(ap,char);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r7,a
	dec	a
	mov	r1,a
	movx	@dptr,a
	mov	dptr,#__print_format_c_1_100
	movx	a,@r1
	movx	@dptr,a
	sjmp	00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r7,a
	dec	r7
	dec	r7
	mov	a,r7
	movx	@dptr,a
	mov	ar1,r7
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	dec	r1
	mov	dptr,#__print_format_c_1_100
	mov	a,r6
	movx	@dptr,a
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	mov	dptr,#__print_format_c_1_100
	movx	a,@dptr
	mov	dpl,a
	lcall	__output_char
;	printf_large.c:566: break;
	ljmp	00172$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r7,a
	dec	r7
	dec	r7
	dec	r7
	mov	a,r7
	movx	@dptr,a
	mov	ar1,r7
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	dec	r1
	dec	r1
	mov	dptr,#_value
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	printf_large.c:582: length = strlen(PTR);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strlen
	mov	r6,dpl
;	printf_large.c:584: if ( decimals == -1 )
	mov	dptr,#__print_format_decimals_1_100
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00135$
;	printf_large.c:586: decimals = length;
	mov	dptr,#__print_format_decimals_1_100
	mov	a,r6
	movx	@dptr,a
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	mov	dptr,#__print_format_left_justify_1_100
	movx	a,@dptr
	jnz	00286$
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00286$
;	printf_large.c:590: width -= length;
	mov	dptr,#__print_format_width_1_100
	mov	a,r7
	clr	c
	subb	a,r6
	movx	@dptr,a
;	printf_large.c:591: while( width-- != 0 )
	movx	a,@dptr
	mov	r7,a
00136$:
	mov	ar5,r7
	dec	r7
	mov	a,r5
	jz	00324$
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
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
	mov	dpl,#0x20
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp	00136$
00324$:
	mov	dptr,#__print_format_width_1_100
	mov	a,r7
	movx	@dptr,a
00286$:
	mov	dptr,#__print_format_decimals_1_100
	movx	a,@dptr
	mov	r7,a
00143$:
	push	ar6
	mov	dptr,#_value
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	__print_format_sloc0_1_0,a
	pop	ar6
	mov	a,__print_format_sloc0_1_0
	jz	00325$
	mov	ar5,r7
	dec	r7
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00325$
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar6
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
	mov	dpl,__print_format_sloc0_1_0
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
;	printf_large.c:600: PTR++;
	mov	dptr,#_value
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	r2
	cjne	r2,#0x00,00535$
	inc	r5
00535$:
	mov	dptr,#_value
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	pop	ar6
	sjmp	00143$
00325$:
	mov	dptr,#__print_format_decimals_1_100
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:603: if ( left_justify && (length < width))
	mov	dptr,#__print_format_left_justify_1_100
	movx	a,@dptr
	jnz	00536$
	ljmp	00172$
00536$:
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r7
	jc	00537$
	ljmp	00172$
00537$:
;	printf_large.c:605: width -= length;
	mov	dptr,#__print_format_width_1_100
	mov	a,r7
	clr	c
	subb	a,r6
	movx	@dptr,a
;	printf_large.c:606: while( width-- != 0 )
	movx	a,@dptr
	mov	r7,a
00146$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00538$
	ljmp	00326$
00538$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x20
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:613: case 'P':
	sjmp	00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r6,a
	dec	r6
	dec	r6
	dec	r6
	mov	a,r6
	movx	@dptr,a
	mov	ar1,r6
	movx	a,@r1
	mov	r2,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	dec	r1
	dec	r1
	mov	dptr,#_value
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	printf_large.c:637: unsigned char memtype = value.byte[2];
	mov	dptr,#(_value + 0x0002)
	movx	a,@dptr
	mov	r6,a
;	printf_large.c:638: if (memtype >= 0x80)
	cjne	r6,#0x80,00539$
00539$:
	jc	00160$
;	printf_large.c:639: c = 'C';
	mov	dptr,#__print_format_c_1_100
	mov	a,#0x43
	movx	@dptr,a
	sjmp	00161$
00160$:
;	printf_large.c:640: else if (memtype >= 0x60)
	cjne	r6,#0x60,00541$
00541$:
	jc	00157$
;	printf_large.c:641: c = 'P';
	mov	dptr,#__print_format_c_1_100
	mov	a,#0x50
	movx	@dptr,a
	sjmp	00161$
00157$:
;	printf_large.c:642: else if (memtype >= 0x40)
	cjne	r6,#0x40,00543$
00543$:
	jc	00154$
;	printf_large.c:643: c = 'I';
	mov	dptr,#__print_format_c_1_100
	mov	a,#0x49
	movx	@dptr,a
	sjmp	00161$
00154$:
;	printf_large.c:645: c = 'X';
	mov	dptr,#__print_format_c_1_100
	mov	a,#0x58
	movx	@dptr,a
00161$:
;	printf_large.c:647: OUTPUT_CHAR(c, p);
	mov	dptr,#__print_format_c_1_100
	movx	a,@dptr
	mov	r6,a
	push	ar0
	mov	a,r6
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,r6
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	_spx
;	printf_large.c:648: OUTPUT_CHAR(':', p);
	push	ar0
	mov	a,r6
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x3a
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	_spx
;	printf_large.c:649: OUTPUT_CHAR('0', p);
	push	ar0
	mov	a,r6
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x30
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	_spx
;	printf_large.c:650: OUTPUT_CHAR('x', p);
	push	ar0
	mov	a,r6
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x78
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	_spx
;	printf_large.c:651: if ((c != 'I' /* idata */) &&
	cjne	r6,#0x49,00545$
	sjmp	00163$
00545$:
;	printf_large.c:652: (c != 'P' /* pdata */))
	cjne	r6,#0x50,00546$
	sjmp	00163$
00546$:
;	printf_large.c:654: OUTPUT_2DIGITS( value.byte[1] );
	mov	dptr,#(_value + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_output_2digits
00163$:
;	printf_large.c:656: OUTPUT_2DIGITS( value.byte[0] );
	mov	dptr,#_value
	movx	a,@dptr
	mov	dpl,a
	lcall	_output_2digits
;	printf_large.c:663: break;
;	printf_large.c:666: case 'I':
	sjmp	00172$
00166$:
;	printf_large.c:667: signed_argument = 1;
	mov	dptr,#__print_format_signed_argument_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:668: radix = 10;
	mov	dptr,#__print_format_radix_1_100
	mov	a,#0x0a
	movx	@dptr,a
;	printf_large.c:669: break;
;	printf_large.c:671: case 'O':
	sjmp	00172$
00167$:
;	printf_large.c:672: radix = 8;
	mov	dptr,#__print_format_radix_1_100
	mov	a,#0x08
	movx	@dptr,a
;	printf_large.c:673: break;
;	printf_large.c:675: case 'U':
	sjmp	00172$
00168$:
;	printf_large.c:676: radix = 10;
	mov	dptr,#__print_format_radix_1_100
	mov	a,#0x0a
	movx	@dptr,a
;	printf_large.c:677: break;
;	printf_large.c:679: case 'X':
	sjmp	00172$
00169$:
;	printf_large.c:680: radix = 16;
	mov	dptr,#__print_format_radix_1_100
	mov	a,#0x10
	movx	@dptr,a
;	printf_large.c:681: break;
;	printf_large.c:683: case 'F':
	sjmp	00172$
00170$:
;	printf_large.c:684: float_argument=1;
	mov	dptr,#__print_format_float_argument_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:685: break;
;	printf_large.c:687: default:
	sjmp	00172$
00171$:
;	printf_large.c:689: OUTPUT_CHAR( c, p );
	mov	dpl,r3
	lcall	__output_char
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:691: }
	sjmp	00172$
00326$:
	mov	dptr,#__print_format_width_1_100
	mov	a,r7
	movx	@dptr,a
00172$:
;	printf_large.c:693: if (float_argument)
	mov	dptr,#__print_format_float_argument_1_100
	movx	a,@dptr
	jnz	00547$
	ljmp	00235$
00547$:
;	printf_large.c:695: value.f = va_arg(ap, float);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r7,a
	dec	r7
	dec	r7
	dec	r7
	dec	r7
	mov	a,r7
	movx	@dptr,a
	mov	ar1,r7
	movx	a,@r1
	mov	r3,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	dec	r1
	dec	r1
	dec	r1
	mov	dptr,#_value
	mov	a,r3
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
;	printf_large.c:713: OUTPUT_FLOAT(value.f, width, decimals, left_justify,
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	__print_format_sloc0_1_0,a
	mov	dptr,#__print_format_decimals_1_100
	movx	a,@dptr
	mov	__print_format_sloc1_1_0,a
	mov	dptr,#__print_format_left_justify_1_100
	movx	a,@dptr
	mov	__print_format_sloc2_1_0,a
	mov	dptr,#__print_format_zero_padding_1_100
	movx	a,@dptr
	mov	__print_format_sloc3_1_0,a
	mov	dptr,#__print_format_prefix_sign_1_100
	movx	a,@dptr
	mov	__print_format_sloc4_1_0,a
	mov	dptr,#__print_format_prefix_space_1_100
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_output_float_PARM_2
	mov	a,__print_format_sloc0_1_0
	movx	@dptr,a
	mov	dptr,#_output_float_PARM_3
	mov	a,__print_format_sloc1_1_0
	movx	@dptr,a
	mov	dptr,#_output_float_PARM_4
	mov	a,__print_format_sloc2_1_0
	movx	@dptr,a
	mov	dptr,#_output_float_PARM_5
	mov	a,__print_format_sloc3_1_0
	movx	@dptr,a
	mov	dptr,#_output_float_PARM_6
	mov	a,__print_format_sloc4_1_0
	movx	@dptr,a
	mov	dptr,#_output_float_PARM_7
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_output_float
	ljmp	00240$
00235$:
;	printf_large.c:718: else if (radix != 0)
	mov	dptr,#__print_format_radix_1_100
	movx	a,@dptr
	jnz	00548$
	ljmp	00240$
00548$:
;	printf_large.c:726: if (char_argument)
	mov	dptr,#__print_format_char_argument_1_100
	movx	a,@dptr
	jz	00181$
;	printf_large.c:728: value.l = va_arg(ap, char);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	dec	a
	mov	r1,a
	movx	@dptr,a
	movx	a,@r1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r3,#0x00
	mov	dptr,#_value
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	printf_large.c:729: if (!signed_argument)
	mov	dptr,#__print_format_signed_argument_1_100
	movx	a,@dptr
	jz	00550$
	ljmp	00182$
00550$:
;	printf_large.c:731: value.l &= 0xFF;
	mov	dptr,#_value
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_value
	mov	a,r3
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
	ljmp	00182$
00181$:
;	printf_large.c:734: else if (long_argument)
	mov	dptr,#__print_format_long_argument_1_100
	movx	a,@dptr
	jz	00178$
;	printf_large.c:736: value.l = va_arg(ap, long);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r7,a
	dec	r7
	dec	r7
	dec	r7
	dec	r7
	mov	a,r7
	movx	@dptr,a
	mov	ar1,r7
	movx	a,@r1
	mov	r3,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	dec	r1
	dec	r1
	dec	r1
	mov	dptr,#_value
	mov	a,r3
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
	sjmp	00182$
00178$:
;	printf_large.c:740: value.l = va_arg(ap, int);
	mov	dptr,#__print_format_PARM_4
	movx	a,@dptr
	mov	r7,a
	dec	r7
	dec	r7
	mov	a,r7
	movx	@dptr,a
	mov	ar1,r7
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	dec	r1
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r3,a
	mov	dptr,#_value
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	printf_large.c:741: if (!signed_argument)
	mov	dptr,#__print_format_signed_argument_1_100
	movx	a,@dptr
	jnz	00182$
;	printf_large.c:743: value.l &= 0xFFFF;
	mov	dptr,#_value
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_value
	mov	a,r3
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
00182$:
;	printf_large.c:747: if ( signed_argument )
	mov	dptr,#__print_format_signed_argument_1_100
	movx	a,@dptr
	jz	00187$
;	printf_large.c:749: if (value.l < 0)
	mov	dptr,#_value
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00184$
;	printf_large.c:750: value.l = -value.l;
	mov	dptr,#_value
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	dptr,#_value
	mov	a,r3
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
	sjmp	00187$
00184$:
;	printf_large.c:752: signed_argument = 0;
	mov	dptr,#__print_format_signed_argument_1_100
	clr	a
	movx	@dptr,a
00187$:
;	printf_large.c:756: lsd = 1;
	mov	dptr,#__print_format_lsd_1_100
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:758: do {
	mov	dptr,#__print_format_radix_1_100
	movx	a,@dptr
	mov	__print_format_sloc4_1_0,a
	mov	__print_format_sloc5_1_0,#(__print_format_store_4_120 + 0x0005)
	mov	(__print_format_sloc5_1_0 + 1),#((__print_format_store_4_120 + 0x0005) >> 8)
	mov	__print_format_sloc3_1_0,#0x00
00191$:
;	printf_large.c:759: value.byte[4] = 0;
	mov	dptr,#(_value + 0x0004)
	clr	a
	movx	@dptr,a
;	printf_large.c:763: calculate_digit(radix);
	mov	dpl,__print_format_sloc4_1_0
	lcall	_calculate_digit
;	printf_large.c:765: if (!lsd)
	mov	dptr,#__print_format_lsd_1_100
	movx	a,@dptr
	jnz	00189$
;	printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	dptr,#(_value + 0x0004)
	movx	a,@dptr
	swap	a
	mov	r2,a
	mov	dpl,__print_format_sloc5_1_0
	mov	dph,(__print_format_sloc5_1_0 + 1)
	movx	a,@dptr
	mov	r7,a
	orl	ar2,a
	mov	dpl,__print_format_sloc5_1_0
	mov	dph,(__print_format_sloc5_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
;	printf_large.c:768: pstore--;
	dec	__print_format_sloc5_1_0
	mov	a,#0xff
	cjne	a,__print_format_sloc5_1_0,00556$
	dec	(__print_format_sloc5_1_0 + 1)
00556$:
	sjmp	00190$
00189$:
;	printf_large.c:772: *pstore = value.byte[4];
	mov	dptr,#(_value + 0x0004)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,__print_format_sloc5_1_0
	mov	dph,(__print_format_sloc5_1_0 + 1)
	movx	@dptr,a
00190$:
;	printf_large.c:774: length++;
	inc	__print_format_sloc3_1_0
;	printf_large.c:775: lsd = !lsd;
	mov	dptr,#__print_format_lsd_1_100
	movx	a,@dptr
	mov	r2,a
	cjne	a,#0x01,00557$
00557$:
	clr	a
	rlc	a
	movx	@dptr,a
;	printf_large.c:776: } while( value.ul );
	mov	dptr,#_value
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	orl	a,r3
	orl	a,r6
	orl	a,r7
	jnz	00191$
;	printf_large.c:778: if (width == 0)
	mov	dptr,#__print_format_pstore_4_120
	mov	a,__print_format_sloc5_1_0
	movx	@dptr,a
	mov	a,(__print_format_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__print_format_length_1_100
	mov	a,__print_format_sloc3_1_0
	movx	@dptr,a
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	jnz	00195$
;	printf_large.c:783: width = 1;
	mov	dptr,#__print_format_width_1_100
	mov	a,#0x01
	movx	@dptr,a
00195$:
;	printf_large.c:787: if (!zero_padding && !left_justify)
	mov	dptr,#__print_format_zero_padding_1_100
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00200$
	mov	dptr,#__print_format_left_justify_1_100
	movx	a,@dptr
	jnz	00200$
;	printf_large.c:789: while ( width > (unsigned char) (length+1) )
	mov	a,__print_format_sloc3_1_0
	inc	a
	mov	r6,a
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	r5,a
00196$:
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00328$
;	printf_large.c:791: OUTPUT_CHAR( ' ', p );
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
	mov	dpl,#0x20
	lcall	__output_char
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
;	printf_large.c:792: width--;
	dec	r5
	sjmp	00196$
00328$:
	mov	dptr,#__print_format_width_1_100
	mov	a,r5
	movx	@dptr,a
00200$:
;	printf_large.c:796: if (signed_argument) // this now means the original value was negative
	mov	dptr,#__print_format_signed_argument_1_100
	movx	a,@dptr
	jz	00210$
;	printf_large.c:798: OUTPUT_CHAR( '-', p );
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x2d
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:800: width--;
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	sjmp	00211$
00210$:
;	printf_large.c:802: else if (length != 0)
	mov	dptr,#__print_format_length_1_100
	movx	a,@dptr
	jz	00211$
;	printf_large.c:805: if (prefix_sign)
	mov	dptr,#__print_format_prefix_sign_1_100
	movx	a,@dptr
	jz	00205$
;	printf_large.c:807: OUTPUT_CHAR( '+', p );
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x2b
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:809: width--;
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	sjmp	00211$
00205$:
;	printf_large.c:811: else if (prefix_space)
	mov	dptr,#__print_format_prefix_space_1_100
	movx	a,@dptr
	jz	00211$
;	printf_large.c:813: OUTPUT_CHAR( ' ', p );
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x20
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
;	printf_large.c:815: width--;
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00211$:
;	printf_large.c:820: if (!left_justify)
	mov	dptr,#__print_format_left_justify_1_100
	movx	a,@dptr
	jnz	00219$
;	printf_large.c:822: while ( width-- > length )
	mov	dptr,#__print_format_length_1_100
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	r5,a
00212$:
	mov	ar3,r5
	dec	r5
	clr	c
	mov	a,r6
	subb	a,r3
	jnc	00329$
;	printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	mov	a,r7
	jz	00245$
	mov	r2,#0x30
	mov	r3,#0x00
	sjmp	00246$
00245$:
	mov	r2,#0x20
	mov	r3,#0x00
00246$:
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
	mov	dpl,r2
	lcall	__output_char
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
	sjmp	00212$
00219$:
;	printf_large.c:830: if (width > length)
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__print_format_length_1_100
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jnc	00216$
;	printf_large.c:831: width -= length;
	mov	dptr,#__print_format_width_1_100
	mov	a,r7
	clr	c
	subb	a,r6
	movx	@dptr,a
	sjmp	00321$
00216$:
;	printf_large.c:833: width = 0;
	mov	dptr,#__print_format_width_1_100
	clr	a
	movx	@dptr,a
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:837: while( length-- )
	sjmp	00321$
00329$:
	mov	dptr,#__print_format_width_1_100
	mov	a,r5
	movx	@dptr,a
00321$:
	mov	dptr,#__print_format_pstore_4_120
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__print_format_length_1_100
	movx	a,@dptr
	mov	r5,a
00224$:
	mov	ar3,r5
	dec	r5
	mov	a,r3
	jz	00226$
;	printf_large.c:839: lsd = !lsd;
	mov	dptr,#__print_format_lsd_1_100
	movx	a,@dptr
	mov	r3,a
	cjne	a,#0x01,00572$
00572$:
	clr	a
	rlc	a
	movx	@dptr,a
;	printf_large.c:840: if (!lsd)
	mov	dptr,#__print_format_lsd_1_100
	movx	a,@dptr
	jnz	00222$
;	printf_large.c:842: pstore++;
	inc	r6
	cjne	r6,#0x00,00574$
	inc	r7
00574$:
;	printf_large.c:843: value.byte[4] = *pstore >> 4;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov	r3,a
	mov	dptr,#(_value + 0x0004)
	movx	@dptr,a
	sjmp	00223$
00222$:
;	printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0f
	mov	dptr,#(_value + 0x0004)
	mov	a,r3
	movx	@dptr,a
00223$:
;	printf_large.c:853: output_digit( value.byte[4] );
	mov	dptr,#(_value + 0x0004)
	movx	a,@dptr
	mov	r3,a
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
	mov	dpl,r3
	lcall	_output_digit
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
	sjmp	00224$
00226$:
;	printf_large.c:856: if (left_justify)
	mov	dptr,#__print_format_left_justify_1_100
	movx	a,@dptr
	jnz	00575$
	ljmp	00240$
00575$:
;	printf_large.c:858: while (width-- > 0)
	mov	dptr,#__print_format_width_1_100
	movx	a,@dptr
	mov	r7,a
00227$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00576$
	ljmp	00240$
00576$:
;	printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	ar0
	mov	a,r7
	mov	r0,_spx
	inc	_spx
	movx	@r0,a
	pop	ar0
	mov	dpl,#0x20
	lcall	__output_char
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r7,a
	dec	_spx
	sjmp	00227$
00238$:
;	printf_large.c:868: OUTPUT_CHAR( c, p );
	mov	dpl,r4
	lcall	__output_char
	ljmp	00240$
00242$:
;	printf_large.c:872: return charsOutputted;
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
