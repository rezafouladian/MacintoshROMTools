; 68000 Status Register Bits
InterruptBit0   EQU         8
InterruptBit1   EQU         9
InterruptBit2   EQU         10
Supervisor      EQU         13
TraceBit        EQU         15                      ; Trace bit. When set, execute trace exception after every instruction

; Status Register Constants
IPL2            EQU         10
IPL1            EQU         9
IPL0            EQU         8

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

RAMconfigInit   EQU         $6

IWMInitMode     EQU         $17

powerCntl       EQU         $10
pMgrADBoff      EQU         $21                     ; Turn ADB auto-poll off
xPramWrite      EQU         $32
timeRead        EQU         $38                     ; Read the time from the clock chip
xPramRead       EQU         $3A                     ; Read extended PRAM
modemRead       EQU         $58
batteryRead     EQU         $68
batteryNow      EQU         $69
readINT         EQU         $78                     ; Get Power Manager interrupt data
sleepReq        EQU         $7F
soundSet        EQU         $90
soundRead       EQU         $98                     ; Read sound power state
PmgrSelfTest    EQU         $EC                     ; Run Power Manager self test

pIWM            EQU         0                       ; IWM power
pSCC            EQU         1                       ; SCC power
pHD             EQU         2                       ; SCSI hard drive power
pModem          EQU         3                       ; Modem power
pSerDrvr        EQU         4
pASC            EQU         5                       ; Sound power
pMinus5V        EQU         6
pTurnOn         EQU         7

ChrgState       EQU         5

soundOff        EQU         0
soundOn         EQU         1
sndClrLtch      EQU         2
sndOnClrLtch    EQU         3

bkLim           EQU         $0                      ; Last block in zone [pointer}



vblCount        EQU         $A

SleepTime       EQU         $0                      ; Copies of sleep timeout values
HDTime          EQU         $1                      ; Hard disk timeout
SleepQHdr       EQU         $2                      ; Sleep queue header
SlpQFlags       EQU         $2                      ; Sleep queue flags
SlpQHead        EQU         $4                      ; First sleep queue entry
SlpQTail        EQU         $8
SysTaskFlag     EQU         $C                      ; System task has been called flag
LastLevel       EQU         $D                      ; Previous normalized power level
SaveSpeedo      EQU         $E                      ; Current CPU speed
Charger         EQU         $F                      ; Charger status flag
SleepFlags      EQU         $10                     ; Misc status flags
TOdirtyFlag     EQU         $11                     ; Timeouts are dirtry flag
WakeVector      EQU         $12                     
LastAct         EQU         $1A                     ; Last user activity
LastHd          EQU         $1E                     ; Last hard disk activity
LowWarn         EQU         $22                     ; Low power warning threshold
Cutoff          EQU         $23                     ; Power manager cutoff voltage
BNmQEntry       EQU         $24                     ; Low power alert
BatQ            EQU         $48                     ; Battery level circular index
lpMSGvalid      EQU         $50                     ; Low power message pending flag
IdleFlagCnt     EQU         $51                     ; Idle flag set/clear counter
BatAvg          EQU         $52                     ; Average of BatQ
NTSCcopy        EQU         $53                     ; Copy of NTSC byte, only used from restart to DrawBeepScreen
BatQIndex       EQU         $5F                     ; Index into circular battery averaging queue
SleepNetHook    EQU         $60                     ; Hook for calling pre-close ATalk
vBatInt         EQU         $64                     ; Vector to battery interrupt handler
vEnvInt         EQU         $68                     ; Vector to environment interrupt handler
Level4Cnt       EQU         $6D
BatVBLTask      EQU         $82                     ; Battery monitor VBL task
SwVBLTask       EQU         $90                     ; Sound Watch (SndWatch) VBL task

