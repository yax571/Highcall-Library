; Hc/NtUserGetKeyboardLayoutList
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetKeyboardLayoutList:DWORD

.DATA
.CODE

HcUserGetKeyboardLayoutList PROC
	mov r10, rcx
	mov eax, sciUserGetKeyboardLayoutList
	syscall
	ret
HcUserGetKeyboardLayoutList ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetKeyboardLayoutList:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetKeyboardLayoutList PROC
	mov eax, sciUserGetKeyboardLayoutList
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
HcUserGetKeyboardLayoutList ENDP

ENDIF

END