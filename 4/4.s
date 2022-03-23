SECTION .text
global getCpuName
getCpuName:

mov    eax,80000002h
mov    rsi, buffer 
cpuid
mov    [rsi   ],eax
mov    [rsi+ 4],ebx
mov    [rsi+ 8],ecx
mov    [rsi+12],edx

mov    eax,80000003h
cpuid
mov    [rsi+16],eax
mov    [rsi+20],ebx
mov    [rsi+24],ecx
mov    [rsi+28],edx

mov    eax,80000004h
cpuid
mov    [rsi+32],eax
mov    [rsi+36],ebx
mov    [rsi+40],ecx
mov    [rsi+44],edx
ret 

SECTION .bss
buffer: resb 48 
len EQU $ - buffer