PmgrPramBase    EQU         $70
SlpTimeOut      EQU         $70                     ; Sleep timeout, in seconds/15
HDTimeOut       EQU         $71                     ; Hard disk timeout, in seconds/15
PmgrStatusFlags EQU         $72
PmgrOtherFlags  EQU         $73
Brightness      EQU         $74                     ; Brightness level
PmgrVidMode     EQU         $75                     ; Video mode

DfltHDTime      EQU         4*60/15                 ; Default number of minutes before HD spin down timeout (4 min)
DfltSlpTime     EQU         8*60/15                 ; Default number of minutes before sleep timeout (8 min)

idlespeed       EQU         1                       ; Idle speed (1MHz equivalent)
CPUSpeed16MHz   EQU         16                      ; 16MHz CPU Speed

SndWFreq        EQU         60*10                   ; Sound Watch (SndWatch) VBL is called every 10 seconds
BatFreq         EQU         60*1                    ; Battery level monitor VBL is called every second

FBDBSize        EQU         370

boxSE           EQU         $FF
boxPortable     EQU         4


PMreq           EQU         0                       ; Power manager handshake request
PMack           EQU         1                       ; Power manager handshack acknowledge
TestJumper      EQU         2                       ; Test jumper
SyncM           EQU         3                       ; Synchronous modem support
                                                    ; 0 = original Macintosh configuration
                                                    ; 1 = synchronous modem support, SCC channel A

ErrROM          EQU         $0001
ErrRAMA         EQU         $0003
ErrAddr         EQU         $0005
ErrVIA1         EQU         $0006
ErrRAMC         EQU         $0008
ErrSCSI         EQU         $000B
ErrIWM          EQU         $000C
ErrData         EQU         $000E
ErrPmgrSt       EQU         $0010
ErrSizeMem      EQU         $0011
ErrPmgrTurnOn   EQU         $0014
ErrVidRAM       EQU         $0082
ErrVidAddr      EQU         $0083
ErrSCCReg       EQU         $0084
ErrSCCLoop      EQU         $0085
ErrSCCTimer     EQU         $0086
ErrVIATest      EQU         $0087
ErrASCTest      EQU         $0089
ErrPramTest     EQU         $008A

BECode          EQU         $0100                   ; Bus error exception code
ADCode          EQU         $0200                   ; Address error exception code
ILCode          EQU         $0300                   ; Illegal instruction error exception code
ZDCode          EQU         $0400                   ; Zero divide error exception code
CICode          EQU         $0500
TPCode          EQU         $0600
PVCode          EQU         $0700
TECode          EQU         $0800
ATCode          EQU         $0900
FTCode          EQU         $0A00
UNCode          EQU         $0B00
CPCode          EQU         $0C00
FMCode          EQU         $0D00
SICode          EQU         $0E00
TNCode          EQU         $0F00
L1Code          EQU         $1000
L2Code          EQU         $1100
L3Code          EQU         $1200
L4Code          EQU         $1300
L5Code          EQU         $1400
L6Code          EQU         $1500
L7Code          EQU         $1600
F1Code          EQU         $1700
F2Code          EQU         $1800
F3Code          EQU         $1900
F4Code          EQU         $1A00
F5Code          EQU         $1B00
F6Code          EQU         $1C00
F7Code          EQU         $1D00
PCCode          EQU         $1E00
PICode          EQU         $1F00
PACode          EQU         $2000

sec             EQU         $C

MsgQ            EQU         16
SCCok           EQU         17
nosleep         EQU         18
star            EQU         19
aski            EQU         20
echo            EQU         21
timer           EQU         22
crlf            EQU         23
excp            EQU         24
nmi             EQU         25
test            EQU         26
stop            EQU         28
loop            EQU         29
pram            EQU         30
boot            EQU         31

oneSecIntFlag   EQU         27

RxCA            EQU         0                       ; SCC Receive Character Available

BootStackSize   EQU         8*1024

