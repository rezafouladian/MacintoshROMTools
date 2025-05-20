BaseOfROM       EQU         $900000
ROMSize         EQU         $40000

Clock1M         EQU         $FE0002
Clock16M        EQU         $FE0000

DBase           EQU         $F6E1FF

VIA_Base        EQU         $F70000
VBase           EQU         VIA_Base
                INCLUDE     'VIA.s'                 ; Include VIA offsets

SCSI_Base       EQU         $F90000
SCSIrd          EQU         $F90000
SCSIwr          EQU         $F90001

Sound_Base      EQU         $FB0000
SndBase         EQU         $FB0000

SCCRBase        EQU         $FD0000
SCCWBase        EQU         $FD8000

RAMconfigBase   EQU         $FE0200                 ; Internal/external RAM config register

MapperBase      EQU         $FC0000                 ; Mapper RAM base address

AccessBase      EQU         $FC0200
slimsInstalled  EQU         3

Video_Base      EQU         $FA8000
ScreenLow       EQU         $FA8000
hcVideoSize     EQU         $8000
VideoWidth      EQU         640
VideoHeight     EQU         400
NTSCMaxX        EQU         512
NTSCOffset      EQU         8
LCDmode         EQU         0
Mac2Mode        EQU         1
NTSCmode        EQU         2

MaxRAMSize      EQU         $900000
SlimSpaceSize   EQU         $400000

slimAdapterROM  EQU         $E00000

RomDiskAlign    EQU         $64*1024                ; 64KB alignment
RomSpaceEnd     EQU         $E00000

slim0RamBase    EQU         $500000
slim1RamBase    EQU         $700000
slim0RegBase    EQU         $F00000
slim1RegBase    EQU         $F00030
slimStatusReg   EQU         $0                      ; Offset to SLIM status register
slimReadOnly    EQU         2
slimInserted    EQU         3
slimEjectReg    EQU         $20
slimNotEjecting EQU         3
slimProtectReg  EQU         $30
slimNoWrites    EQU         3
