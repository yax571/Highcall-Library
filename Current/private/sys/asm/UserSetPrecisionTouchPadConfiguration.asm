; Hc/NtUserSetPrecisionTouchPadConfiguration
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetPrecisionTouchPadConfiguration:DWORD

.DATA
.CODE

HcUserSetPrecisionTouchPadConfiguration PROC
	mov r10, rcx
	mov eax, sciUserSetPrecisionTouchPadConfiguration
	syscall
	ret
HcUserSetPrecisionTouchPadConfiguration ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetPrecisionTouchPadConfiguration:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetPrecisionTouchPadConfiguration PROC
	mov eax, sciUserSetPrecisionTouchPadConfiguration
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
HcUserSetPrecisionTouchPadConfiguration ENDP

ENDIF

END