ADBCount        EQU         0
MaxCnt          EQU         ADBCount+2
Err7            EQU         MaxCnt+2
Err6            EQU         Err7+2
Err5            EQU         Err6+2
Err4            EQU         Err5+2
Err3            EQU         Err4+2
Err2            EQU         Err3+2
Err1            EQU         Err2+2
Error           EQU         Err1+2
GSize           EQU         Error+2
TotalSize       EQU         GSize+8

SlimInstalled   EQU         3

CmdShiftOptDel  EQU         $8805

qHead           EQU         2
qLink           EQU         0
qTail           EQU         6


ioPosMode       EQU         $2C
ioPosOffset     EQU         $2E
ioBuffer        EQU         $20
ioByteCount     EQU         $24

noDriveErr      EQU         -64
offLinErr       EQU         -65

FlashEnable     EQU         8
MyIOPBA6        EQU         -$400
EjectCode       EQU         7
csCode          EQU         $1A
FloppyRefNum    EQU         -5
BBNewMask       EQU         $80
BBExecMask      EQU         $40
MyExecMask      EQU         BBNewMask+BBExecMask
BBOldExecVers   EQU         'D'
; Equates used by the hand-written code that the include files don't define.
; Values are from Apple's equate files and were checked against the ROM.
ABusVars        EQU         $2D8                    ; AppleTalk variables [pointer]
noErr           EQU         0
NoErr           EQU         0
SlpTypeErr      EQU         -5
ControlErr      EQU         -17
StatusErr       EQU         -18
OpenErr         EQU         -23
closErr         EQU         -24
wPrErr          EQU         -44
NSDrvErr        EQU         -56
Fmt1Err         EQU         -82
verErr          EQU         -84
qType           EQU         4
ioTrap          EQU         6
ioResult        EQU         $10
ioVNPtr         EQU         $12
ioRefNum        EQU         $18
dCtlPosition    EQU         $10
dCtlRefNum      EQU         $18
DCtlRefNum      EQU         $18
dQDrvSz2        EQU         $E
vblAddr         EQU         6
vType           EQU         1
slpQType        EQU         $10
killCode        EQU         1
drvStsCode      EQU         8
fmtLstCode      EQU         6
aWrCmd          EQU         3
rdVerify        EQU         $40
NoQueueBit      EQU         9
DiskInsertEvt   EQU         7
ifCB1           EQU         4                       ; VIA interrupt flag bit for CB1
numFDBAdr       EQU         16                      ; Number of ADB device table entries
FRecSize        EQU         12                      ; Size of an ADB device table entry
OurDCE          EQU         $2AC
FDBOAddr        EQU         1                       ; ADB device table entry: original address
FDBOpData       EQU         8                       ; ADB device table entry: optional data pointer
SleepqType      EQU         4                       ; Sleep queue element: type
SleepqProc      EQU         6                       ; Sleep queue element: procedure
WakeWarn        EQU         $6C                     ; PowerMgrVars: what was closed for sleep (see ClosedMPP)

; Sony driver control codes
VerifyCC        EQU         5
FormatCC        EQU         6
IconCC          EQU         21
IconLogCC       EQU         22
infoCC          EQU         23

; Disk cache
CurEnable       EQU         $11
CacheByteLim    EQU         $12

; AppleTalk
MPPUnitNum      EQU         9                       ; .MPP unit number
mppRefNum       EQU         -10                     ; .MPP driver reference number
CloseAll        EQU         247                     ; .XPP control code
XPPLoadedBit    EQU         5                       ; .XPP loaded bit in PortBUse

; Power Manager: which AppleTalk drivers were closed for sleep
ClosedMPP       EQU         1
ClosedXPP       EQU         2
ClosedSvr       EQU         3
ClearedChsr     EQU         4

