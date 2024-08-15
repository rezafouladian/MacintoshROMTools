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
PWMBuf2         EQU         $312                    ; PWM buffer 1 (or 2 if sound) [pointer]
FSFCBLen        EQU         $3F6                    ; HFS present flag
JIODone         EQU         $8FC


TraceVector     EQU         $24
