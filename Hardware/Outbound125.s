OutboundBuild   EQU         1

;BaseOfROM       EQU         $400000
PtchROMBase     EQU         $F80000
OutboundDisp    EQU         $700000                 ; Outbound 32KB SRAM/Internal Display
OutboundVIA     EQU         $E7E1FE                 ; Outbound built-in VIA
VIAB0           EQU         0                       ; Clock chip data
PRAMBit1        EQU         1                       ; Clock chip clock
PRAMBit2        EQU         2                       ; Clock chip select (low while talking)
ExpansionConn   EQU         3                       ; When something is connected to the expansion port
RAMDiskBit      EQU         5                       ; Clear to write the RAM disk (reads work either way)
VIAB7           EQU         7                       ; Set after the boot beep (sound off?)
OutboundGlobals EQU         $707D00                 ; Pointer to globals used by Outbound (the ROM's SP while DiagEntry runs)
PtchTblBase     EQU         $707D04                 ; Pointer to current patch source
ExpectedPC      EQU         $707D0A                 ; Low word of PC from exception to check for patching
PatchOffset     EQU         $707D0C                 ; Offset from PatchTableBase to code to run
SavedLineA      EQU         $707D14                 ; The real Line-A handler, behind the patches' trace stub
PatchTblPtr     EQU         $707D18                 ; Pointer to current location in patch table
OutboundSnd     EQU         $707D1C                 ; Sound buffer (370 words, set as SoundBase)
OutboundSndEnd  EQU         $708000                 ; End of the sound buffer; also the boot stack top

OutboundCfg     EQU         $707D08                 ; Space for marking hardware config of some sort
IsMacSEROM      EQU         0                       ; Bit 0 = Mac SE ROM
CfgBit1         EQU         1                       ; Set with HostMac, never tested
SCSIPresent     EQU         2                       ; SCSI present (external adapter, or the host's when docked): InitSCSI runs, no SCSIDispatch stub
HostMac         EQU         3                       ; Docked to a Mac Plus or SE: its screen (ScreenLow), keyboard, floppy and SCSI are used, and most Outbound patches step aside
CfgBit4         EQU         4                       ; Mouse button down
CfgBit5         EQU         5                       ; Set until the startup screen or a system alert is drawn
FlpOffline      EQU         6                       ; Floppy eject asked for while CfgBit5 is set
ExtFloppy       EQU         7                       ; External floppy drive ($4BB4/$4558 at ExpansionROM); the HD EEPROM loads its EXTD module
OutboundCfg2    EQU         $707D09                 ; A second config space?
Cfg2Bit0        EQU         0                       ; Floppy controller found
HDPresent       EQU         1

; Mostly unconfirmed memory map spaces
RAMDiskBase     EQU         $600000                 ; Outbound RAM disk
OutboundHDBase  EQU         $C00000                 ; Outbound internal HD
OutboundFlpBase EQU         $C80000                 ; Outbound internal floppy
OutboundExtFlp  EQU         $580100                 ; Outbound external floppy
OutboundPwrCtl  EQU         $E00000                 ; Battery and contrast
OutboundVIA2    EQU         $E0E1FE                 ; Second VIA: GCR write gate (port A bit 5, low = on), drive speed control (port B bits 0-1)
RAMDiskHigh     EQU         $680000                 ; High window of each RAM disk bank (the low one is RAMDiskBase)
RAMDiskBank     EQU         $500001                 ; RAM disk bank select: bit n of the bank number goes to RAMDiskBank+2n
MemCfg1         EQU         $50000B                 ; RAM configuration latches: SizeRAM tries 4 MB, 2.5 MB, 2 MB, then 1 MB
MemCfg2         EQU         $50000D
ExpansionCtl    EQU         $500009                 ; Set to 1 when docked, before the host's SCSI is set up?
ExpansionROM    EQU         $580800                 ; Window on the expansion device's ROM, every other byte: signature, then (external floppy) the EXTD module
ExpansionBank   EQU         $580001                 ; Bank select for the ExpansionROM window (same address as SCSIWr)

; Internal hard disk: an ATA task file on odd bytes, the data register a word
ATAStatus       EQU         OutboundHDBase+$05      ; Status (read), command (write)
ATASector       EQU         OutboundHDBase+$0D      ; Sector number
ATACylHi        EQU         OutboundHDBase+$15      ; Cylinder high
ATAError        EQU         OutboundHDBase+$1D      ; Error
ATADevCtl       EQU         OutboundHDBase+$23      ; Device control (write), alternate status (read)
ATADrvHead      EQU         OutboundHDBase+$25      ; Drive/head
ATASecCnt       EQU         OutboundHDBase+$2D      ; Sector count
ATACylLo        EQU         OutboundHDBase+$35      ; Cylinder low
ATAData         EQU         OutboundHDBase+$3C      ; Data [word]

; Internal floppy: an 82077-style controller for MFM, and an SCC in sync mode for GCR
FDCStatus       EQU         OutboundFlpBase+$18     ; Main status register
FDCData         EQU         OutboundFlpBase+$1A     ; Data
FDCRate         EQU         $CC0008                 ; Read: bit 7 disk changed; write: data rate (0 = 500 kbps, 2 = 250 kbps)
FDCControl      EQU         $CC0010                 ; Motor and reset: $14 motor on, $04 motor off, $80 reset
GCRSCCStat      EQU         $900000                 ; SCC RR0 for GCR (bit 0 received, bit 2 transmit empty, bit 5 tach)
GCRSCCRx        EQU         $90000C                 ; SCC received data
GCRSCCCtl1      EQU         $B00001                 ; SCC control, channel at +1
GCRSCCCtl3      EQU         $B00003                 ; SCC control, channel at +3
GCRSCCTx        EQU         $B0000D                 ; SCC transmit data

FloppyEEPROM    EQU         1                       ; Resource ID for Floppy EEPROM
HardDiskEEPROM  EQU         2                       ; Resource ID for Hard Disk EEPROM

EEPROMReg1      EQU         $50000F                 ; Enables writing to the EEPROM?
EEPROMReg2      EQU         $500007                 ; Enables writing to the EEPROM?

EEPROMWrite     EQU         $7C0000


; Host SE or Plus Hardware

ScreenLow       EQU         $3FA700

SCSI_Base       EQU         $580000
SCSIRd          EQU         $580000
SCSIWr          EQU         $580001
SCSI_ICRwrite   EQU         $580011
MacSCSIBase   	EQU 		$5FF000   				; base addr SCSI READ interface
MacSCSIDMA		EQU 		$5FF200   				; base addr SCSI DMA
MacSCSIHsk		EQU 		$5FF200   				; base addr SCSI handshake
; SCSI Offsets
                INCLUDE     'SCSI.s'

VBase           EQU         $EFE1FE
                INCLUDE     'VIA.s'                 ; Include VIA offsets


SCCRBase        EQU         $9FFFFE
SCCWBase        EQU         $BFFFF9

                INCLUDE     'IWM.s'

RAMDiskBanks    EQU         $FA                     ; Bank table, 16 bytes: bits 0-3 units, 4-5 low window lanes, 6-7 high window lanes
RAMDiskDrive    EQU         $13A                    ; RAM disk drive number [word]
RAMDiskSize     EQU         $13C                    ; RAM disk units found (256K each) [byte]

; Floppy Stuff
FlpVIATiming    EQU         $44                     ; [Word] GCR write timeout for the zone (VIA timer 2)
FlpType         EQU         $3A                     ; Format gap; 0 = GCR
FlpSectors      EQU         $3C                     ; Sectors per track
FlpSides        EQU         $3D
FlpTrkSize      EQU         $2A                     ; [Long] Bytes per cylinder
FlpLastError    EQU         $30
FlpCylinder     EQU         $2E                     ; Track in the cache
FlpWrProt       EQU         4                       ; Drive status record from here: write protected ($80)
FlpStatus       EQU         5                       ; Disk in place: 0 none, 1 mounting, 2 format known, $FF ejected
FlpInstalled    EQU         6
FlpTwoSided     EQU         7                       ; $FF: two-sided drive
FlpDQE          EQU         8                       ; Drive queue element (qLink)
FlpVBL          EQU         $18                     ; VBL task
FlpCache        EQU         $26                     ; [Long] Pointer to the cylinder cache
FlpDirty        EQU         $32                     ; [Word] Cached cylinder needs writing
FlpBusy         EQU         $34                     ; [Word] Driver call in progress
FlpMotorOn      EQU         $36                     ; [Word]
FlpRecent       EQU         $38                     ; [Word] Used since the last VBL check
FlpRWGap        EQU         $3B                     ; Read/write gap
FlpTracks       EQU         $3E
FlpChkErrs      EQU         $40                     ; [Long] GCR checksum errors
FlpCacheBuf     EQU         $140                    ; The cylinder cache ($4800 bytes)
FlpZoneTime     EQU         -2
LastSyncTime    EQU         -4
FlpZoneTol      EQU         -8
