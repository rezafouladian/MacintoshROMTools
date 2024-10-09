BaseOfROM       EQU         $900000

Clock1M         EQU         $FE0002
Clock16M        EQU         $FE0000

DBase           EQU         $F6E1FF

VIA_Base        EQU         $F70000
VBase           EQU         VIA_Base
vBufB           EQU         $0
vDIRB           EQU         $400
vDIRA           EQU         $600
vBufA           EQU         $1E00

SCSI_Base       EQU         $F90000
SCSIrd          EQU         $F90000
SCSIwr          EQU         $F90001

Sound_Base      EQU         $FB0000

SCCRBase        EQU         $FD0000
SCCWBase        EQU         $FD8000

RAMconfigBase   EQU         $FE0200

MapperBase      EQU         $FC0000

AccessBase      EQU         $FC0200

Video_Base      EQU         $FA8000
