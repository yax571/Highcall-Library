; Hc/NtUserRegisterHotKey
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserRegisterHotKey:DWORD

.DATA
.CODE

HcUserRegisterHotKey PROC
	mov r10, rcx
	mov eax, sciUserRegisterHotKey
	syscall
	ret
HcUserRegisterHotKey ENDP

ELSE
; 32bit

EXTERNDEF C sciUserRegisterHotKey:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserRegisterHotKey PROC
	mov eax, sciUserRegisterHotKey
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
HcUserRegisterHotKey ENDP

ENDIF

END