; Hc/NtGdiEngCreatePalette
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngCreatePalette:DWORD

.DATA
.CODE

HcGdiEngCreatePalette PROC
	mov r10, rcx
	mov eax, sciGdiEngCreatePalette
	syscall
	ret
HcGdiEngCreatePalette ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngCreatePalette:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngCreatePalette PROC
	mov eax, sciGdiEngCreatePalette
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
HcGdiEngCreatePalette ENDP

ENDIF

END