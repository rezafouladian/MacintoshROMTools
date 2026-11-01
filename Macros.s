; Macros.s
;
; RAM-less subroutine calls and long-range (32-bit offset) jumps, as used
; by the Universal ROMs. Written for asmotor (motor68k).

            ; Call a subroutine, storing the return address in A6
BSR6:       MACRO
            lea     .ret\@(PC),A6
            jmp     \1(PC)
.ret\@:
            ENDM

            ; Branch to a subroutine, storing the return address in A6
BRA6:       MACRO
            lea     .ret\@(PC),A6
            bra.w   \1
.ret\@:
            ENDM

            ; Return using the address stored in A6 by BSR6
RTS6:       MACRO
            jmp     (A6)
            ENDM

            ; Call a subroutine, storing the return address in A5
BSR5:       MACRO
            lea     .ret\@(PC),A5
            jmp     \1(PC)
.ret\@:
            ENDM

            ; Return using the address stored in A5 by BSR5
RTS5:       MACRO
            jmp     (A5)
            ENDM

            ; Load the address of a label beyond 16-bit range
            ; \2 is the address register to load
BigLea:     MACRO
.base\@:
            lea     (\1-.base\@).l,\2
            lea     .base\@(PC,\2.l),\2
            ENDM

            ; Jump to a label beyond 16-bit range
            ; \2 is the address register used as scratch for the offset
BigJmp:     MACRO
.base\@:
            lea     (\1-.base\@).l,\2
            jmp     .base\@(PC,\2.l)
            ENDM

            ; Call a subroutine beyond 16-bit range
            ; \2 is the address register used as scratch for the offset
BigJsr:     MACRO
.base\@:
            lea     (\1-.base\@).l,\2
            jsr     .base\@(PC,\2.l)
            ENDM

            ; Call a subroutine beyond 16-bit range, storing the return address in A6
            ; \2 is the address register used as scratch for the offset
BigBSR6:    MACRO
            lea     .ret\@(PC),A6
.base\@:
            lea     (\1-.base\@).l,\2
            jmp     .base\@(PC,\2.l)
.ret\@:
            ENDM

            ; Call a subroutine beyond 16-bit range, storing the return address in A5
            ; \2 is the address register used as scratch for the offset
BigBSR5:    MACRO
            lea     .ret\@(PC),A5
.base\@:
            lea     (\1-.base\@).l,\2
            jmp     .base\@(PC,\2.l)
.ret\@:
            ENDM

            ; jsr ([\1]) - call through a vector at absolute word address \1.
            ; MPW Asm fills the suppressed index field of the extension word
            ; with A0 ($81E1); asmotor would write D0 ($01E1), so the
            ; instruction is spelled out here.
JsrInd:     MACRO
            dc.w    $4EB0,$81E1,\1
            ENDM

            ; jmp ([\1]) - jump through a vector at absolute word address \1,
            ; encoded the same way as JsrInd
JmpInd:     MACRO
            dc.w    $4EF0,$81E1,\1
            ENDM

            ; 68040 PFLUSHA. asmotor only knows the 68030 PMMU form
            ; ($F000,$2400), so the 68040 opcode is spelled out here.
PFlushA040: MACRO
            dc.w    $F518
            ENDM