; EDisk driver
MountedFlag     EQU         0                       ; Disk inserted event successfully posted
CreateWithXSums EQU         1                       ; Create RAM EDisk with checksums by default
InsertedMask    EQU         (1<<3)-1                ; Last 3 polls are relevant
EDiskPollRate   EQU         17                      ; 17 ticks = 0.283 seconds
ramDiskType     EQU         16                      ; EDisk allocated in system RAM space
romDiskType     EQU         17                      ; EDisk in expansion ROM space
drvSizeCode     EQU         $4544                   ; Status code for drive size call
IconAndMaskSize EQU         ((32*32)/8)*2           ; Room for icon data and mask
WhereStringSize EQU         32                      ; Room for the Get Info "Where:" string
SegmentSize     EQU         512*1024

; Time Manager equates
TaskActiveBit	EQU	7			                    ; High bit of QType word is active flag
ExtendedTmTaskBit EQU 6			                    ; Indicates an extended TmTask record
T2IntBit		EQU	5			                    ; vIER/vIFR bit number for VIA Timer 2

kbdAddr     EQU     2
mouseAddr   EQU     3
moveTime    EQU     50
maskADBCmd  EQU     $0C
resetCmd    EQU     $00
talkCmd     EQU     $0C
listenCmd   EQU     $08

; ADBDeviceEntry
            RSRESET
fDBDevTy    RS.B    1                               ; $00  device type
fDBOAddr    RS.B    1                               ; $01  original address
fDBAddr     RS.B    1                               ; $02  current address
fDBUnused   RS.B    1                               ; $03  unused
fDBCRA      RS.L    1                               ; $04  completion routine
fDBOpData   RS.L    1                               ; $08  optional data buffer
fRecSize    RS.B    0                               ; $0C  record size
; ADBCmdQEntry
            RSRESET
fQCmd       RS.B    1                               ; $00  ADB command
fQUnused    RS.B    1                               ; $01  unused
fQBuff      RS.L    1                               ; $02  buffer address
fQComp      RS.L    1                               ; $06  completion routine
fQData      RS.L    1                               ; $0A  optional data buffer
fQSize      RS.B    0                               ; $0E  record size
; EgretPB
            RSRESET
pbCmdType   RS.B    1                               ; $00
pbCmd       RS.B    1                               ; $01
pbParam     RS.L    1                               ; $02
pbByteCnt   RS.W    1                               ; $06
pbBufPtr    RS.L    1                               ; $08
pbFlags     RS.B    1                               ; $0C
pbSpareFlags RS.B   1                               ; $0D
pbResult    RS.W    1                               ; $0E
pbCompletion RS.L   1                               ; $10
EgretPBSize RS.B    0                               ; $14  record size
; IOPRequestInfo
            RSRESET
irQLink     RS.L    1                               ; $00
irQType     RS.W    1                               ; $04
irIOPNumber RS.B    1                               ; $06
irRequestKind RS.B  1                               ; $07
irMsgNumber RS.B    1                               ; $08
irMessageLen RS.B   1                               ; $09
irReplyLen  RS.B    1                               ; $0A
irReqActive RS.B    1                               ; $0B
irMessagePtr RS.L   1                               ; $0C
irReplyPtr  RS.L    1                               ; $10
irHandler   RS.L    1                               ; $14
irReqInfoSize RS.B  0                               ; $18  record size
; ADBMsg (CPU <-> IOP message)
            RSRESET
Flags       RS.B    1                               ; $00  modifier/status flags

; Flags bits
NoReply     EQU     1                               ; command timed out
SRQReq      EQU     2                               ; device requesting service
SetPollEnables EQU  5                               ; update auto-enable mask from ADBData
PollEnable  EQU     6                               ; enable auto polling and auto SRQ polling
ExplicitCmd EQU     7                               ; message contains an explicit command

DataCount   RS.B    1                               ; $01  bytes of ADBData (0..8)
ADBCmd      RS.B    1                               ; $02  ADB command
ADBData     RS.B    8                               ; $03  ADB data
            RSSET   (__RS+1)&~1                     ;      align 2
ADBMsgSize  RS.B    0                               ; $0C  record size
; ADBVars
            RSRESET
