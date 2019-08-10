global _start

section .data
    symbol: times 1 db 31 ; Fist symbol is '!' with number code 32
        lf: db 10          ; LF for full str-buffer

section .text

_start:
    .3:                 ; LOOP
    inc DWORD [symbol]  ; code symbol + 1
    mov eax, 4          ; Print 100 bytes starting from str
    mov ebx, 1          ; |
    mov ecx, symbol     ; | <- source
    mov edx, 1          ; | <- print one symbol
    int 80h             ; \    

    mov al, [symbol]
    cmp al, 127         ; final symbol symbol '~'
    jne .3

    mov eax, 4          ; Print 100 bytes starting from str
    mov ebx, 1          ; |
    mov ecx, lf         ; | <- source
    mov edx, 1          ; | <- print one symbol
    int 80h             ; \    

    mov eax, 1          ; Return
    mov ebx, 0          ; | <- return code
    int 80h             ; \
