OutboundBuild   EQU         1

BaseOfROM       EQU         $400000
PtchROMBase     EQU         $F80000
OutboundDisp    EQU         $700000                 ; Outbound 32KB SRAM/Internal Display
OutboundVIA     EQU         $E7E1FE                 ; Unconfirmed
OutboundGlobals EQU         $707D00                 ; Pointer to globals used by Outbound
PtchTblBase     EQU         $707D04                 ; Pointer to current patch source
ExpectedPC      EQU         $707D0A                 ; Low word of PC from exception to check for patching
PatchOffset     EQU         $707D0C                 ; Offset from PatchTableBase to code to run
PatchTblPtr     EQU         $707D18                 ; Pointer to current location in patch table

OutboundCfg     EQU         $707D08                 ; Space for marking hardware config of some sort
IsMacSEROM      EQU         0                       ; Bit 0 = Mac SE ROM
CfgBit1         EQU         1
CfgBit2         EQU         2                       ; SCSI related?
CfgBit3         EQU         3                       ; Possibly for marking if a host system is present
CfgBit4         EQU         4
CfgBit5         EQU         5
CfgBit6         EQU         6
CfgBit7         EQU         7
OutboundCfg2    EQU         $707D09                 ; A second config space?
Cfg2Bit0        EQU         0
Cfg2Bit1        EQU         1

; Mostly unconfirmed memory map spaces
RAMDiskBase     EQU         $600000                 ; Outbound RAM disk
OutboundHDBase  EQU         $C00000                 ; Outbound internal HD
OutboundFlpBase EQU         $C80000                 ; Outbound internal floppy
OutboundPwrCtl  EQU         $E00000                 ; Battery and contrast


; Host SE or Plus Hardware

ScreenLow       EQU         $3FA700

SCSI_Base       EQU         $580000
SCSIRd          EQU         $580000
SCSIWr          EQU         $580001
SCSI_ICRwrite   EQU         $580011
; SCSI Offsets
sICR            EQU         $10
sCSR            EQU         $40

VBase           EQU         $EFE1FE
                INCLUDE     'VIA.s'                 ; Include VIA offsets
; VIA IFR/IER Bits
ifCA2 			EQU 		0
ifCA1 			EQU 		1
ifSR  			EQU 		2
ifCB2 			EQU 		3
ifCB1 			EQU 		4
ifT2  			EQU 		5
ifT1  			EQU 		6
ifIRQ 			EQU 		7


SCCRBase        EQU         $9FFFFE
SCCWBase        EQU         $BFFFF9

FloppyEEPROM    EQU         1
HardDiskEEPROM  EQU         2

PlusROMVersion  EQU         $75
UnknownROM      EQU         $176
SEROMVersion    EQU         $276