startDevT   RS.B    fRecSize*numFDBAdr              ; $000 device table, 16 entries
devTSize    EQU     __RS-startDevT                  ; $0C0 (192 bytes)
startCQ     RS.B    fQSize*8                        ; $0C0 command queue, 8 entries
endCQ       RS.B    0                               ; $130 end of command queue
StartReqProc RS.L   1                               ; $130 HW-dependent start-request routine
ListenBuffPtr RS.L  1                               ; $134 pointer into listen buffer
ShiftIntResume RS.L 1                               ; $138 resume address after shift int
fQBegPtr    RS.L    1                               ; $13C queue start
fQEndPtr    RS.L    1                               ; $140 queue end
fQHeadPtr   RS.L    1                               ; $144 queue head
fQEntPtr    RS.L    1                               ; $148 queue entry
hasDev      RS.W    1                               ; $14C one bit per present device
devMap      RS.W    1                               ; $14E device address map
            RS.L    1                               ; $150 unused
            RS.L    1                               ; $154 pointer to extended ADB data
            RS.L    1                               ; $158 unused
fDBCmd      RS.B    1                               ; $15C last ADB command
fDBFlag     RS.B    1                               ; $15D ADB flags

; fDBFlag bits
fDBQEmpty   EQU     2                               ; 1 = queue empty
fDBInit     EQU     5                               ; initialization in progress

fDBAuFlag   RS.B    1                               ; $15E auxiliary flags

; fDBAuFlag bits, PMGR ADB
pMgrPollEnable EQU  1                               ; 1 = autopoll handled by PMGR
pMgrAutoPoll EQU    2                               ; 1 = auto polling enabled
pMgrSRQ     EQU     3                               ; 1 = SRQ detected
pMgrSetPoll EQU     7                               ; 1 = passing address bitmap to PMGR

; fDBAuFlag bits, Egret ADB
fDBExpInited EQU    0                               ; explicit command init done
fDBImpInited EQU    1                               ; implicit command init done
fDBExpRunning EQU   2                               ; explicit command active

            RS.B    2                               ; $15F unused
devTOffset  RS.B    1                               ; $161 device table offset for polling
fDBMvCnt    RS.B    1                               ; $162 address move counter
fDBCnt      RS.B    1                               ; $163 poll data count (Pascal string length...)
fDBPBuff    RS.B    8                               ; $164 ...followed by the poll data
fDBByte0    EQU     fDBPBuff+0                      ; $164
fDBByte1    EQU     fDBPBuff+1                      ; $165
pollAddr    RS.B    1                               ; $16C device address being polled
newAddr     RS.B    1                               ; $16D new address
pollCmd     RS.B    1                               ; $16E poll command
InitAddr    RS.B    1                               ; $16F address being polled during init
            RSSET   (__RS+3)&~3                     ;      align 4
HWDependentVars RS.B    0                           ; $170 start of HW-dependent vars
fDBDSize    SET     __RS                            ; $170 (generic part only)

; IOP overlay
            RSSET   HWDependentVars
XmtRequest  RS.B    irReqInfoSize                   ; $170 host-initiated xmt request
RcvRequest  RS.B    irReqInfoSize                   ; $188 IOP-initiated rcv request
XmtMsg      RS.B    ADBMsgSize                      ; $1A0 xmt message buffer
RcvMsg      RS.B    ADBMsgSize                      ; $1AC rcv message buffer
            IF      __RS>fDBDSize
fDBDSize    SET     __RS                            ; $1B8
            ENDC

; Egret overlay
            RSSET   HWDependentVars
ExplicitEPB RS.B    EgretPBSize                     ; $170 async explicit requests
ImplicitEPB RS.B    EgretPBSize                     ; $184 implicit autopoll data
            IF      __RS>fDBDSize
fDBDSize    SET     __RS                            ; $198, so stays $1B8
            ENDC
