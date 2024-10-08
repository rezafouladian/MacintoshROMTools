BaseOfROM       EQU         $40800000

SndBase         EQU         $50F14000

VBase           EQU         $50F00000
; VIA 1 Buffer A
vSCCWrReq       EQU         7
vRev8Bd         EQU         6
vPage2          EQU         6
vHeadSel        EQU         5
vOverlay        EQU         4
vSync           EQU         3
vSound2         EQU         2
vSound1         EQU         1
vSound0         EQU         0
; VIA 1 Buffer B
vSndEnb         EQU         7
vSyncEnA        EQU         6
vFDesk2         EQU         5
vFDesk1         EQU         4
vFDBInt         EQU         3
vRTCEnb         EQU         2
vRTCClk         EQU         1
vRTCData        EQU         0

VBase2          EQU         $50F02000
; VIA 2 Buffer A
v2RAM1          EQU         7
v2RAM0          EQU         6
v2IRQ6          EQU         5
v2IRQ5          EQU         4
v2IRQ4          EQU         3
v2IRQ3          EQU         2
v2IRQ2          EQU         1
v2IRQ1          EQU         0
; VIA 2 Buffer B
v2VBL           EQU         7
v2SndExt        EQU         6
v2TM0A          EQU         5
v2TM1A          EQU         4
vFC3            EQU         3
v2PowerOff      EQU         2
v2BusLk         EQU         1
v2CDis          EQU         0

vBufB           EQU         $0
vDIRB           EQU         $400
vDIRA           EQU         $600
vBufA           EQU         $1E00


SCSI_Base       EQU         $50F10000
SCSI_DMA        EQU         $50F12000
SCSI_HSK        EQU         $50F06000

rom85Bits       EQU         $3F

SCCRBase        EQU         $50F04000
SCCWBase        EQU         $50F04000

DBase           EQU         $50F16000

