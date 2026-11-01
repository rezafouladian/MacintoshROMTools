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

ioQElSize       EQU         50                      ; Length of I/O parameter block
ioMisc          EQU         $1C                     ; [pointer]

noATChg         EQU         6

HasCharger      EQU         0

PlusROMVersion  EQU         $75
UnknownROM      EQU         $176                    ; A ROM identifier that may exist but I am not sure what it is
SEROMVersion    EQU         $276

ioWDProcID		EQU 		$1C   					; WD's ProcID [long]

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
SysWDProcID		EQU 		'ERIK'                  ; For use with OpenWD

CACR_IE_040     EQU         15
CACR_DE_040     EQU         31

cpu68000		EQU			0
cpu68010		EQU			1
cpu68020		EQU			2
cpu68030		EQU			3
cpu68040		EQU			4

CACR_EI_020_030			EQU		0 
CACR_FI_020_030			EQU		1 
CACR_CEI_020_030		EQU		2 
CACR_CI_020_030			EQU		3 
CACR_IBE_030			EQU		4 
CACR_ED_030				EQU		8 
CACR_FD_030				EQU		9 
CACR_CED_030			EQU		10
CACR_CD_030				EQU		11
CACR_DBE_030			EQU		12
CACR_WA_030				EQU		13

false32b  		EQU 		0
true32b   		EQU 		1

beok            EQU         27

paramErr        EQU         -50
dsBadSlotInt    EQU         51

nuBusTTxlat     EQU         $807FC040
ioNuBusTTxlat   EQU         $500FC040
MMStartMode     EQU         0

SysZoneSize     EQU         $1800
AppZoneSize     EQU         $1800

dfltMasters     EQU         32

videoMagic      EQU         $5A932BC7

delay325uS      EQU  $100

vRTCData        EQU  0
vRTCClk         EQU  1
vXcvrSesBit     EQU  3
vSysSesbit      EQU  5

ROMExists           EQU 0                           ; +3
DiagROMExists       EQU 1                           ; +3
VIA1Exists          EQU 2                           ; +3
SCCRdExists         EQU 3                           ; +3
SCCWrExists         EQU 4                           ; +3
IWMExists           EQU 5                           ; +3
PWMExists           EQU 6                           ; +3
SoundExists         EQU 7                           ; +3
SCSIExists          EQU 8                           ; -8, +2
SCSIDackExists      EQU 9                           ; -8, +2
SCSIHskExists       EQU 10                          ; -8, +2
VIA2Exists          EQU 11                          ; -8, +2
ASCExists           EQU 12                          ; -8, +2
RBVExists           EQU 13                          ; -8, +2
VDACExists          EQU 14                          ; -8, +2
SCSIDMAExists       EQU 15                          ; -8, +2
SWIMIOPExists       EQU 16                          ; -16, +2 (0)
SCCIOPExists        EQU 17                          ; -16, +2 (1)
OSSExists           EQU 18                          ; -16, +2 (2)
FMCExists           EQU 19                          ; -16, +2 (3)
RPUExists           EQU 20                          ; -16, +2 (4)
OrwellExists        EQU 21                          ; -16, +2 (5)
JAWSExists          EQU 22                          ; -16, +2 (6)
SonicExists         EQU 23                          ; -16, +2 (7)
SCSI96_1Exists      EQU 24                          ; -24, +1 (0)
SCSI96_2Exists      EQU 25                          ; -24, +1 (1)
DAFBExists          EQU 26                          ; -24, +1 (2)
PSCExists           EQU 27                          ; -24, +1
ROMPhysAddrExists   EQU 28                          ; -24, +1
PatchROMExists      EQU 29                          ; -24, +1
NewAgeExists        EQU 30                          ; -24, +1
SingerExists        EQU 32                          ; -32
DSPExists           EQU 33                          ; -32
MACEExists          EQU 34                          ; -32
MUNIExists          EQU 35                          ; -32
AMICExists          EQU 36                          ; -32
PrattExists         EQU 37                          ; -32
SWIM3Exists         EQU 38                          ; -32
AwacsExists         EQU 39                          ; -32
CivicExists         EQU 40
SebastianExists     EQU 41
BARTExists          EQU 42
GrandCentralExists  EQU 43

sHWCbPwrMgr         EQU 0
sOSSExists          EQU 1
sRBVExists          EQU 2
sVIA2Exists         EQU 3
sSCSIDMAExists      EQU 4
isMacPlus           EQU 5
is68000             EQU 6
sDeferUserFn        EQU 7
