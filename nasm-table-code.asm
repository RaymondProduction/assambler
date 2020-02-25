global _start

section .data
    symbol: times 2 db 31 ; Fist symbol is '!' with number code 32
        lf: db 10          ; LF for full str-buffer
    counter1: times 1 db 0
    counter2: times 1 db 0

section .text

_start:
    .3:                 ; LOOP
    inc DWORD [symbol]  ; code symbol + 1
    mov eax, 4          ; Print 100 bytes starting from str
    mov ebx, 1          ; |
    mov ecx, symbol     ; | <- source
    mov edx, 1          ; | <- print one symbol
    int 80h             ; \ 

    inc DWORD [counter1]
    mov al, [counter1]
    cmp al, 6
    jne .3

    inc DWORD [counter2]
    mov bl, [counter2]
    cmp bl, 0
    jne .3

    mov eax, 4          ; Print 100 bytes starting from str
    mov ebx, 1          ; |
    mov ecx, lf         ; | <- source
    mov edx, 1          ; | <- print one symbol
    int 80h             ; \    

    mov eax, 1          ; Return
    mov ebx, 0          ; | <- return code
    int 80h             ; \
