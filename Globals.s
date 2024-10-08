; Globals.s
;
; Vectors of global variables

SysCom          EQU         $100                    ; Start of system communication area
MonkeyLives     EQU         $100
ScrVRes         EQU         $102                    ; Screen vertical dots per inch [word]
ScrHRes         EQU         $104                    ; Screen horizontal dots per inch [word]
ScreenRow       EQU         $106                    ; Number of rows in bytes [word]
MemTop          EQU         $108
BufPtr          EQU         $10C                    ; Top of application memory [pointer]
StkLowPt        EQU         $110                    ; Lowest stack as measured in VBL task [pointer]
HeapEnd         EQU         $114                    ; End of heap [pointer]
TheZone         EQU         $118                    ; Current heap zone [pointer]
UTableBase      EQU         $11C
DskVerify       EQU         $12C                    ; Used by 3.5 disk driver for read/verify [byte]
LoadTrap        EQU         $12D                    ; Trap before launch? [byte]
MmInOK          EQU         $12E
CPUFlag         EQU         $12F
SonyVars        EQU         $134
PWMValue        EQU         $138
PollProc        EQU         $13E
DskErr          EQU         $142                    ; Disk routine result code [word]
SysEvtMask      EQU         $144
SysVersion      EQU         $15A
VBLQueue        EQU         $160
Ticks           EQU         $16A                    ; Tick count, time since boot [long]
MBTicks         EQU         $16E                    ; Tick count at last mouse button press [long]
MBState         EQU         $172                    ; Current mouse button state [byte]
KeyMap          EQU         $174
KeyRepTime      EQU         $18A                    ; Tick count when key was last repeated [long]
KeyThresh       EQU         $18E                    ; Threshold for key repeat [word]
KeyRepThresh    EQU         $190
Lvl1DT          EQU         $192                    ; Interrupt level 1 dispatch table [32 bytes]
SCCRd           EQU         $1D8                    ; SCC base read address [pointer]
SCCWr           EQU         $1DC                    ; SCC base write address [pointer]
UnitNtryCnt     EQU         $1D2                    ; Count of entries in unit table [word]
VIA             EQU         $1D4                    ; VIA base pointer [pointer]
IWM             EQU         $1E0                    ; IWM base pointer [pointer]
Scratch20       EQU         $1E4                    ; System parameter scratch [20 bytes]
SPKbd           EQU         $206                    ; Keyboard repeat threshold in 4/60ths [2 4-bit]
SPClikCaret     EQU         $209                    ; Double-click and caret-blink times [byte]
BootDrive       EQU         $210                    ; Drive number of boot drive [word]
SFSaveDisk      EQU         $214                    ; Last vRefNum seen by standard file [word]
JKybdTask       EQU         $21A                    ; Keyboard VBL task hook [pointer]
AlarmSt         EQU         $21F
AlarmState      EQU         $21F
MemErr          EQU         $220
FlEvtMask       EQU         $25E
SoundPtr        EQU         $262                    ; Four-tone sound definition table [pointer]
SoundBase       EQU         $266                    ; Sound Bitmap [pointer]
SoundVBL        EQU         $26A                    ; Sound VBL tasks [16 bytes]
SoundDCE        EQU         $27A                    ; Sound driver DCE [pointer]
SoundActive     EQU         $27E                    ; Sound is active? [byte]
SoundLevel      EQU         $27F                    ; Current level in buffer [byte]
CurPitch        EQU         $290                    ; Current pitch value [word]
SwitcherTPtr    EQU         $286
ROM85           EQU         $28E
PortAUse        EQU         $290                    ; Serial port A use [byte]
                                                    ; Bit 7: 1 = not in use, 0 = in use
                                                    ; Bits 4-6: user specific
                                                    ; Bits 0-3: Current 
PortBUse        EQU         $291                    ; Serial port B use [byte]
                                                    ; Bit 7: 1 = not in use, 0 = in use
                                                    ; Bits 4-6: user specific
                                                    ; Bits 0-3: Current 
