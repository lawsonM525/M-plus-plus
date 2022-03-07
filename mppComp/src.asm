.386
.MODEL flat, stdcall

ExitProcess PROTO, uExitCode: BYTE

GetStdHandle PROTO, nStdHandle: DWORD
WriteConsoleA PROTO, handle: DWORD, lpBuffer:PTR BYTE, nNumberOfBytesToWrite:DWORD, lpNumberOfBytesWritten:PTR DWORD, lpReserved:DWORD

.data
	welcome db "Welcome to the M++ compiler!"
	len equ $ - welcome
	outputHandle dd ?
	written dd ?

.code
_start PROC
	INVOKE GetStdHandle, -11
	mov outputHandle,eax
	mov ecx, offset welcome
	mov edx,len

	INVOKE WriteConsoleA, outputHandle, ecx, edx, offset written, 0

	INVOKE ExitProcess,0
_start ENDP
END