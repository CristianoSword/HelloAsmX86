section .data
    hello db 'Hello, World x86-64!', 0x0A
		  db 'Cristiano Camacho 03/11/24 16:47', 0 ; A string termina com um caractere nulo para printf

section .text
    global main

    extern printf
    extern getchar             ; Para esperar a entrada do usuário antes de sair

main:
    ; Chamar printf para imprimir a mensagem
    mov rcx, hello             ; Primeiro argumento (endereço da string) vai em RCX no Windows x64
    call printf                ; Chama printf

    ; Esperar o usuário pressionar uma tecla antes de sair
    call getchar               ; Chama getchar para aguardar a entrada do usuário

    ; Sair do programa
    mov eax, 0                 ; Código de saída 0
    ret                        ; Retorna ao sistema operacional


