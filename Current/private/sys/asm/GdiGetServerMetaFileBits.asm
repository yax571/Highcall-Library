; Hc/NtGdiGetServerMetaFileBits
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiGetServerMetaFileBits:DWORD

.DATA
.CODE

HcGdiGetServerMetaFileBits PROC
	mov r10, rcx
	mov eax, sciGdiGetServerMetaFileBits
	syscall
	ret
HcGdiGetServerMetaFileBits ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiGetServerMetaFileBits:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiGetServerMetaFileBits PROC
	mov eax, sciGdiGetServerMetaFileBits
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
HcGdiGetServerMetaFileBits ENDP

ENDIF

END