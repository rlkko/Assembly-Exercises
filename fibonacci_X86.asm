format PE console
entry start

include 'win32a.inc' 

; this is a demo with a library
section '.text' code readable executable
start:
    ;ebx = t1
    ;edx = t2
    mov ebx,1
    mov edx,2 
    
    ;get user input for n
    call read_hex
    mov edi,eax
    
    ;counter
    mov esi,3
    
    ;nextTerm =  t1 + t2 
    mov ecx,ebx
    add ecx,edx
    
    ;print t1
    mov eax,ebx
    call print_eax

    ;print t2
    mov eax,edx
    call print_eax

l1:
    call print_numbers
    inc esi

    ;t1 = t2
    mov ebx,edx

    ;t2 = nextTerm
    mov edx,ecx
   
   ;nextTerm = t1 + t2
    mov ecx,ebx
    add ecx,edx

    cmp esi,edi
    jnz l1

	push	0
	call	[ExitProcess]

print_numbers:
    mov eax,ecx
    call print_eax
    
    ret

include 'training.inc'
