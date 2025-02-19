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
sleepSig        EQU         'MATT'
SleepDemand     EQU         2
SleepWakeUp     EQU         3
SleepUnlock     EQU         4
SleepDeny       EQU         5
SleepNow        EQU         6

ioQElSize       EQU         $32

noATChg         EQU         6

HasCharger      EQU         0

PlusROMVersion  EQU         $75
UnknownROM      EQU         $176                    ; A ROM identifier that may exist but I am not sure what it is
SEROMVersion    EQU         $276

ioWDProcID		EQU 		$1C   					; WD's ProcID [long]
SysWDProcID		EQU 		'ERIK'   			    ; For use with OpenWD
