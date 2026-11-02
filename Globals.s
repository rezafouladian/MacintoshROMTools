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
MacJmp          EQU         $120                    ; MacsBug jump table [pointer]
DskRtnAdr       EQU         $124                    ; temp for disk driver [pointer]
PollRtnAddr     EQU         $128                    ; 'other' driver locals [pointer]
DskVerify       EQU         $12C                    ; Used by 3.5 disk driver for read/verify [byte]
LoadTrap        EQU         $12D                    ; Trap before launch? [byte]
MmInOK          EQU         $12E
CPUFlag         EQU         $12F
ApplLimit       EQU         $130                    ; application limit [pointer]
SonyVars        EQU         $134
PWMValue        EQU         $138
PollStack       EQU         $13A                    ; SCC poll data start stack location [pointer]
PollProc        EQU         $13E
DskErr          EQU         $142                    ; Disk routine result code [word]
SysEvtMask      EQU         $144
SysEvtBuf       EQU         $146                    ; system event queue element buffer [pointer]
EventQueue      EQU         $14A                    ; event queue header [10 bytes]
EvtBufCnt       EQU         $154                    ; max number of events in SysEvtBuf - 1 [word]
RndSeed         EQU         $156                    ; random seed/number [long]
SysVersion      EQU         $15A
SEvtEnb         EQU         $15C                    ; enable SysEvent calls from GNE [byte]
DSWndUpdate     EQU         $15D                    ; GNE not to paintBehind DS AlertRect? [byte]
FontFlag        EQU         $15E                    ; font manager loop flag [byte]
VBLQueue        EQU         $160
Ticks           EQU         $16A                    ; Tick count, time since boot [long]
MBTicks         EQU         $16E                    ; Tick count at last mouse button press [long]
MBState         EQU         $172                    ; Current mouse button state [byte]
Tocks           EQU         $173                    ; Lisa sub-tick count [byte]
KeyMap          EQU         $174
KeypadMap       EQU         $17C                    ; bitmap for numeric pad-18bits [long]
KeyLast         EQU         $184                    ; ASCII for last valid keycode [word]
KeyTime         EQU         $186                    ; tickcount when KEYLAST was rec'd [long]
KeyRepTime      EQU         $18A                    ; Tick count when key was last repeated [long]
KeyThresh       EQU         $18E                    ; Threshold for key repeat [word]
KeyRepThresh    EQU         $190
Lvl1DT          EQU         $192                    ; Interrupt level 1 dispatch table [32 bytes]
Lvl2DT			EQU 		$1B2                    ; Interrupt level 2 dispatch table [32 bytes]
UnitNtryCnt     EQU         $1D2                    ; Count of entries in unit table [word]
VIA             EQU         $1D4                    ; VIA base pointer [pointer]
SCCRd           EQU         $1D8                    ; SCC base read address [pointer]
SCCWr           EQU         $1DC                    ; SCC base write address [pointer]
IWM             EQU         $1E0                    ; IWM base pointer [pointer]
Scratch20       EQU         $1E4                    ; System parameter scratch [20 bytes]
GetParam        EQU         $1E4                    ; system parameter scratch [20 bytes]
SPValid         EQU         $1F8                    ; validation field ($A7) [byte]
SysParam        EQU         $1F8                    ; system parameter memory [20 bytes]
SPConfig  		EQU 		$1FB  					; Config bits: 4-7 A, 0-3 B (see use type below)
SPPortA         EQU         $1FC                    ; SCC port A configuration [word]
SPPortB         EQU         $1FE                    ; SCC port B configuration [word]
SPAlarm         EQU         $200                    ; alarm time [long]
SPFont          EQU         $204                    ; default application font number minus 1 [word]
SPKbd           EQU         $206                    ; Keyboard repeat threshold in 4/60ths [2 4-bit]
SPPrint         EQU         $207                    ; print stuff [byte]
SPVolCtl        EQU         $208                    ; volume control [byte]
SPClikCaret     EQU         $209                    ; Double-click and caret-blink times [byte]
SPMisc1         EQU         $20A                    ; Miscellaneous [1 byte]
SPMisc2         EQU         $20B                    ; Miscellaneous [1 byte]
TimeLM          EQU         $20C
Time            EQU         $20C                    ; Clock time (extrapolated) [long]
BootDrive       EQU         $210                    ; Drive number of boot drive [word]
JShell          EQU         $212                    ; Journaling shell state [word]
SFSaveDisk      EQU         $214                    ; Last vRefNum seen by standard file [word]
KbdVars         EQU         $216                    ; Keyboard manager variables [4 bytes]
JKybdTask       EQU         $21A                    ; Keyboard VBL task hook [pointer]
KbdType   		EQU 		$21E  					; Keyboard model number [byte]
AlarmSt         EQU         $21F
AlarmState      EQU         $21F
MemErr          EQU         $220
DiskVars        EQU         $222                    ; Disk driver variables [62 bytes]
FlEvtMask       EQU         $25E
SdVolume        EQU         $260                    ; Global volume(sound) control [byte]
SdEnable        EQU         $261                    ; Sound enabled? [byte]
SoundPtr        EQU         $262                    ; Four-tone sound definition table [pointer]
SoundVars       EQU         $262                    ; Sound driver variables [32 bytes]
SoundBase       EQU         $266                    ; Sound Bitmap [pointer]
SoundVBL        EQU         $26A                    ; Sound VBL tasks [16 bytes]
SoundDCE        EQU         $27A                    ; Sound driver DCE [pointer]
SoundActive     EQU         $27E                    ; Sound is active? [byte]
SoundLevel      EQU         $27F                    ; Current level in buffer [byte]
CurPitch        EQU         $280                    ; Current pitch value [word]
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
ScreenVars      EQU         $292                    ; Screen driver variables [8 bytes]
GNEFilter       EQU         $29A                    ; GetNextEvent filter proc [pointer]
JGNEFilter      EQU         $29A                    ; GetNextEvent filter proc [pointer]
Key1Trans       EQU         $29E                    ; keyboard translator procedure [pointer]
Key2Trans       EQU         $2A2                    ; numeric keypad translator procedure [pointer]
SysZone         EQU         $2A6                    ; System heap zone [pointer]
ApplZone        EQU         $2AA                    ; Application heap zone [pointer]
ROMBase         EQU         $2AE                    ; ROM base address [pointer]
RAMBase         EQU         $2B2                    ; RAM base address [pointer]
ExpandMem       EQU         $2B6                    ; Pointer to expanded memory block
DSAlertTab      EQU         $2BA                    ; System error alerts [pointer]
ExtStsDT  		EQU 		$2BE  					; SCC ext/sts secondary dispatch table [16 bytes]
SCCASts         EQU         $2CE                    ; SCC read reg 0 last ext/sts rupt - A [byte]
SCCBSts         EQU         $2CF                    ; SCC read reg 0 last ext/sts rupt - B [byte]
SerialVars      EQU         $2D0                    ; Async driver variables [16 bytes]
ABusDCE   		EQU 		$2DC  					; Pointer to AppleTalk DCE
FinderName      EQU         $2E0                    ; "Finder" name [String(15)]
DoubleTime      EQU         $2F0                    ; Double-click ticks [long]
CaretTime       EQU         $2F4                    ; Caret-blink ticks [long]
ScrDmpEnb       EQU         $2F8                    ; Screen dump enabled? [byte]
ScrDmpType      EQU         $2F9                    ; FF dumps screen, FE dumps front window [byte]
TagData         EQU         $2FA                    ; Sector tag info for disk drivers [14 bytes]
BufTgFNum       EQU         $2FC                    ; File number [long]
BufTgFFlg       EQU         $300                    ; Flags [word]
BufTgFBkNum     EQU         $302                    ; Logical block number [word]
BufTgDate       EQU         $304                    ; Time stamp [word]
DrvQHdr         EQU         $308
PWMBuf2         EQU         $312                    ; PWM buffer 1 (or 2 if sound) [pointer]
HpChk           EQU         $316                    ; Heap check RAM code [pointer]
Lo3Bytes        EQU         $31A
MaskBC          EQU         $31A                    ; Memory Manager Byte Count Mask [long]
MaskHandle      EQU         $31A                    ; Memory Manager Handle Mask [long]
MaskPtr         EQU         $31A                    ; Memory Manager Pointer Mask [long]
MinStack        EQU         $31E
DefltStack      EQU         $322
MMDefFlags      EQU         $326
GZRootHnd       EQU         $328                    ; Root handle for GrowZone [handle]
GZRootPtr       EQU         $32C                    ; Root pointer for GrowZone [pointer]
GZMoveHnd       EQU         $330                    ; Moving handle for GrowZone [handle]
DSDrawProc      EQU         $334                    ; Alternate syserror draw procedure [pointer]
EjectNotify     EQU         $338                    ; Eject notify procedure [pointer]
IAZNotify       EQU         $33C                    ; Word swaps notify procedure [pointer]
FileVars        EQU         $340                    ; File system vars [184 bytes]
FlushOnly       EQU         $346
NoEject         EQU         $34B
FSQHdr          EQU         $360                    ; File system queue header (10 bytes)
CacheFlag       EQU         $377
CacheVars       EQU         $394
CurDirStore     EQU         $398                    ; save dir across calls to Standard File [long]
FmtDefaults     EQU         $39E                    ; ptr to formatting defs (TFSVars + 52) [long]
FSFCBLen        EQU         $3F6                    ; HFS present flag
DSAlertRect     EQU         $3F8                    ; Rectanble for DS alert [8 bytes]
DispatchTab     EQU         $400                    ; A-Trap dispatch table [1024 bytes]
WidthScales     EQU         $414                    ; WidthDevice+2 ;(8 bytes) scale factors requested on input
WidthNFNT       EQU         $42E                    ; WidthASize+2 ;(word) high bit set if strike used is NFNT
WidthStrikeID   EQU         $430                    ; (word) FONT, NFNT or SFNT resource ID
WidthHint       EQU         $432                    ; (word) index to last used entry in color strike table (unimplemented)
WidthDevRes     EQU         $434                    ; (word) Output Device Resolution
WidthIsSpline   EQU         $436                    ; (Boolean) non zero means spline exists
WidthNotFast    EQU         $437                    ; (Boolean) set for the not fast case
WidthBadFont    EQU         $438                    ; (Boolean) Corrupted font flag
WidthLoadSpline EQU         $439                    ; (Boolean) load a spline?
WidthFREEBYTE   EQU         $43A                    ; (Boolean)
KeepSplineOnDisk EQU        $448                    ; (word) non-zero means don't load the spline into memory.
JADBProc        EQU         $6B8
JHideCursor     EQU         $800
GrafBegin       EQU         $800
JShowCursor     EQU         $804
JCrsrObscure    EQU         $81C
ScrnBase        EQU         $824                    ; Screen base [pointer]
MTemp           EQU         $828
RawMouse        EQU         $82C                    ; Un-jerked mouse coordinates [long]
Mouse           EQU         $830                    ; Processed mouse coordinate [long]
CrsrPin         EQU         $834                    ; cursor pinning rectangle [8 bytes]
CrsrRect        EQU         $83C                    ; Cursor hit rectangle [8 bytes]
TheCrsr         EQU         $844                    ; Cursor data, mask & hotspot [68 bytes]
CrsrAddr        EQU         $888                    ; Address of data under cursor [long]
JAllocCrsr      EQU         $88C                    ; (Vector to routine that allocates cursor [long]
CrsrSave        EQU         $88C                    ; data under the cursor [64 bytes]
JSetCCrsr       EQU         $890                    ; Vector to routine that sets color cursor [long]
JOpcodeProc     EQU         $894                    ; Vector to process new picture opcodes [long]
CRSRBASE        EQU         $898                    ; scrnBase for cursor [long]
CrsrDevice      EQU         $89C                    ; Current cursor device [long]
SrcDevice       EQU         $8A0                    ; Src device for Stretchbits [long]
MainDevice      EQU         $8A4                    ; The main screen device [long]
DeviceList      EQU         $8A8                    ; List of display devices [long]
CRSRROW         EQU         $8AC                    ; Rowbytes for current cursor screen [word]
QDColors        EQU         $8B0                    ; Handle to default colors [long]
CrsrVis         EQU         $8CC                    ; Cursor visible? [byte]
CrsrBusy        EQU         $8CD
CrsrNew         EQU         $8CE
CrsrCouple      EQU         $8CF                    ; cursor coupled to mouse? [byte]
CrsrState       EQU         $8D0                    ; Cursor nesting level [word]
CrsrObscure     EQU         $8D2                    ; Cursor obscure semaphore [byte]
CrsrScale       EQU         $8D3                    ; cursor scaled? [byte]
MouseMask       EQU         $8D6
MouseOffset     EQU         $8DA                    ; V-H offset for adding after ANDing [long]
JournalFlag     EQU         $8DE                    ; journaling state [word]
JSwapFont       EQU         $8E0                    ; jump entry for FMSwapFont [long]
WidthListHand   EQU         $8E4                    ; List of extra width tables, or nil
JFontInfo       EQU         $8E4                    ; jump entry for FMFontMetrics [long]
JournalRef      EQU         $8E8                    ; Journalling driver's refnum [word]
CrsrThresh      EQU         $8EC                    ; Delta threshold for mouse scaling [word]
JCrsrTask       EQU         $8EE
GrafEnd   		EQU 		$8F2  					; End of graphics globals
WWExist         EQU         $8F2                    ; Window manager initialized? [byte]
QDExist         EQU         $8F3                    ; Quickdraw is initialized? [byte]
JFetch          EQU         $8F4
JStash          EQU         $8F8                    ; Stash a byte routine for drivers [pointer]
JIODone         EQU         $8FC
CurApRefNum     EQU         $900                    ; RefNum of Application's resFile [word]
LoadVars        EQU         $900                    ; Loader variables [68 bytes]
LaunchFlag      EQU         $902                    ; From launch or chain [byte]
CurrentA5 		EQU 		$904  					; Current value of A5 [pointer]
CurStackBase    EQU         $908                    ; current stack base [pointer]
SaveSegHandle   EQU         $930
CurJTOffset     EQU         $934                    ; Current jump table offset [word]
CurPageOption   EQU         $936                    ; Current page 2 configuration [word]
HiliteMode      EQU         $938                    ; Used for color highlighting
LoaderPBlock    EQU         $93A                    ; Param block for ExitToShell [10 bytes]
ChooserBits     EQU         $946
CoreEditVars    EQU         $954                    ; Core edit variables [12 bytes]
ScrapVars       EQU         $960                    ; Scrap manager variables [32 bytes]
ScrapInfo       EQU         $960                    ; Scrap length [long]
ScrapSize       EQU         $960                    ; scrap length [long]
ScrapHandle     EQU         $964                    ; Memory scrap [handle]
ScrapCount      EQU         $968                    ; Validation byte [word]
ScrapState      EQU         $96A                    ; Scrap state [word]
ScrapName       EQU         $96C                    ; Pointer to scrap name [pointer]
ScrapTag        EQU         $970                    ; Scrap file name
ScrapEnd        EQU         $980                    ; End of scrap vars
RomFont0        EQU         $980                    ; System font [handle]
ApFontID        EQU         $984                    ; Resource ID of application font [word]
GotStrike       EQU         $986                    ; Do we have the strike? [byte]
FMDefaultSize   EQU         $987                    ; Default size [byte]
CurFMInput      EQU         $988                    ; Quickdraw FMInput Record [pointer]
FMgrOutRec      EQU         $998                    ; Quickdraw FontOutput Record [pointer]
ToolScratch     EQU         $9CE                    ; Scratch area [8 bytes]
WindowList      EQU         $9D6                    ; Z-ordered linked list of windows [pointer]
SaveUpdate      EQU         $9DA                    ; Enable update accumulation? [word]
PaintWhite      EQU         $9DC                    ; Erase newly drawn windows? [word]
WMgrPort        EQU         $9DE                    ; Window manager's grafport [pointer]
DeskPort        EQU         $9E2                    ; Desk grafPort (Whole screen) [pointer]
OldStructure    EQU         $9E6                    ; Saved structure region [handle]
OldContent      EQU         $9EA                    ; Saved content region [handle]
GrayRgn         EQU         $9EE                    ; Rounded gray desk region [handle]
SaveVisRgn      EQU         $9F2                    ; temporarily saved visRegion [handle]
DragHook        EQU         $9F6                    ; User hook during dragging [pointer]
Scratch8        EQU         $9FA
TempRect        EQU         $9FA                    ; Scratch rectangle [8 bytes]
OneOne          EQU         $A02
MinusOne        EQU         $A06
MenuList        EQU         $A1C                    ; Current menuBar list structure [handle]
MBarEnable      EQU         $A20                    ; menuBar enable for desk accessories[word]
CurDeKind       EQU         $A22                    ; Window kind of deactivated window [word]
MenuFlash       EQU         $A24                    ; Flash feedback count [word]
TheMenu         EQU         $A26                    ; ID of hilited menu [word]
SavedHandle     EQU         $A28                    ; Saved bits under a menu [handle]
MrMacHook       EQU         $A2C                    ; Mr. Macintosh hook [pointer]
MBarHook        EQU         $A2C                    ; User hook during menuSelect [pointer]
MenuHook        EQU         $A30                    ; User hook during menuSelect [pointer]
DragPattern     EQU         $A34                    ; DragTheRgn pattern [8 bytes]
DeskPattern     EQU         $A3C                    ; desk pattern [8 bytes]
DragFlag        EQU         $A44                    ; Implicit parameter to DragControl [word]
CurDragAction   EQU         $A46                    ; Implicit actionProc for dragControl [pointer]
FPState         EQU         $A4A                    ; Floating point state [6 bytes]
TopMapHndl      EQU         $A50                    ; Topmost map in list [handle]
SysMapHndl      EQU         $A54                    ; System map [handle]
SysMap          EQU         $A58                    ; Reference number of system map [word]
CurMap          EQU         $A5A                    ; Reference number of current map [word]
ResReadOnly     EQU         $A5C                    ; Read only flag [word]
ResLoad         EQU         $A5E                    ; Auto-load feature [word]
ResErr          EQU         $A60                    ; Resource error code [word]
TaskLock        EQU         $A62                    ; Re-entering SystemTask [byte]
FScaleDisable   EQU         $A63                    ; Disable font scaling? [byte]
CurActivate     EQU         $A64                    ; Window slated for activate event [pointer]
CurDeactive     EQU         $A68                    ; Window slated for deactivate event [pointer]
DeskHook        EQU         $A6C                    ; Hook for painting the desk [pointer]
TEDoText        EQU         $A70                    ; TextEdit doText proc hook [pointer]
TERecal         EQU         $A74                    ; TextEdit recalText proc hook [pointer]
ApplScratch     EQU         $A78                    ; Application scratch area [12 bytes]
GhostWindow     EQU         $A84                    ; Window hidden from FrontWindow [pointer]
ResumeProc      EQU         $A8C                    ; Resume procedure from InitDialogs [pointer]
RestProc        EQU         $A8C                    ; Resume procedure f InitDialogs [pointer]
ANumber         EQU         $A98                    ; Active alert ID [word]
ACount          EQU         $A9A                    ; # times this alert called [word]
DABeeper        EQU         $A9C                    ; beep routine [pointer]
TEScrpLength    EQU         $AB0                    ; TextEdit Scrap Length [word]
TEScrpHandle    EQU         $AB4                    ; TextEdit Scrap [handle]
SysResName      EQU         $AD8                    ; Name of system resource file
AppParmHandle   EQU         $AEC                    ; Handle to hold application parameters
DSErrCode       EQU         $AF0                    ; Last system error alert ID
ResErrProc      EQU         $AF2                    ; Reference number of current map [word]
TEWdBreak       EQU         $AF6                    ; Default word break routine [pointer]
DlgFont         EQU         $AFA                    ; Default dialog font ID [word]
KeyMVars        EQU         $B04                    ; For ROM KEYM proc state [word]
ROMMapHndl      EQU         $B06                    ; Handle of ROM resource map [long]
PWMBuf1         EQU         $B0A
BootMask        EQU         $B0E
WidthPtr        EQU         $B10                    ; Font manager global [long]
AtalkHk1        EQU         $B14                    ; Appletalk hook [long]
LAPMgrPtr  	 	EQU 	    $B18                    ; This points to start of LapMgr
AtalkHk2        EQU         $B18                    ; Appletalk hook [long]
UnSwitchedFlags EQU         $B20                    ; Special flags, not switched by multifinder [byte]
SwitchedFlags   EQU         $B21                    ; Special flags, switched by multifinder [byte]
HWCfgFlags      EQU         $B22
hwCbSCSI        EQU         15                      ; SCSI port present
hwCbClock       EQU         14
hwCbExPRAM      EQU         13
hwCbFPU         EQU         12
hwCbMMU         EQU         11
hwCbADB         EQU         10
hwCbAUX         EQU         9
hwCbPwrMgr      EQU         8
SCSIFlag        EQU         $B22                    ; Configuration Flag for SCSI [word]
TimeSCSIDB      EQU         $B24                    ; Number of times SCSI can be accessed per millisecond [word]
WidthTabHandle  EQU         $B2A
SCSIDrvrs       EQU         $B2E                    ; Bitmap for loaded SCSI drivers [word]
TimeVars        EQU         $B30
BtDskRfn        EQU         $B34
NTSC            EQU         $B3E
T1Arbitrate     EQU         $B3F                    ; $FF if Timer T1 up for grabs. [byte]
jDiskSel        EQU         $B40
jSendCmd        EQU         $B44
jDCDReset       EQU         $B48
LastSPExtra     EQU         $B4C
MenuDisable     EQU         $B54
CacheFlags      EQU         $B72                    ; cache flags [byte]
ROMMapInsert    EQU         $B9E
RomMapInsert    EQU         $B9E                    ; (byte) determines if we should link in map
IntlSpec        EQU         $BA0                    ; (long) - ptr to extra Intl data
RMGRPerm        EQU         $BA4                    ; (byte) - permission byte for OpenResFile
WordRedraw      EQU         $BA5                    ; Used by TextEdit RecalDraw [byte]
SysFontFam      EQU         $BA6
SysFontSize     EQU         $BA8                    ; (word) System font size (or zero for 12 pt)
MBarHeight      EQU         $BAA                    ; (word) height of menu bar (usually 20)
TESysJust       EQU         $BAC                    ; System justification [word]
HiHeapMark      EQU         $BAE                    ; (long) highest address used by a zone below sp
SegHiEnable     EQU         $BB2                    ; (byte) 0 to disable MoveHHi in LoadSeg
FDevDisable     EQU         $BB3                    ; (byte) $FF to disable device-defined style extra
CommToolboxGlobals EQU      $BB4                    ; [long] pointer to CTB Globals
NewUnused       EQU         $BC0                    ; (word) - used to be FlEvtMask
LastFOND        EQU         $BC2
FONDID          EQU         $BC6
App2Packs       EQU         $BC8
MAErrProc       EQU         $BE8                    ; (long) MacApp error proc address
MASuperTab      EQU         $BEC                    ; (long) handle to MacApp superclass table
FractEnable     EQU         $BF4                    ; (byte) flag for fractional font widths
UsedFWidths     EQU         $BF5                    ; (byte) flag saying if we used fract widths
FScaleHFact     EQU         $BF6                    ; (long) horz. font scale factor
FScaleVFact     EQU         $BFA                    ; (long) vertical font scale factor
MacJmpFlag      EQU         $BFF                    ; MacsBug flag [byte]
SCSIBase        EQU         $C00
SCSIDMA         EQU         $C04
SCSIHsk         EQU         $C08
SCSIGlobals     EQU         $C0C                    ; (long) ptr for SCSI mgr locals
RGBBlack        EQU         $C10
RGBWhite        EQU         $C16
RowBits         EQU         $C20
ColLines        EQU         $C22
ScreenBytes     EQU         $C24
IOPMgrVars      EQU         $C28
NMIFlag         EQU         $C2C
VidType         EQU         $C2D                    ; (byte) video board type ID
ScrnInval       EQU         $C2D                    ; (byte) replaces obscure VidType.  When $FFFF, scrn resource is
VidMode         EQU         $C2E                    ; (byte) video mode (4=4bit color)
SCSIPoll        EQU         $C2F
SEVarBase       EQU         $C30
SEPC            EQU         $C70
SESR            EQU         $C74
SECmdSiz        EQU         $C7A
MBdotAddr       EQU         $CA8
MBlocAddr       EQU         $CAC
MMUFlags        EQU         $CB0                    ; (byte) cleared to zero (reserved for future use)
MMUType         EQU         $CB1
MMU32bit        EQU         $CB2                    ; (byte) boolean reflecting current machine MMU mode
BoxFlag         EQU         $CB3
WhichBox        EQU         $CB3
MMUTbl          EQU         $CB4                    ; (long) pointer to MMU Mapping table
MMU24Info       EQU         $CB4                    ; (long) ptr to 24 bit mode MMU configuration info
MMUTblSize      EQU         $CB8                    ; (long) size of the 24 bit mode MMU mapping table
MMU32Info       EQU         $CB8                    ; (long) ptr to 32 bit mode MMU configuration info
SInfoPtr        EQU         $CBC                    ; (long) pointer to Slot manager information
ASCBase         EQU         $CC0
SMGlobals       EQU         $CC4
TheGDevice      EQU 		$CC8 					; The current graphics device [long]
CQDGlobals      EQU         $CCC                    ; (long) quickDraw global extensions
AuxWinHead      EQU         $CD0
AuxCtlHead      EQU         $CD4
SetOSPassword   EQU         $CDC                    ; (long) used as password by SetOSDefault (StartMgr)
TimeVIADB       EQU         $CEA
ADBDelay        EQU         $CEA
VIA2            EQU         $CEC
RBV             EQU         $CEC                    ; RBV base address [pointer] share with VIA2
VIA2RBV         EQU         $CEC                    ; VIA2 or RBV base address [pointer]
OSS             EQU         $CEC                    ; OSS base address [pointer] share with VIA2
VIA2RBVOSS      EQU         $CEC                    ; VIA2 or RBV or OSS base address [pointer]
VISA            EQU         $CEC                    ; VISA base address [pointer]
V8              EQU         $CEC                    ; V8 base address [pointer]
ADBBase         EQU         $CF8
WarmStart       EQU         $CFC
TimeDBRA        EQU         $D00                    ; Number of times the DBRA instruction can be executed per millisecond [word]
TimeSCCDB       EQU         $D02                    ; Number of times the SCC can be accessed per millisecond [word]
PmgrBase        EQU         $D18
PowerMgrVars    EQU         $D18
TableSeed       EQU         $D20                    ; Seed value for color table ID's [long]
SRsrcTblPtr     EQU         $D24                    ; (long) pointer to slot resource table.
VertRRate       EQU         $D30
SynListHandle   EQU         $D32
FMExist         EQU         $D42
ChunkyDepth     EQU         $D60
CrsrPtr         EQU         $D62
PortList        EQU         $D66
MickeyBytes     EQU         $D6A
QDErr           EQU         $D6E                    ; QuickDraw error code [word]
SInitFlags      EQU         $D90                    ; StartInit.a flags [word]
DTQueue         EQU         $D92                    ; (10 bytes) deferred task queue header
DTQFlags        EQU         $D92
JDTInstall      EQU         $D9C                    ; Pointer to deferred task install routine [long]
DSCtrAdj        EQU         $DA8
IconTLAddr      EQU         $DAC
VideoInfoOK     EQU         $DB0
EndSRTPtr       EQU         $DB4                    ; (long) Pointer to the end of the Slot Resource Table (Not the SRT buffer).
SDMJmpTblPtr    EQU         $DB8                    ; (long) Pointer to the SDM jump table
JSwapMMU        EQU         $DBC                    ; Jump vector to SwapMMU routine [long]
SdmBusErr       EQU         $DC0                    ; (long) Pointer to the SDM busErr handler
LastTxGDevice   EQU         $DC4                    ; (long) copy of TheGDevice set up for fast text measure
AddrMapFlags    EQU         $DD0                    ; Valid bits for base addresses 0-31 (universal ROM) [long]
UnivROMFlags    EQU         $DD4                    ; Product specific flags for universal ROM [long]
UnivInfoPtr     EQU         $DD8                    ; Pointer to configuration information for universal ROM [long]
BootGlobPtr     EQU         $DDC
EgretBase       EQU         $DE0                    ; Egret Manager global variables
JStdTEXT        EQU         $1008
Phys2Log        EQU         $1EF0
RealMemTop      EQU         $1EF4
PhysMemTop      EQU         $1EF8
MMFlags         EQU         $1EFC
vMMRHPrologue   EQU         $1FE0
vMMMMPrologue   EQU         $1FE4
vMMEpilogue     EQU         $1FE8
vMMNoErrEpilogue EQU        $1FEC
SCSI2Base       EQU         $1FF0                   ; (long) base address for 2nd SCSI chip
LockMemCT       EQU         $1FF4
DockingGlobals  EQU         $1FF8                   ; Pointer to docking globals

HoleSysHeap     EQU         $38000000

; 68000 Vectors
ResetStackPtr   EQU         $0                      ; 
ResetVector     EQU         $4
IllegalInstructionVector    EQU $10
TraceVector     EQU         $24
LineAVector     EQU         $28
Lev1AutoVector  EQU         $64
Lev2AutoVector  EQU         $68
ResetSP         EQU         $0                      ; reset initial interrupt SP
ResetPC         EQU         $4                      ; reset initial Program counter
BusErrVct       EQU         $8                      ; bus error vector
AddrVector      EQU         $C                      ; address error
IlglVector      EQU         $10                     ; illegal instruction
ZeroVector      EQU         $14                     ; divide by 0
CheckVector     EQU         $18                     ; check bounds error
TrapVVector     EQU         $1C                     ; trapv location
PrivlgVector    EQU         $20                     ; privilege violation
Line1010        EQU         $28                     ; 1010 emulator trap (system routines)
DebugVector     EQU         $2C                     ; debug instructions
Line1111        EQU         $2C                     ; 1111 emulator trap (reserved)
FmtErrVect      EQU         $38                     ; format error vector for 68010/68020
BadIntVector    EQU         $60                     ; spurious interrupt
AutoInt1        EQU         $64                     ; level 1 auto-vector
AutoInt2        EQU         $68                     ; level 2 auto-vector
AutoInt3        EQU         $6C                     ; level 3 auto-vector
AutoInt4        EQU         $70                     ; level 4 auto-vector
AutoInt5        EQU         $74                     ; level 5 auto-vector
AutoInt6        EQU         $78                     ; level 6 auto-vector
AutoInt7        EQU         $7C                     ; level 7 auto-vector
BkptVector      EQU         $B8                     ; break loc
BSUNVector      EQU         $C0                     ; BSUN for FP Emulation Code
UNFLVector      EQU         $CC                     ; Underflow for FP Emulation Code
OPERRVector     EQU         $D0                     ; Operand Error for FP Emulation Code
OVFLVector      EQU         $D4                     ; Overflow for FP Emulation Code
SNANVector      EQU         $D8                     ; Signal NAN for FP Emulation Code
UNIMPDTVector   EQU         $DC                     ; 040 Unimplemented Data Type for FP Emulation Code
