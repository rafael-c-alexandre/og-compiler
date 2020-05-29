; TEXT
segment	.text
; ALIGN
align	4
; LABEL f
f:
; ENTER 4
	push	ebp
	mov	ebp, esp
	sub	esp, 4
; INT 1
	push	dword 1
; I2D
	fild	dword [esp]
	sub	esp, byte 4
	fstp	qword [esp]
; DUP64
; SP
	push	esp
; LDDOUBLE
	pop	eax
	push	dword [eax+4]
	push	dword [eax]
; LOCAL 8
	lea	eax, [ebp+8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
; INT 2
	push	dword 2
; INT 3
	push	dword 3
; SHTL
	pop	ecx
	sal	dword [esp], cl
; ADD
	pop	eax
	add	dword [esp], eax
; DSTORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
	pop	eax
	mov	[ecx+4], eax
; TRASH 8
	add	esp, 8
; LOCAL 8
	lea	eax, [ebp+8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
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
; TEXT
segment	.text
; ALIGN
align	4
; GLOBAL _main, :function
global	_main:function
; LABEL _main
_main:
; ENTER 8
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; INT 3
	push	dword 3
; INT 3
	push	dword 3
; SHTL
	pop	ecx
	sal	dword [esp], cl
; ALLOC
	pop	eax
	sub	esp, eax
; SP
	push	esp
; LOCAL -8
	lea	eax, [ebp+-8]
	push	eax
; STINT
	pop	ecx
	pop	eax
	mov	[ecx], eax
; INT 100
	push	dword 100
; I2D
	fild	dword [esp]
	sub	esp, byte 4
	fstp	qword [esp]
; DUP64
; SP
	push	esp
; LDDOUBLE
	pop	eax
	push	dword [eax+4]
	push	dword [eax]
; LOCAL -8
	lea	eax, [ebp+-8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
; INT 0
	push	dword 0
; INT 3
	push	dword 3
; SHTL
	pop	ecx
	sal	dword [esp], cl
; ADD
	pop	eax
	add	dword [esp], eax
; DSTORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
	pop	eax
	mov	[ecx+4], eax
; TRASH 8
	add	esp, 8
; INT 40
	push	dword 40
; I2D
	fild	dword [esp]
	sub	esp, byte 4
	fstp	qword [esp]
; DUP64
; SP
	push	esp
; LDDOUBLE
	pop	eax
	push	dword [eax+4]
	push	dword [eax]
; LOCAL -8
	lea	eax, [ebp+-8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
; INT 1
	push	dword 1
; INT 3
	push	dword 3
; SHTL
	pop	ecx
	sal	dword [esp], cl
; ADD
	pop	eax
	add	dword [esp], eax
; DSTORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
	pop	eax
	mov	[ecx+4], eax
; TRASH 8
	add	esp, 8
; INT 0
	push	dword 0
; I2D
	fild	dword [esp]
	sub	esp, byte 4
	fstp	qword [esp]
; DUP64
; SP
	push	esp
; LDDOUBLE
	pop	eax
	push	dword [eax+4]
	push	dword [eax]
; LOCAL -8
	lea	eax, [ebp+-8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
; INT 2
	push	dword 2
; INT 3
	push	dword 3
; SHTL
	pop	ecx
	sal	dword [esp], cl
; ADD
	pop	eax
	add	dword [esp], eax
; DSTORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
	pop	eax
	mov	[ecx+4], eax
; TRASH 8
	add	esp, 8
; LOCAL -8
	lea	eax, [ebp+-8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
; CALL f
	call	f
; TRASH 4
	add	esp, 4
; LDFVAL32
	push	eax
; TRASH 4
	add	esp, 4
; LOCAL -8
	lea	eax, [ebp+-8]
	push	eax
; LDINT
	pop	eax
	push	dword [eax]
; INT 2
	push	dword 2
; INT 3
	push	dword 3
; SHTL
	pop	ecx
	sal	dword [esp], cl
; ADD
	pop	eax
	add	dword [esp], eax
; LDDOUBLE
	pop	eax
	push	dword [eax+4]
	push	dword [eax]
; CALL printd
	call	printd
; TRASH 8
	add	esp, 8
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
; EXTERN printd
extern	printd
