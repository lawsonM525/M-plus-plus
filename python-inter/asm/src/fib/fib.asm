; -----------------------------------------------------------------------------
;  This asm code writes the first 60 Fibonacci numbers. To
; assemble and run:
;
;     nasm -felf64 fib.asm && gcc fib.o && ./a.out
;     gcc -no-pie if you face segmentation fault
;
; -----------------------------------------------------------------------------

        global  main
        extern  printf

        section .text
main:
        push    rbx                     

        mov     ecx, 60                 
        xor     rax, rax                
        xor     rbx, rbx                
        inc     rbx                     
print:

        push    rax                     
        push    rcx                     

        mov     rdi, format             
        mov     rsi, rax                
        xor     rax, rax                

        
        call    printf                  

        pop     rcx                     
        pop     rax                     

        mov     rdx, rax                
        mov     rax, rbx                
        add     rbx, rdx                
        dec     ecx                     
        jnz     print                   

        pop     rbx                     
        ret
format:
        db  "%20ld", 10, 0