global main
extern putchar 
section .text 
main:
push rbp 
mov rbp, rsp 
xor eax, eax 
cpuid
mov [String], ebx
mov [String + 4], edx
mov [String + 8], ecx
mov rbp, 0
test:
mov rdi, [String + rbp] 
call putchar wrt ..plt 
inc rbp
cmp rbp, 12 
jne test 
mov eax, 0 
pop rbp 
retn
section .data 
String db 12
	
