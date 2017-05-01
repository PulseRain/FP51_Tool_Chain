;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.3 #9771 (MSVC)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmcs51 --model-large --xstack
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_init
	.globl _memmove
	.globl _memcpy
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _realloc
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
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 2
_realloc_sloc2_1_0:
	.ds 3
_realloc_sloc3_1_0:
	.ds 3
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
_realloc_sloc4_1_0:
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
_realloc_PARM_2:
	.ds 2
_realloc_ptr_1_42:
	.ds 3
_realloc_h_1_43:
	.ds 2
_realloc_next_free_1_43:
	.ds 2
_realloc_prev_free_1_43:
	.ds 2
_realloc_f_1_43:
	.ds 2
_realloc_pf_1_43:
	.ds 2
_realloc_blocksize_1_43:
	.ds 2
_realloc_maxblocksize_1_43:
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
;sloc2                     Allocated with name '_realloc_sloc2_1_0'
;sloc3                     Allocated with name '_realloc_sloc3_1_0'
;size                      Allocated with name '_realloc_PARM_2'
;ptr                       Allocated with name '_realloc_ptr_1_42'
;ret                       Allocated with name '_realloc_ret_1_43'
;h                         Allocated with name '_realloc_h_1_43'
;next_free                 Allocated with name '_realloc_next_free_1_43'
;prev_free                 Allocated with name '_realloc_prev_free_1_43'
;f                         Allocated with name '_realloc_f_1_43'
;pf                        Allocated with name '_realloc_pf_1_43'
;blocksize                 Allocated with name '_realloc_blocksize_1_43'
;oldblocksize              Allocated with name '_realloc_oldblocksize_1_43'
;maxblocksize              Allocated with name '_realloc_maxblocksize_1_43'
;newheader                 Allocated with name '_realloc_newheader_3_49'
;oldsize                   Allocated with name '_realloc_oldsize_2_50'
;------------------------------------------------------------
;	realloc.c:51: void XDATA *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
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
	mov	dptr,#_realloc_ptr_1_42
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:59: if(!__sdcc_heap_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	realloc.c:60: __sdcc_heap_init();
	lcall	___sdcc_heap_init
00102$:
;	realloc.c:63: if(!ptr)
	mov	dptr,#_realloc_ptr_1_42
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_ptr_1_42
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
;	realloc.c:64: return(malloc(size));
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	ljmp	_malloc
00104$:
;	realloc.c:66: if(!size)
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00106$
;	realloc.c:68: free(ptr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_free
;	realloc.c:69: return(0);
	mov	dptr,#0x0000
	ret
00106$:
;	realloc.c:72: prev_free = 0, pf = 0;
	mov	dptr,#_realloc_prev_free_1_43
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_realloc_pf_1_43
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	realloc.c:73: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_realloc_h_1_43
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_realloc_f_1_43
	mov	a,#___sdcc_heap_free
	movx	@dptr,a
	mov	a,#(___sdcc_heap_free >> 8)
	inc	dptr
	movx	@dptr,a
00132$:
	mov	dptr,#_realloc_h_1_43
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	orl	a,r1
	jz	00107$
	push	ar3
	push	ar4
	mov	_realloc_sloc0_1_0,r1
	mov	(_realloc_sloc0_1_0 + 1),r2
	mov	ar3,r5
	mov	ar4,r6
	clr	c
	mov	a,_realloc_sloc0_1_0
	subb	a,r3
	mov	a,(_realloc_sloc0_1_0 + 1)
	subb	a,r4
	pop	ar4
	pop	ar3
	jnc	00107$
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_realloc_prev_free_1_43
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_realloc_f_1_43
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_pf_1_43
	mov	a,r0
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,#0x02
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dptr,#_realloc_f_1_43
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_realloc_h_1_43
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00132$
00107$:
;	realloc.c:74: next_free = h;
	mov	dptr,#_realloc_h_1_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_next_free_1_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:76: if(!size || size + offsetof(struct header, next_free) < size)
	mov	a,r3
	orl	a,r4
	jz	00108$
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00109$
00108$:
;	realloc.c:77: return(0);
	mov	dptr,#0x0000
	ret
00109$:
;	realloc.c:78: blocksize = size + offsetof(struct header, next_free);
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	dptr,#_realloc_blocksize_1_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:79: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00112$
;	realloc.c:80: blocksize = sizeof(struct header);
	mov	dptr,#_realloc_blocksize_1_43
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00112$:
;	realloc.c:82: h = (void XDATA *)((char XDATA *)(ptr) - offsetof(struct header, next_free));
	push	ar3
	push	ar4
	mov	dptr,#_realloc_ptr_1_42
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	add	a,#0xfe
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	dptr,#_realloc_h_1_43
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	realloc.c:83: oldblocksize = (char XDATA *)(h->next) - (char XDATA *)h;
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r2
	mov	ar1,r7
	mov	ar3,r5
	mov	ar4,r6
	mov	a,r0
	clr	c
	subb	a,r3
	mov	_realloc_sloc0_1_0,a
	mov	a,r1
	subb	a,r4
	mov	(_realloc_sloc0_1_0 + 1),a
;	realloc.c:85: maxblocksize = oldblocksize;
	mov	dptr,#_realloc_maxblocksize_1_43
	mov	a,_realloc_sloc0_1_0
	movx	@dptr,a
	mov	a,(_realloc_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	realloc.c:86: if(prev_free && prev_free->next == h) // Can merge with previous block
	mov	dptr,#_realloc_prev_free_1_43
	movx	a,@dptr
	mov	_realloc_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc1_1_0 + 1),a
	pop	ar4
	pop	ar3
	mov	a,_realloc_sloc1_1_0
	orl	a,(_realloc_sloc1_1_0 + 1)
	jz	00114$
	mov	dpl,_realloc_sloc1_1_0
	mov	dph,(_realloc_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	cjne	a,ar5,00114$
	mov	a,r1
	cjne	a,ar6,00114$
;	realloc.c:87: maxblocksize += (char XDATA *)h - (char XDATA *)prev_free;
	push	ar2
	push	ar7
	mov	ar0,r5
	mov	ar1,r6
	mov	r2,_realloc_sloc1_1_0
	mov	r7,(_realloc_sloc1_1_0 + 1)
	mov	a,r0
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r7
	mov	r1,a
	mov	dptr,#_realloc_maxblocksize_1_43
	mov	a,r0
	add	a,_realloc_sloc0_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a,(_realloc_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	realloc.c:127: return(0);
	pop	ar7
	pop	ar2
;	realloc.c:87: maxblocksize += (char XDATA *)h - (char XDATA *)prev_free;
00114$:
;	realloc.c:88: if(next_free == h->next) // Can merge with next block
	mov	dptr,#_realloc_next_free_1_43
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	cjne	a,ar2,00117$
	mov	a,r1
	cjne	a,ar7,00117$
;	realloc.c:89: maxblocksize += (char XDATA *)(next_free->next) - (char XDATA *)next_free;
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,r7
	subb	a,r1
	mov	r7,a
	mov	dptr,#_realloc_maxblocksize_1_43
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_realloc_maxblocksize_1_43
	mov	a,r2
	add	a,r0
	movx	@dptr,a
	mov	a,r7
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00117$:
;	realloc.c:91: if(blocksize <= maxblocksize) // Can resize in place.
	mov	dptr,#_realloc_blocksize_1_43
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_maxblocksize_1_43
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r7
	jnc	00213$
	ljmp	00127$
00213$:
;	realloc.c:93: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	mov	dptr,#_realloc_prev_free_1_43
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	orl	a,r0
	jnz	00214$
	ljmp	00119$
00214$:
	push	ar2
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar5,00215$
	mov	a,r7
	cjne	a,ar6,00215$
	sjmp	00216$
00215$:
	pop	ar7
	pop	ar2
	sjmp	00119$
00216$:
	pop	ar7
	pop	ar2
;	realloc.c:95: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	mov	_realloc_sloc2_1_0,r0
	mov	(_realloc_sloc2_1_0 + 1),r1
	mov	(_realloc_sloc2_1_0 + 2),#0x00
	mov	_realloc_sloc3_1_0,r5
	mov	(_realloc_sloc3_1_0 + 1),r6
	mov	(_realloc_sloc3_1_0 + 2),#0x00
	mov	r0,_realloc_sloc0_1_0
	mov	r6,(_realloc_sloc0_1_0 + 1)
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r6
	subb	a,r7
	mov	_realloc_sloc4_1_0,c
	jc	00136$
	mov	ar6,r2
	sjmp	00137$
00136$:
	mov	r6,_realloc_sloc0_1_0
	mov	r7,(_realloc_sloc0_1_0 + 1)
00137$:
	mov	dptr,#_memmove_PARM_2
	mov	a,_realloc_sloc3_1_0
	movx	@dptr,a
	mov	a,(_realloc_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_realloc_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_realloc_sloc2_1_0
	mov	dph,(_realloc_sloc2_1_0 + 1)
	mov	b,(_realloc_sloc2_1_0 + 2)
	lcall	_memmove
;	realloc.c:96: h = prev_free;
	mov	dptr,#_realloc_prev_free_1_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_h_1_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:97: *pf = next_free;
	mov	dptr,#_realloc_pf_1_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_next_free_1_43
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	realloc.c:98: f = pf;
	mov	dptr,#_realloc_f_1_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00119$:
;	realloc.c:101: if(next_free && next_free == h->next) // Merge with following block
	mov	dptr,#_realloc_next_free_1_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00122$
	mov	dptr,#_realloc_h_1_43
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r5
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	cjne	a,ar0,00122$
	mov	a,r7
	cjne	a,ar1,00122$
;	realloc.c:103: h->next = next_free->next;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r5
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	realloc.c:104: *f = next_free->next_free;
	mov	dptr,#_realloc_f_1_43
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00122$:
;	realloc.c:107: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	mov	dptr,#_realloc_blocksize_1_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dptr,#_realloc_maxblocksize_1_43
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r5
	jc	00125$
;	realloc.c:109: header_t *const newheader = (header_t *const)((char XDATA *)h + blocksize);
	mov	dptr,#_realloc_h_1_43
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar0,r2
	mov	ar1,r5
	mov	a,r6
	add	a,r0
	mov	r6,a
	mov	a,r7
	addc	a,r1
	mov	r7,a
;	realloc.c:110: newheader->next = h->next;
	mov	dpl,r2
	mov	dph,r5
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	realloc.c:111: newheader->next_free = *f;
	mov	a,#0x02
	add	a,r6
	mov	_realloc_sloc3_1_0,a
	clr	a
	addc	a,r7
	mov	(_realloc_sloc3_1_0 + 1),a
	mov	dptr,#_realloc_f_1_43
	movx	a,@dptr
	mov	_realloc_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc2_1_0 + 1),a
	mov	dpl,_realloc_sloc2_1_0
	mov	dph,(_realloc_sloc2_1_0 + 1)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,_realloc_sloc3_1_0
	mov	dph,(_realloc_sloc3_1_0 + 1)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	realloc.c:112: *f = newheader;
	mov	dpl,_realloc_sloc2_1_0
	mov	dph,(_realloc_sloc2_1_0 + 1)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:113: h->next = newheader;
	mov	dpl,r2
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00125$:
;	realloc.c:116: return(&(h->next_free));
	mov	dptr,#_realloc_h_1_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ret
00127$:
;	realloc.c:119: if(ret = malloc(size))
	push	ar0
	mov	r0,_spx
	inc	_spx
	inc	_spx
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r3,a
	dec	r0
	movx	a,@r0
	mov	r4,a
	mov	_spx,r0
	mov	a,r6
	orl	a,r7
	jnz	00222$
	ljmp	00129$
00222$:
;	realloc.c:121: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	mov	a,_realloc_sloc0_1_0
	add	a,#0xfe
	mov	r2,a
	mov	a,(_realloc_sloc0_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
;	realloc.c:122: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	mov	ar0,r6
	mov	ar1,r7
	mov	_realloc_sloc3_1_0,r0
	mov	(_realloc_sloc3_1_0 + 1),r1
	mov	(_realloc_sloc3_1_0 + 2),#0x00
	mov	dptr,#_realloc_ptr_1_42
	movx	a,@dptr
	mov	_realloc_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc2_1_0 + 2),a
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r5
	subb	a,r4
	mov	_realloc_sloc4_1_0,c
	jnc	00139$
	mov	ar3,r2
	mov	ar4,r5
00139$:
	mov	dptr,#_memcpy_PARM_2
	mov	a,_realloc_sloc2_1_0
	movx	@dptr,a
	mov	a,(_realloc_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_realloc_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
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
	mov	dpl,_realloc_sloc3_1_0
	mov	dph,(_realloc_sloc3_1_0 + 1)
	mov	b,(_realloc_sloc3_1_0 + 2)
	lcall	_memcpy
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
;	realloc.c:123: free(ptr);
	mov	dptr,#_realloc_ptr_1_42
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_free
	mov	r0,_spx
	dec	r0
	movx	a,@r0
	mov	r6,a
	dec	r0
	movx	a,@r0
	mov	r7,a
	mov	_spx,r0
;	realloc.c:124: return(ret);
	mov	dpl,r6
	mov	dph,r7
	ret
00129$:
;	realloc.c:127: return(0);
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
