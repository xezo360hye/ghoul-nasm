; too lazy to implement myself
extern printf

; constants
segment .data
        fmt db "%i", 0xA, 0
        final db "I am Ghoul", 0xA, 0

; variables
segment .bss
        ghoul resd 1

; code section
segment .text
        global main

; main function
main:
        ; init counter
        mov [ghoul], dword 1000

        ; start loop
        .loop:
                ; print number
                push dword [ghoul]
                push fmt
                call printf
                add  esp, 4*2

                ; 1000-7 and loop
                sub  dword [ghoul], 7
                jg   .loop

        ; I am Ghoul
        push final
        call printf
        add esp, 4

        ; return 0
        xor eax, eax
        ret
