            macro BigLea
                lea (\1-*).l,\2
                lea (*-6,PC,\2.l),\2
            endm

            macro BSR6
                lea .\@,A6
                jmp (\1,PC)
            .\@:
            endm

            macro BigJsr
                lea (\1-*).l,\2
                jsr (*-6,PC,\2.l)
            endm
