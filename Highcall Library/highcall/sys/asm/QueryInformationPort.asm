; Hc/NtQueryInformationPort
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryInformationPort:DWORD

.DATA
.CODE

HcQueryInformationPort PROC
	mov r10, rcx
	mov eax, sciQueryInformationPort
	syscall
	ret
HcQueryInformationPort ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryInformationPort:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryInformationPort PROC
	mov eax, sciQueryInformationPort
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
HcQueryInformationPort ENDP

ENDIF

END