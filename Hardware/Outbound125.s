BaseOfROM       EQU         $400000
PtchROMBase     EQU         $F80000
OutboundDisp    EQU         $700000                 ; Outbound 32KB SRAM/Internal Display

PtchTblBase     EQU         $707D04                 ; Pointer to current patch source
ExpectedPC      EQU         $707D0A                 ; Low word of PC from exception to check for patching
PatchOffset     EQU         $707D0C                 ; Offset from PatchTableBase to code to run
PatchTblPtr     EQU         $707D18                 ; Pointer to current location in patch table

OutboundCfg     EQU         $707D08
IsMacSEROM      EQU         0                       ; Bit 0 = Mac SE ROM
CfgBit1         EQU         1
CfgBit3         EQU         3
CfgBit7         EQU         7


; Host SE or Plus Hardware

ScreenLow       EQU         $3FA700

SCSIBase        EQU         $580000
SCSIRd          EQU         $580000
SCSIWr          EQU         $580001
