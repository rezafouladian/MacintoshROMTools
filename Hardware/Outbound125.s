BaseOfROM       EQU         $400000
PtchROMBase     EQU         $F80000

PtchTblBase     EQU         $707D04                 ; Pointer to current patch source
ExpectedPC      EQU         $707D0A                 ; Low word of PC from exception to check for patching
PatchOffset     EQU         $707D0C                 ; Offset from PatchTableBase to code to run
PatchTblPtr     EQU         $707D18                 ; Pointer to current location in patch table

OutboundCfg     EQU         $707D08
IsMacSEROM      EQU         0                       ; Bit 0 = Mac SE ROM