GNEFilter       EQU         $29A                    ; GetNextEvent filter proc [pointer]
SysZone         EQU         $2A6                    ; System heap zone [pointer]
ApplZone        EQU         $2AA                    ; Application heap zone [pointer]
ROMBase         EQU         $2AE                    ; ROM base address [pointer]
RAMBase         EQU         $2B2                    ; RAM base address [pointer]
ExpandMem       EQU         $2B6                    ; Pointer to expanded memory block
DSAlertTab      EQU         $2BA                    ; System error alerts [pointer]
DoubleTime      EQU         $2F0                    ; Double-click ticks [long]
CaretTime       EQU         $2F4                    ; Caret-blink ticks [long]
TagData         EQU         $2FA                    ; Sector tag info for disk drivers [14 bytes]
DrvQHdr         EQU         $308
PWMBuf2         EQU         $312                    ; PWM buffer 1 (or 2 if sound) [pointer]
Lo3Bytes        EQU         $31A
MinStack        EQU         $31E
DefltStack      EQU         $322
MMDefFlags      EQU         $326
DSDrawProc      EQU         $334                    ; Alternate syserror draw procedure [pointer]
EjectNotify     EQU         $338                    ; Eject notify procedure [pointer]
IAZNotify       EQU         $33C                    ; Word swaps notify procedure [pointer]
FSFCBLen        EQU         $3F6                    ; HFS present flag
DSAlertRect     EQU         $3F8                    ; Rectanble for DS alert [8 bytes]
JADBProc        EQU         $6B8
JCrsrObscure    EQU         $81C
ScrnBase        EQU         $824                    ; Screen base [pointer]
MTemp           EQU         $828
CRSRBASE        EQU         $898                    ; scrnBase for cursor [long]
CrsrDevice      EQU         $89C                    ; Current cursor device [long]
SrcDevice       EQU         $8A0                    ; Src device for Stretchbits [long]
MainDevice      EQU         $8A4                    ; The main screen device [long]
DeviceList      EQU         $8A8                    ; List of display devices [long]
CRSRROW         EQU         $8AC                    ; Rowbytes for current cursor screen [word]
QDColors        EQU         $8B0                    ; Handle to default colors [long]
CrsrBusy        EQU         $8CD
CrsrNew         EQU         $8CE
MouseMask       EQU         $8D6
WWExist         EQU         $8F2                    ; Window manager initialized? [byte]
QDExist         EQU         $8F3                    ; Quickdraw is initialized? [byte]
JFetch          EQU         $8F4
JIODone         EQU         $8FC
CurApRefNum     EQU         $900                    ; RefNum of Application's resFile [word]
LaunchFlag      EQU         $902                    ; From launch or chain [byte]
SaveSegHandle   EQU         $930
CurJTOffset     EQU         $934                    ; Current jump table offset [word]
CurPageOption   EQU         $936                    ; Current page 2 configuration [word]
HiliteMode      EQU         $938                    ; Used for color highlighting
LoaderPBlock    EQU         $93A                    ; Param block for ExitToShell [10 bytes]
ScrapVars       EQU         $960                    ; Scrap manager variables [32 bytes]
ScrapInfo       EQU         $960                    ; Scrap length [long]
ScrapTag        EQU         $970                    ; Scrap file name
ScrapEnd        EQU         $980                    ; End of scrap vars
Scratch8        EQU         $9FA
OneOne          EQU         $A02
MinusOne        EQU         $A06
TopMapHndl      EQU         $A50
SysMap          EQU         $A58
ResumeProc      EQU         $A8C                    ; Resume procedure from InitDialogs [pointer]
DSErrCode       EQU         $AF0                    ; Last system error alert ID
PWMBuf1         EQU         $B0A
BootMask        EQU         $B0E
HWCfgFlags      EQU         $B22
hwCbSCSI        EQU         15                      ; SCSI port present
hwCbClock       EQU         14
hwCbExPRAM      EQU         13
hwCbFPU         EQU         12
hwCbMMU         EQU         11
hwCbADB         EQU         10
hwCbAUX         EQU         9
hwCbPwrMgr      EQU         8
TimeSCSIDB      EQU         $B24                    ; Number of times SCSI can be accessed per millisecond [word]
WidthTabHandle  EQU         $B2A
BtDskRfn        EQU         $B34
NTSC            EQU         $B3E
ROMMapInsert    EQU         $B9E
WordRedraw      EQU         $BA5
SysFontFam      EQU         $BA6
TESysJust       EQU         $BAC
SCSIBase        EQU         $C00
SCSIDMA         EQU         $C04
SCSIHsk         EQU         $C08
RowBits         EQU         $C20
ColLines        EQU         $C22
ScreenBytes     EQU         $C24
SCSIPoll        EQU         $C2F
MMUType         EQU         $CB1
WhichBox        EQU         $CB3
ASCBase         EQU         $CC0
SMGlobals       EQU         $CC4
ADBDelay        EQU         $CEA
ADBBase         EQU         $CF8
WarmStart       EQU         $CFC
TimeDBRA        EQU         $D00                    ; Number of times the DBRA instruction can be executed per millisecond [word]
TimeSCCDB       EQU         $D02                    ; Number of times the SCC can be accessed per millisecond [word]
PowerMgrVars    EQU         $D18
TableSeed       EQU         $D20                    ; Seed value for color table ID's [long]
VertRRate       EQU         $D30
MickeyBytes     EQU         $D6A
JDTInstall      EQU         $D9C                    ; Pointer to deferred task install routine [long]
JStdTEXT        EQU         $1008

; 68000 Vectors
ResetStackPtr   EQU         $0                      ; 
ResetVector     EQU         $4
IllegalInstructionVector    EQU $10
TraceVector     EQU         $24
LineAVector     EQU         $28
Lev1AutoVector  EQU         $64
Lev2AutoVector  EQU         $68
