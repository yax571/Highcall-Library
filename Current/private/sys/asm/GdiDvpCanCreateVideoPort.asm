; Hc/NtGdiDvpCanCreateVideoPort
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDvpCanCreateVideoPort:DWORD

.DATA
.CODE

HcGdiDvpCanCreateVideoPort PROC
	mov r10, rcx
	mov eax, sciGdiDvpCanCreateVideoPort
	syscall
	ret
HcGdiDvpCanCreateVideoPort ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDvpCanCreateVideoPort:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDvpCanCreateVideoPort PROC
	mov eax, sciGdiDvpCanCreateVideoPort
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiDvpCanCreateVideoPort ENDP

ENDIF

END