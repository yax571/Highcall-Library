; Hc/NtGdiDdDDIGetContextInProcessSchedulingPriority
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIGetContextInProcessSchedulingPriority:DWORD

.DATA
.CODE

HcGdiDdDDIGetContextInProcessSchedulingPriority PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIGetContextInProcessSchedulingPriority
	syscall
	ret
HcGdiDdDDIGetContextInProcessSchedulingPriority ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIGetContextInProcessSchedulingPriority:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIGetContextInProcessSchedulingPriority PROC
	mov eax, sciGdiDdDDIGetContextInProcessSchedulingPriority
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
HcGdiDdDDIGetContextInProcessSchedulingPriority ENDP

ENDIF

END