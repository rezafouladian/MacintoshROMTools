; 68000 Status Register Bits
InterruptBit0   EQU         8
InterruptBit1   EQU         9
InterruptBit2   EQU         10
Supervisor      EQU         13
TraceBit        EQU         15                      ; Trace bit. When set, execute trace exception after every instruction

HiIntMask       EQU         $300

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

ioQElSize       EQU         50                      ; Length of I/O parameter block
ioMisc          EQU         $1C                     ; [pointer]

noATChg         EQU         6

HasCharger      EQU         0

PlusROMVersion  EQU         $75
UnknownROM      EQU         $176                    ; A ROM identifier that may exist but I am not sure what it is
SEROMVersion    EQU         $276

ioWDProcID		EQU 		$1C   					; WD's ProcID [long]
SysWDProcID		EQU 		'ERIK'   			    ; For use with OpenWD

OldBufPtr       EQU         $4                      ; Set to pre-cache value of BufPtr [long]
NewBufPtr       EQU         $8                      ; Set to bottom of cache [long]
CacheMinZn      EQU         $20                     ; Minimum application zone size [long]

pmBusyErr       EQU         -13000                  ; Power Manager never ready to start handshake
pmReplyTOErr    EQU         -13001
pmSendStartErr  EQU         -13002
pmSendEndErr    EQU         -13003
pmRecvStartErr  EQU         -13004
pmRecvEndErr    EQU         -13005

dqDrvSz         EQU         $C

dCtlStorage     EQU         $14

Active          EQU         $10

ioDrvNum        EQU         $16

SLIMRegPtr      EQU         -56
HWDepProcPtr    EQU         -52
HeaderInfoPtr   EQU         -48
FormatTime      EQU         -44
FormatTicks     EQU         -40
CheckSumPtr     EQU         -36
DataStartPtr    EQU         -32
DataEndPtr      EQU         -28
MediaIconPtr    EQU         -24
DriveIconPtr    EQU         -20
WhereStringPtr  EQU         -16
DriveInfo       EQU         -12

DiskInPlace     EQU         -3
dQDrive         EQU         6
dqRefNum        EQU         8
dQDrvSz         EQU         $C
EDiskVarsSize   EQU         $144                    ; Size of global variables used by driver
                                                    ; Temporary hard coded size

CheckEDiskInserted  EQU     0
CheckEDiskReadOnly  EQU     1
EnableEDiskWrites   EQU     2
DisableEDiskWrites  EQU     3
EjectEDisk          EQU     4

csParam         EQU         $1C

DCEPointer      EQU         $C
