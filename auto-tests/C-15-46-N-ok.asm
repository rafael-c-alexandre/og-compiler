; DATA
segment	.data
; ALIGN
align	4
; LABEL x
x:
; SINT 10
	dd	10
; DATA
segment	.data
; ALIGN
align	4
; LABEL y
y:
; SINT 3
	dd	3
; TEXT
segment	.text
; ALIGN
align	4
; GLOBAL _main, :function
global	_main:function
; LABEL _main
_main:
; ENTER 4
	push	ebp
	mov	ebp, esp
	sub	esp, 4
; ADDR x
	push	dword $x
; LDINT
	pop	eax
	push	dword [eax]
; ADDR y
	push	dword $y
; LDINT
	pop	eax
	push	dword [eax]
; EQ
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	sete	cl
	mov	[esp], ecx
; DUP32
	push	dword [esp]
; JNZ _L1
	pop	eax
	cmp	eax, byte 0
	jne	near _L1
; ADDR x
	push	dword $x
; LDINT
	pop	eax
	push	dword [eax]
; ADDR y
	push	dword $y
; LDINT
	pop	eax
	push	dword [eax]
; EQ
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	sete	cl
	mov	[esp], ecx
; OR
	pop	eax
	or	dword [esp], eax
; ALIGN
align	4
; LABEL _L1
_L1:
; CALL printi
	call	printi
; TRASH 4
	add	esp, 4
; INT 0
	push	dword 0
; STFVAL32
	pop	eax
; LEAVE
	leave
; RET
	ret
; LEAVE
	leave
; RET
	ret
; EXTERN printi
extern	printi
