; 68000 Status Register Bits
InterruptBit0   EQU         8
InterruptBit1   EQU         9
InterruptBit2   EQU         10
Supervisor      EQU         13
TraceBit        EQU         15                      ; Trace bit. When set, execute trace exception after every instruction

TROMCode        EQU         $55AAAA55               ; Magic bytes to identify test ROM

GRAFPROCS       EQU         $68

sleepConst      EQU         'SARA'
wmStConst       EQU         'WLSC'
