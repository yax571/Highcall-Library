; Hc/NtUserSetWindowLong
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetWindowLong:DWORD

.DATA
.CODE

HcUserSetWindowLong PROC
	mov r10, rcx
	mov eax, sciUserSetWindowLong
	syscall
	ret
HcUserSetWindowLong ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetWindowLong:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetWindowLong PROC
	mov eax, sciUserSetWindowLong
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
HcUserSetWindowLong ENDP

ENDIF

END