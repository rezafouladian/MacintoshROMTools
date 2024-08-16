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
DskVerify       EQU         $12C
LoadTrap        EQU         $12D
MmInOK          EQU         $12E
CPUFlag         EQU         $12F
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
BootDrive       EQU         $210
JKybdTask       EQU         $21A                    ; Keyboard VBL task hook [pointer]
AlarmSt         EQU         $21F
AlarmState      EQU         $21F
FlEvtMask       EQU         $25E
SoundPtr        EQU         $262                    ; Four-tone sound definition table [pointer]
SoundBase       EQU         $266
SoundVBL        EQU         $26A                    ; Sound VBL tasks [16 bytes]
SoundDCE        EQU         $27A                    ; Sound driver DCE [pointer]
SoundActive     EQU         $27E                    ; Sound is active? [byte]
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
DrvQHdr         EQU         $308
PWMBuf2         EQU         $312                    ; PWM buffer 1 (or 2 if sound) [pointer]
Lo3Bytes        EQU         $31A
MinStack        EQU         $31E
DefltStack      EQU         $322
MMDefFlags      EQU         $326
IAZNotify       EQU         $33C
FSFCBLen        EQU         $3F6                    ; HFS present flag
JADBProc        EQU         $6B8
ScrnBase        EQU         $824                    ; Screen base [pointer]
MTemp           EQU         $828
CrsrNew         EQU         $8CE
MouseMask       EQU         $8D6
JFetch          EQU         $8F4
JIODone         EQU         $8FC
OneOne          EQU         $A02
MinusOne        EQU         $A06
TopMapHndl      EQU         $A50
SysMap          EQU         $A58
PWMBuf1         EQU         $B0A
BootMask        EQU         $B0E
HWCfgFlags      EQU         $B22
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
VertRRate       EQU         $D30
MickeyBytes     EQU         $D6A

; 68000 Vectors
ResetStackPtr   EQU         $0                      ; 
ResetVector     EQU         $4
IllegalInstructionVector    EQU $10
TraceVector     EQU         $24
Lev1AutoVector  EQU         $64
Lev2AutoVector  EQU         $68
