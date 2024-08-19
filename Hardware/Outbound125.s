BaseOfROM       EQU         $400000
PtchROMBase     EQU         $F80000
OutboundDisp    EQU         $700000                 ; Outbound 32KB SRAM/Internal Display
OutboundVIA     EQU         $E7E1FE                 ; Unconfirmed

PtchTblBase     EQU         $707D04                 ; Pointer to current patch source
ExpectedPC      EQU         $707D0A                 ; Low word of PC from exception to check for patching
PatchOffset     EQU         $707D0C                 ; Offset from PatchTableBase to code to run
PatchTblPtr     EQU         $707D18                 ; Pointer to current location in patch table

OutboundCfg     EQU         $707D08                 ; Space for marking hardware config of some sort
IsMacSEROM      EQU         0                       ; Bit 0 = Mac SE ROM
CfgBit1         EQU         1
CfgBit2         EQU         2
CfgBit3         EQU         3
CfgBit5         EQU         5
CfgBit7         EQU         7
OutboundCfg2    EQU         $707D09                 ; A second config space?


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
; VIA Offsets
vBufB           EQU         $0
vBufAH          EQU         $200
vDIRB           EQU         $400
vDIRA           EQU         $600
vT1C            EQU         $800
vT1CH           EQU         $A00
vT1L            EQU         $C00
vT1LH           EQU         $E00
vT2C  			EQU 		$1000
vT2CH 			EQU 		$1200
vSR   			EQU 		$1400
vACR  			EQU 		$1600
vPCR  			EQU 		$1800
vIFR  			EQU 		$1A00
vIER  			EQU 		$1C00
vBufA 			EQU 		$1E00
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
