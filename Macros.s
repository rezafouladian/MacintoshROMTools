    ; Jump to an address, storing the return address in A6
    macro BSR6
        lea .\@,A6
        jmp (\1,PC)
    .\@:
    endm

    ; Jump to an address, storing the return address in A5
    macro BSR5
        lea .\@,A5
        jmp (\1,PC)
    .\@:
    endm
    
    ; Branch to an address, storing the return address in A6
    macro BRA6
        lea .\@,A6
        bra (\1)
    .\@:
    endm

    ; Return using the address stored in A6 from BSR6
    macro RTS6
        jmp (A6)
    endm

    macro BigLea
        lea (\1-*).l,\2
        lea (*-6,PC,\2.l),\2
    endm

    macro BigJsr
        lea (\1-*).l,\2
        jsr (*-6,PC,\2.l)
    endm

    macro BigBSR6
        lea .\@,A6
        lea (\1-*).l,A0
        jmp (*-6,PC,A0.l)
    .\@:
    endm
