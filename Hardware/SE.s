BaseOfROM       EQU         $400000

HeapStart       EQU         $1600

VBase           EQU         $EFE1FE
                INCLUDE     'VIA.s'

DBase           EQU         $DFE1FF
                INCLUDE     'IWM.s'

SCSIRd			EQU 		$5FF000   				; base addr SCSI interface - READ
SCSIWr			EQU 		$5FF001   				; base addr SCSI interface - WRITE
MacSCSIBase   	EQU 		$5FF000   				; base addr SCSI READ interface
MacSCSIDMA		EQU 		$5FF200   				; base addr SCSI DMA
MacSCSIHsk		EQU 		$5FF200   				; base addr SCSI handshake
                INCLUDE     'SCSI.s'

SCCRBase  		EQU 		$9FFFF8   				; SCC base read address
SCCWBase  		EQU 		$BFFFF9   				; SCC base write address
