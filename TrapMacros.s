; TrapMacros.s
;
; A-line trap macros for asmotor (motor68k).
;
; Generated from the OPWORD definitions in Traps.a and TrapsPrivate.a.
; Every trap macro takes up to three optional modifiers that are OR'd
; into the trap word, matching the MPW "_NewPtr ,SYS,CLEAR" convention:
;
;       _NewPtr     sys,clear       ; $A71E
;       _Read       async           ; $A402
;       _GetResource autoPop        ; $ADA0

; Trap modifier bits
immed           EQU         $200                ; Execute immediately, bypass I/O queue
async           EQU         $400                ; Asynchronous, don't wait for completion
clear           EQU         $200                ; Clear the allocated block
sys             EQU         $400                ; Allocate in the system heap
marks           EQU         $200                ; Ignore/strip diacriticals
case            EQU         $400                ; Case sensitive
autoPop         EQU         $400                ; Pop an extra return address
newTool         EQU         $600                ; Toolbox trap, under new ordering
newOS           EQU         $200                ; OS trap, under new ordering
newHFS          EQU         $200                ; HFS variant of a file system call

;---------------------------------------------------------------------------
; OS traps ($A000-$A7FF)
;---------------------------------------------------------------------------

_Open:          MACRO
                dc.w        $A000|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HOpen:         MACRO
                dc.w        $A200|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Close:         MACRO
                dc.w        $A001|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Read:          MACRO
                dc.w        $A002|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Write:         MACRO
                dc.w        $A003|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Control:       MACRO
                dc.w        $A004|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Status:        MACRO
                dc.w        $A005|(\1+0)|(\2+0)|(\3+0)
                ENDM

_KillIO:        MACRO
                dc.w        $A006|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetVolInfo:    MACRO
                dc.w        $A007|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HGetVInfo:     MACRO
                dc.w        $A207|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Create:        MACRO
                dc.w        $A008|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HCreate:       MACRO
                dc.w        $A208|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Delete:        MACRO
                dc.w        $A009|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HDelete:       MACRO
                dc.w        $A209|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenRF:        MACRO
                dc.w        $A00A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HOpenRF:       MACRO
                dc.w        $A20A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Rename:        MACRO
                dc.w        $A00B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HRename:       MACRO
                dc.w        $A20B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetFileInfo:   MACRO
                dc.w        $A00C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HGetFileInfo:  MACRO
                dc.w        $A20C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFileInfo:   MACRO
                dc.w        $A00D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HSetFileInfo:  MACRO
                dc.w        $A20D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnmountVol:    MACRO
                dc.w        $A00E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HUnmountVol:   MACRO                         ; unconditional (ignores open files)
                dc.w        $A20E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MountVol:      MACRO
                dc.w        $A00F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Allocate:      MACRO
                dc.w        $A010|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AllocContig:   MACRO
                dc.w        $A210|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetEOF:        MACRO
                dc.w        $A011|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetEOF:        MACRO
                dc.w        $A012|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FlushVol:      MACRO
                dc.w        $A013|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetVol:        MACRO
                dc.w        $A014|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HGetVol:       MACRO
                dc.w        $A214|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetVol:        MACRO
                dc.w        $A015|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HSetVol:       MACRO
                dc.w        $A215|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FInitQueue:    MACRO
                dc.w        $A016|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Eject:         MACRO
                dc.w        $A017|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetFPos:       MACRO
                dc.w        $A018|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitZone:      MACRO
                dc.w        $A019|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetZone:       MACRO
                dc.w        $A11A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetZone:       MACRO
                dc.w        $A01B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FreeMem:       MACRO
                dc.w        $A01C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MaxMem:        MACRO
                dc.w        $A11D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPtr:        MACRO
                dc.w        $A11E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPtrClear:   MACRO
                dc.w        $A31E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPtrSys:     MACRO
                dc.w        $A51E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPtrSysClear: MACRO
                dc.w        $A71E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposPtr:     MACRO
                dc.w        $A01F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposePtr:    MACRO
                dc.w        $A01F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPtrSize:    MACRO
                dc.w        $A020|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPtrSize:    MACRO
                dc.w        $A021|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewHandle:     MACRO
                dc.w        $A122|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewHandleClear: MACRO
                dc.w        $A322|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposHandle:  MACRO
                dc.w        $A023|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeHandle: MACRO
                dc.w        $A023|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetHandleSize: MACRO
                dc.w        $A024|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetHandleSize: MACRO
                dc.w        $A025|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HandleZone:    MACRO
                dc.w        $A126|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ReallocHandle: MACRO
                dc.w        $A027|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RecoverHandle: MACRO
                dc.w        $A128|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HLock:         MACRO
                dc.w        $A029|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HUnlock:       MACRO
                dc.w        $A02A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EmptyHandle:   MACRO
                dc.w        $A02B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitApplZone:  MACRO
                dc.w        $A02C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetApplLimit:  MACRO
                dc.w        $A02D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BlockMove:     MACRO
                dc.w        $A02E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BlockMoveData: MACRO
                dc.w        $A22E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PostEvent:     MACRO
                dc.w        $A02F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PPostEvent:    MACRO                         ; preserves A0 on return
                dc.w        $A12F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OSEventAvail:  MACRO
                dc.w        $A030|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetOSEvent:    MACRO
                dc.w        $A031|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FlushEvents:   MACRO
                dc.w        $A032|(\1+0)|(\2+0)|(\3+0)
                ENDM

_VInstall:      MACRO
                dc.w        $A033|(\1+0)|(\2+0)|(\3+0)
                ENDM

_VRemove:       MACRO
                dc.w        $A034|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OffLine:       MACRO
                dc.w        $A035|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MoreMasters:   MACRO
                dc.w        $A036|(\1+0)|(\2+0)|(\3+0)
                ENDM

_WriteParam:    MACRO
                dc.w        $A038|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ReadDateTime:  MACRO
                dc.w        $A039|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetDateTime:   MACRO
                dc.w        $A03A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Delay:         MACRO
                dc.w        $A03B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CmpString:     MACRO
                dc.w        $A03C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrvrInstall:   MACRO
                dc.w        $A03D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrvrRemove:    MACRO
                dc.w        $A03E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitUtil:      MACRO
                dc.w        $A03F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ResrvMem:      MACRO
                dc.w        $A040|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFilLock:    MACRO
                dc.w        $A041|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HSetFLock:     MACRO
                dc.w        $A241|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RstFilLock:    MACRO
                dc.w        $A042|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HRstFLock:     MACRO
                dc.w        $A242|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFilType:    MACRO
                dc.w        $A043|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFPos:       MACRO
                dc.w        $A044|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FlushFile:     MACRO
                dc.w        $A045|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetTrapAddress: MACRO
                dc.w        $A146|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetOSTrapAddress: MACRO
                dc.w        $A346|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetTrapWordAddress: MACRO                         ; used by the Link Patch Loader
                dc.w        $A546|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetToolBoxTrapAddress: MACRO
                dc.w        $A746|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetToolTrapAddress: MACRO
                dc.w        $A746|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetTrapAddress: MACRO
                dc.w        $A047|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetOSTrapAddress: MACRO
                dc.w        $A247|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetTrapWordAddress: MACRO                         ; used by the Link Patch Loader
                dc.w        $A447|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetToolBoxTrapAddress: MACRO
                dc.w        $A647|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetToolTrapAddress: MACRO
                dc.w        $A647|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtrZone:       MACRO
                dc.w        $A148|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HPurge:        MACRO
                dc.w        $A049|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HNoPurge:      MACRO
                dc.w        $A04A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetGrowZone:   MACRO
                dc.w        $A04B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CompactMem:    MACRO
                dc.w        $A04C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PurgeMem:      MACRO
                dc.w        $A04D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddDrive:      MACRO
                dc.w        $A04E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RDrvrInstall:  MACRO
                dc.w        $A04F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RelString:     MACRO
                dc.w        $A050|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ReadXPRam:     MACRO
                dc.w        $A051|(\1+0)|(\2+0)|(\3+0)
                ENDM

_WriteXPRam:    MACRO
                dc.w        $A052|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UpperString:   MACRO
                dc.w        $A054|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UprString:     MACRO
                dc.w        $A054|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StripAddress:  MACRO
                dc.w        $A055|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LowerText:     MACRO                         ; changed from _LwrText
                dc.w        $A056|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LwrString:     MACRO
                dc.w        $A056|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StripText:     MACRO
                dc.w        $A256|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UpperText:     MACRO                         ; changed from _UprText
                dc.w        $A456|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StripUpperText: MACRO                         ; changed from _StripUprText
                dc.w        $A656|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetAppBase:    MACRO
                dc.w        $A057|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetApplBase:   MACRO
                dc.w        $A057|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsTime:       MACRO
                dc.w        $A058|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsXTime:      MACRO
                dc.w        $A458|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RmvTime:       MACRO
                dc.w        $A059|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PrimeTime:     MACRO
                dc.w        $A05A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PowerOff:      MACRO
                dc.w        $A05B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MemoryDispatch: MACRO
                dc.w        $A05C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MemoryDispatchA0Result: MACRO
                dc.w        $A15C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SwapMMUMode:   MACRO
                dc.w        $A05D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NMInstall:     MACRO
                dc.w        $A05E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NMRemove:      MACRO
                dc.w        $A05F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FSDispatch:    MACRO
                dc.w        $A060|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HFSDispatch:   MACRO
                dc.w        $A260|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MaxBlock:      MACRO
                dc.w        $A061|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PurgeSpace:    MACRO
                dc.w        $A162|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MaxApplZone:   MACRO
                dc.w        $A063|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MoveHHi:       MACRO
                dc.w        $A064|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StackSpace:    MACRO
                dc.w        $A065|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewEmptyHandle: MACRO
                dc.w        $A166|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HSetRBit:      MACRO
                dc.w        $A067|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HClrRBit:      MACRO
                dc.w        $A068|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HGetState:     MACRO
                dc.w        $A069|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HSetState:     MACRO
                dc.w        $A06A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitFS:        MACRO
                dc.w        $A06C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitEvents:    MACRO
                dc.w        $A06D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SlotManager:   MACRO
                dc.w        $A06E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SlotVInstall:  MACRO
                dc.w        $A06F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SlotVRemove:   MACRO
                dc.w        $A070|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AttachVBL:     MACRO
                dc.w        $A071|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DoVBLTask:     MACRO
                dc.w        $A072|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SIntInstall:   MACRO
                dc.w        $A075|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SIntRemove:    MACRO
                dc.w        $A076|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CountADBs:     MACRO
                dc.w        $A077|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetIndADB:     MACRO
                dc.w        $A078|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetADBInfo:    MACRO
                dc.w        $A079|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetADBInfo:    MACRO
                dc.w        $A07A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ADBReInit:     MACRO
                dc.w        $A07B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ADBOp:         MACRO
                dc.w        $A07C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetDefaultStartup: MACRO
                dc.w        $A07D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetDefaultStartup: MACRO
                dc.w        $A07E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InternalWait:  MACRO
                dc.w        $A07F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetVideoDefault: MACRO
                dc.w        $A080|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetVideoDefault: MACRO
                dc.w        $A081|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DTInstall:     MACRO
                dc.w        $A082|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetOSDefault:  MACRO
                dc.w        $A083|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetOSDefault:  MACRO
                dc.w        $A084|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PMgrOp:        MACRO
                dc.w        $A085|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IdleUpdate:    MACRO
                dc.w        $A285|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IdleState:     MACRO
                dc.w        $A485|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SerialPower:   MACRO
                dc.w        $A685|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IOPInfoAccess: MACRO
                dc.w        $A086|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IOPMsgRequest: MACRO
                dc.w        $A087|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IOPMoveData:   MACRO
                dc.w        $A088|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Sleep:         MACRO
                dc.w        $A08A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SleepQInstall: MACRO
                dc.w        $A28A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SlpQInstall:   MACRO
                dc.w        $A28A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SleepQRemove:  MACRO
                dc.w        $A48A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SlpQRemove:    MACRO
                dc.w        $A48A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CommToolboxDispatch: MACRO
                dc.w        $A08B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DebugUtil:     MACRO
                dc.w        $A08D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DeferUserFn:   MACRO
                dc.w        $A08F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SysEnvirons:   MACRO
                dc.w        $A090|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Translate24To32: MACRO
                dc.w        $A091|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EgretDispatch: MACRO
                dc.w        $A092|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Microseconds:  MACRO                         ; no params, returns µS in D0
                dc.w        $A193|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HWPriv:        MACRO
                dc.w        $A198|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MoveHLow:      MACRO
                dc.w        $A09D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PowerDispatch: MACRO
                dc.w        $A09F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FigmentDispatch: MACRO
                dc.w        $A0A4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HeapDispatch:  MACRO
                dc.w        $A0A4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Gestalt:       MACRO
                dc.w        $A1AD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewGestalt:    MACRO
                dc.w        $A3AD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ReplaceGestalt: MACRO
                dc.w        $A5AD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetGestaltProcPtr: MACRO
                dc.w        $A7AD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndAppDead:    MACRO
                dc.w        $A0B8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PPC:           MACRO
                dc.w        $A0DD|(\1+0)|(\2+0)|(\3+0)
                ENDM

;---------------------------------------------------------------------------
; Toolbox traps ($A800-$AFFF)
;---------------------------------------------------------------------------

_SoundDispatch: MACRO
                dc.w        $A800|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndDisposeChannel: MACRO
                dc.w        $A801|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndAddModifier: MACRO
                dc.w        $A802|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndDoCommand:  MACRO
                dc.w        $A803|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndDoImmediate: MACRO
                dc.w        $A804|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndPlay:       MACRO
                dc.w        $A805|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndControl:    MACRO
                dc.w        $A806|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SndNewChannel: MACRO
                dc.w        $A807|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitProcMenu:  MACRO
                dc.w        $A808|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCVariant:   MACRO
                dc.w        $A809|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetWVariant:   MACRO
                dc.w        $A80A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PopUpMenuSelect: MACRO
                dc.w        $A80B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RGetResource:  MACRO
                dc.w        $A80C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Count1Resources: MACRO
                dc.w        $A80D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Get1IxResource: MACRO
                dc.w        $A80E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Get1IxType:    MACRO
                dc.w        $A80F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Unique1ID:     MACRO
                dc.w        $A810|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TESelView:     MACRO
                dc.w        $A811|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEPinScroll:   MACRO
                dc.w        $A812|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEAutoView:    MACRO
                dc.w        $A813|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFractEnable: MACRO
                dc.w        $A814|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SCSIDispatch:  MACRO
                dc.w        $A815|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack8:         MACRO
                dc.w        $A816|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyMask:      MACRO
                dc.w        $A817|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FixATan2:      MACRO
                dc.w        $A818|(\1+0)|(\2+0)|(\3+0)
                ENDM

_XMunger:       MACRO
                dc.w        $A819|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HOpenResFile:  MACRO
                dc.w        $A81A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HCreateResFile: MACRO
                dc.w        $A81B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Count1Types:   MACRO
                dc.w        $A81C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvalMenuBar:  MACRO
                dc.w        $A81D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Get1Resource:  MACRO
                dc.w        $A81F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Get1NamedResource: MACRO
                dc.w        $A820|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MaxSizeRsrc:   MACRO
                dc.w        $A821|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ResourceDispatch: MACRO
                dc.w        $A822|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AliasDispatch: MACRO
                dc.w        $A823|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsMenuItem:   MACRO
                dc.w        $A826|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsertMenuItem: MACRO
                dc.w        $A826|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HideDItem:     MACRO
                dc.w        $A827|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShowDItem:     MACRO
                dc.w        $A828|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LayerDispatch: MACRO
                dc.w        $A829|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ComponentDispatch: MACRO
                dc.w        $A82A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack9:         MACRO
                dc.w        $A82B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack10:        MACRO
                dc.w        $A82C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack11:        MACRO
                dc.w        $A82D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack12:        MACRO
                dc.w        $A82E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack13:        MACRO
                dc.w        $A82F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack14:        MACRO
                dc.w        $A830|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack15:        MACRO
                dc.w        $A831|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ScrnBitMap:    MACRO
                dc.w        $A833|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFScaleDisable: MACRO
                dc.w        $A834|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FontMetrics:   MACRO
                dc.w        $A835|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMaskTable:  MACRO
                dc.w        $A836|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MeasureText:   MACRO
                dc.w        $A837|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CalcMask:      MACRO
                dc.w        $A838|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SeedFill:      MACRO
                dc.w        $A839|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ZoomWindow:    MACRO
                dc.w        $A83A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TrackBox:      MACRO
                dc.w        $A83B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEGetOffset:   MACRO
                dc.w        $A83C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEDispatch:    MACRO
                dc.w        $A83D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEStyleNew:    MACRO
                dc.w        $A83E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Long2Fix:      MACRO
                dc.w        $A83F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Fix2Long:      MACRO
                dc.w        $A840|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Fix2Frac:      MACRO
                dc.w        $A841|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Frac2Fix:      MACRO
                dc.w        $A842|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Fix2X:         MACRO
                dc.w        $A843|(\1+0)|(\2+0)|(\3+0)
                ENDM

_X2Fix:         MACRO
                dc.w        $A844|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Frac2X:        MACRO
                dc.w        $A845|(\1+0)|(\2+0)|(\3+0)
                ENDM

_X2Frac:        MACRO
                dc.w        $A846|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UserDelay:     MACRO
                dc.w        $A84C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetItemCmd:    MACRO
                dc.w        $A84E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetItemCmd:    MACRO
                dc.w        $A84F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitCursor:    MACRO
                dc.w        $A850|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCursor:     MACRO
                dc.w        $A851|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HideCursor:    MACRO
                dc.w        $A852|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShowCursor:    MACRO
                dc.w        $A853|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FontDispatch:  MACRO
                dc.w        $A854|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShieldCursor:  MACRO
                dc.w        $A855|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ObscureCursor: MACRO
                dc.w        $A856|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitAnd:        MACRO
                dc.w        $A858|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitXOr:        MACRO
                dc.w        $A859|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitNot:        MACRO
                dc.w        $A85A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitOr:         MACRO
                dc.w        $A85B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitShift:      MACRO
                dc.w        $A85C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitTst:        MACRO
                dc.w        $A85D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitSet:        MACRO
                dc.w        $A85E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitClr:        MACRO
                dc.w        $A85F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_WaitNextEvent: MACRO
                dc.w        $A860|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Random:        MACRO
                dc.w        $A861|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ForeColor:     MACRO
                dc.w        $A862|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BackColor:     MACRO
                dc.w        $A863|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ColorBit:      MACRO
                dc.w        $A864|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPixel:      MACRO
                dc.w        $A865|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StuffHex:      MACRO
                dc.w        $A866|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LongMul:       MACRO
                dc.w        $A867|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FixMul:        MACRO
                dc.w        $A868|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FixRatio:      MACRO
                dc.w        $A869|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HiWord:        MACRO
                dc.w        $A86A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LoWord:        MACRO
                dc.w        $A86B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FixRound:      MACRO
                dc.w        $A86C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitPort:      MACRO
                dc.w        $A86D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitGraf:      MACRO
                dc.w        $A86E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenPort:      MACRO
                dc.w        $A86F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LocalToGlobal: MACRO
                dc.w        $A870|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GlobalToLocal: MACRO
                dc.w        $A871|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GrafDevice:    MACRO
                dc.w        $A872|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPort:       MACRO
                dc.w        $A873|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPort:       MACRO
                dc.w        $A874|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPBits:      MACRO
                dc.w        $A875|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PortSize:      MACRO
                dc.w        $A876|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MovePortTo:    MACRO
                dc.w        $A877|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetOrigin:     MACRO
                dc.w        $A878|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetClip:       MACRO
                dc.w        $A879|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetClip:       MACRO
                dc.w        $A87A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClipRect:      MACRO
                dc.w        $A87B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BackPat:       MACRO
                dc.w        $A87C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CloseCPort:    MACRO                         ; CloseCPort is actually $AA02, but should never be used
                dc.w        $A87D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClosePort:     MACRO
                dc.w        $A87D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddPt:         MACRO
                dc.w        $A87E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SubPt:         MACRO
                dc.w        $A87F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPt:         MACRO
                dc.w        $A880|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EqualPt:       MACRO
                dc.w        $A881|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdText:       MACRO
                dc.w        $A882|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawChar:      MACRO
                dc.w        $A883|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawString:    MACRO
                dc.w        $A884|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawText:      MACRO
                dc.w        $A885|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TextWidth:     MACRO
                dc.w        $A886|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TextFont:      MACRO
                dc.w        $A887|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TextFace:      MACRO
                dc.w        $A888|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TextMode:      MACRO
                dc.w        $A889|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TextSize:      MACRO
                dc.w        $A88A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetFontInfo:   MACRO
                dc.w        $A88B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StringWidth:   MACRO
                dc.w        $A88C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CharWidth:     MACRO
                dc.w        $A88D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SpaceExtra:    MACRO
                dc.w        $A88E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OSDispatch:    MACRO                         ; Process Manager trap
                dc.w        $A88F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdLine:       MACRO
                dc.w        $A890|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LineTo:        MACRO
                dc.w        $A891|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Line:          MACRO
                dc.w        $A892|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MoveTo:        MACRO
                dc.w        $A893|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Move:          MACRO
                dc.w        $A894|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShutDown:      MACRO
                dc.w        $A895|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HidePen:       MACRO
                dc.w        $A896|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShowPen:       MACRO
                dc.w        $A897|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPenState:   MACRO
                dc.w        $A898|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPenState:   MACRO
                dc.w        $A899|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPen:        MACRO
                dc.w        $A89A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PenSize:       MACRO
                dc.w        $A89B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PenMode:       MACRO
                dc.w        $A89C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PenPat:        MACRO
                dc.w        $A89D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PenNormal:     MACRO
                dc.w        $A89E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisableDogCow: MACRO
                dc.w        $A89F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EnableDogCow:  MACRO
                dc.w        $A89F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitDogCow:    MACRO
                dc.w        $A89F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Moof:          MACRO
                dc.w        $A89F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Unimplemented: MACRO
                dc.w        $A89F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdRect:       MACRO
                dc.w        $A8A0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FrameRect:     MACRO
                dc.w        $A8A1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintRect:     MACRO
                dc.w        $A8A2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EraseRect:     MACRO
                dc.w        $A8A3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InverRect:     MACRO
                dc.w        $A8A4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillRect:      MACRO
                dc.w        $A8A5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EqualRect:     MACRO
                dc.w        $A8A6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetRect:       MACRO
                dc.w        $A8A7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OffsetRect:    MACRO
                dc.w        $A8A8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsetRect:     MACRO
                dc.w        $A8A9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SectRect:      MACRO
                dc.w        $A8AA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnionRect:     MACRO
                dc.w        $A8AB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pt2Rect:       MACRO
                dc.w        $A8AC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtInRect:      MACRO
                dc.w        $A8AD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EmptyRect:     MACRO
                dc.w        $A8AE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdRRect:      MACRO
                dc.w        $A8AF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FrameRoundRect: MACRO
                dc.w        $A8B0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintRoundRect: MACRO
                dc.w        $A8B1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EraseRoundRect: MACRO
                dc.w        $A8B2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InverRoundRect: MACRO
                dc.w        $A8B3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillRoundRect: MACRO
                dc.w        $A8B4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ScriptUtil:    MACRO
                dc.w        $A8B5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdOval:       MACRO
                dc.w        $A8B6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FrameOval:     MACRO
                dc.w        $A8B7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintOval:     MACRO
                dc.w        $A8B8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EraseOval:     MACRO
                dc.w        $A8B9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvertOval:    MACRO
                dc.w        $A8BA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillOval:      MACRO
                dc.w        $A8BB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SlopeFromAngle: MACRO
                dc.w        $A8BC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdArc:        MACRO
                dc.w        $A8BD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FrameArc:      MACRO
                dc.w        $A8BE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintArc:      MACRO
                dc.w        $A8BF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EraseArc:      MACRO
                dc.w        $A8C0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvertArc:     MACRO
                dc.w        $A8C1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillArc:       MACRO
                dc.w        $A8C2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtToAngle:     MACRO
                dc.w        $A8C3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AngleFromSlope: MACRO
                dc.w        $A8C4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdPoly:       MACRO
                dc.w        $A8C5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FramePoly:     MACRO
                dc.w        $A8C6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintPoly:     MACRO
                dc.w        $A8C7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ErasePoly:     MACRO
                dc.w        $A8C8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvertPoly:    MACRO
                dc.w        $A8C9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillPoly:      MACRO
                dc.w        $A8CA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenPoly:      MACRO
                dc.w        $A8CB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClosePgon:     MACRO
                dc.w        $A8CC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClosePoly:     MACRO
                dc.w        $A8CC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_KillPoly:      MACRO
                dc.w        $A8CD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OffsetPoly:    MACRO
                dc.w        $A8CE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PackBits:      MACRO
                dc.w        $A8CF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnpackBits:    MACRO
                dc.w        $A8D0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdRgn:        MACRO
                dc.w        $A8D1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FrameRgn:      MACRO
                dc.w        $A8D2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintRgn:      MACRO
                dc.w        $A8D3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EraseRgn:      MACRO
                dc.w        $A8D4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InverRgn:      MACRO
                dc.w        $A8D5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillRgn:       MACRO
                dc.w        $A8D6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitMapRgn:     MACRO
                dc.w        $A8D7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BitMapToRegion: MACRO
                dc.w        $A8D7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewRgn:        MACRO
                dc.w        $A8D8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposRgn:     MACRO
                dc.w        $A8D9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeRgn:    MACRO
                dc.w        $A8D9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenRgn:       MACRO
                dc.w        $A8DA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CloseRgn:      MACRO
                dc.w        $A8DB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyRgn:       MACRO
                dc.w        $A8DC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetEmptyRgn:   MACRO
                dc.w        $A8DD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetRecRgn:     MACRO
                dc.w        $A8DE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RectRgn:       MACRO
                dc.w        $A8DF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OffsetRgn:     MACRO
                dc.w        $A8E0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OfsetRgn:      MACRO
                dc.w        $A8E0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsetRgn:      MACRO
                dc.w        $A8E1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EmptyRgn:      MACRO
                dc.w        $A8E2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EqualRgn:      MACRO
                dc.w        $A8E3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SectRgn:       MACRO
                dc.w        $A8E4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnionRgn:      MACRO
                dc.w        $A8E5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DiffRgn:       MACRO
                dc.w        $A8E6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_XOrRgn:        MACRO
                dc.w        $A8E7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtInRgn:       MACRO
                dc.w        $A8E8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RectInRgn:     MACRO
                dc.w        $A8E9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetStdProcs:   MACRO
                dc.w        $A8EA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdBits:       MACRO
                dc.w        $A8EB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyBits:      MACRO
                dc.w        $A8EC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdTxMeas:     MACRO
                dc.w        $A8ED|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdGetPic:     MACRO
                dc.w        $A8EE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ScrollRect:    MACRO
                dc.w        $A8EF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdPutPic:     MACRO
                dc.w        $A8F0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdComment:    MACRO
                dc.w        $A8F1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PicComment:    MACRO
                dc.w        $A8F2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenPicture:   MACRO
                dc.w        $A8F3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClosePicture:  MACRO
                dc.w        $A8F4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_KillPicture:   MACRO
                dc.w        $A8F5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawPicture:   MACRO
                dc.w        $A8F6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Layout:        MACRO
                dc.w        $A8F7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ScalePt:       MACRO
                dc.w        $A8F8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MapPt:         MACRO
                dc.w        $A8F9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MapRect:       MACRO
                dc.w        $A8FA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MapRgn:        MACRO
                dc.w        $A8FB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MapPoly:       MACRO
                dc.w        $A8FC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PrGlue:        MACRO
                dc.w        $A8FD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitFonts:     MACRO
                dc.w        $A8FE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetFName:      MACRO
                dc.w        $A8FF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetFNum:       MACRO
                dc.w        $A900|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FMSwapFont:    MACRO
                dc.w        $A901|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RealFont:      MACRO
                dc.w        $A902|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetFontLock:   MACRO
                dc.w        $A903|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawGrowIcon:  MACRO
                dc.w        $A904|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DragGrayRgn:   MACRO
                dc.w        $A905|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewString:     MACRO
                dc.w        $A906|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetString:     MACRO
                dc.w        $A907|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShowHide:      MACRO
                dc.w        $A908|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CalcVis:       MACRO
                dc.w        $A909|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CalcVBehind:   MACRO
                dc.w        $A90A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClipAbove:     MACRO
                dc.w        $A90B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintOne:      MACRO
                dc.w        $A90C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaintBehind:   MACRO
                dc.w        $A90D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SaveOld:       MACRO
                dc.w        $A90E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawNew:       MACRO
                dc.w        $A90F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetWMgrPort:   MACRO
                dc.w        $A910|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CheckUpDate:   MACRO
                dc.w        $A911|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitWindows:   MACRO
                dc.w        $A912|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewWindow:     MACRO
                dc.w        $A913|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposWindow:  MACRO
                dc.w        $A914|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeWindow: MACRO
                dc.w        $A914|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShowWindow:    MACRO
                dc.w        $A915|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HideWindow:    MACRO
                dc.w        $A916|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetWRefCon:    MACRO
                dc.w        $A917|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetWRefCon:    MACRO
                dc.w        $A918|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetWTitle:     MACRO
                dc.w        $A919|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetWTitle:     MACRO
                dc.w        $A91A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MoveWindow:    MACRO
                dc.w        $A91B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HiliteWindow:  MACRO
                dc.w        $A91C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SizeWindow:    MACRO
                dc.w        $A91D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TrackGoAway:   MACRO
                dc.w        $A91E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SelectWindow:  MACRO
                dc.w        $A91F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BringToFront:  MACRO
                dc.w        $A920|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SendBehind:    MACRO
                dc.w        $A921|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BeginUpDate:   MACRO
                dc.w        $A922|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EndUpDate:     MACRO
                dc.w        $A923|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FrontWindow:   MACRO
                dc.w        $A924|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DragWindow:    MACRO
                dc.w        $A925|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DragTheRgn:    MACRO
                dc.w        $A926|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvalRgn:      MACRO
                dc.w        $A927|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvalRect:     MACRO
                dc.w        $A928|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ValidRgn:      MACRO
                dc.w        $A929|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ValidRect:     MACRO
                dc.w        $A92A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GrowWindow:    MACRO
                dc.w        $A92B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FindWindow:    MACRO
                dc.w        $A92C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CloseWindow:   MACRO
                dc.w        $A92D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetWindowPic:  MACRO
                dc.w        $A92E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetWindowPic:  MACRO
                dc.w        $A92F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitMenus:     MACRO
                dc.w        $A930|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewMenu:       MACRO
                dc.w        $A931|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposMenu:    MACRO
                dc.w        $A932|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeMenu:   MACRO
                dc.w        $A932|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AppendMenu:    MACRO
                dc.w        $A933|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ClearMenuBar:  MACRO
                dc.w        $A934|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsertMenu:    MACRO
                dc.w        $A935|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DeleteMenu:    MACRO
                dc.w        $A936|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawMenuBar:   MACRO
                dc.w        $A937|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HiliteMenu:    MACRO
                dc.w        $A938|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EnableItem:    MACRO
                dc.w        $A939|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisableItem:   MACRO
                dc.w        $A93A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMenuBar:    MACRO
                dc.w        $A93B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMenuBar:    MACRO
                dc.w        $A93C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MenuSelect:    MACRO
                dc.w        $A93D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MenuKey:       MACRO
                dc.w        $A93E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetItmIcon:    MACRO
                dc.w        $A93F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetItmIcon:    MACRO
                dc.w        $A940|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetItmStyle:   MACRO
                dc.w        $A941|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetItmStyle:   MACRO
                dc.w        $A942|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetItmMark:    MACRO
                dc.w        $A943|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetItmMark:    MACRO
                dc.w        $A944|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CheckItem:     MACRO
                dc.w        $A945|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetItem:       MACRO
                dc.w        $A946|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMenuItemText: MACRO
                dc.w        $A946|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetItem:       MACRO
                dc.w        $A947|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMenuItemText: MACRO
                dc.w        $A947|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CalcMenuSize:  MACRO
                dc.w        $A948|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMHandle:    MACRO
                dc.w        $A949|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMenuHandle: MACRO
                dc.w        $A949|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMFlash:     MACRO
                dc.w        $A94A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PlotIcon:      MACRO
                dc.w        $A94B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FlashMenuBar:  MACRO
                dc.w        $A94C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddResMenu:    MACRO
                dc.w        $A94D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AppendResMenu: MACRO
                dc.w        $A94D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PinRect:       MACRO
                dc.w        $A94E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DeltaPoint:    MACRO
                dc.w        $A94F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CountMItems:   MACRO
                dc.w        $A950|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InsertResMenu: MACRO
                dc.w        $A951|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DelMenuItem:   MACRO
                dc.w        $A952|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DeleteMenuItem: MACRO
                dc.w        $A952|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UpdtControl:   MACRO
                dc.w        $A953|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewControl:    MACRO
                dc.w        $A954|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposControl: MACRO
                dc.w        $A955|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeControl: MACRO
                dc.w        $A955|(\1+0)|(\2+0)|(\3+0)
                ENDM

_KillControls:  MACRO
                dc.w        $A956|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ShowControl:   MACRO
                dc.w        $A957|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HideControl:   MACRO
                dc.w        $A958|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MoveControl:   MACRO
                dc.w        $A959|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCRefCon:    MACRO
                dc.w        $A95A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCRefCon:    MACRO
                dc.w        $A95B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SizeControl:   MACRO
                dc.w        $A95C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HiliteControl: MACRO
                dc.w        $A95D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCTitle:     MACRO
                dc.w        $A95E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCTitle:     MACRO
                dc.w        $A95F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCtlValue:   MACRO
                dc.w        $A960|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMinCtl:     MACRO
                dc.w        $A961|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMaxCtl:     MACRO
                dc.w        $A962|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCtlValue:   MACRO
                dc.w        $A963|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMinCtl:     MACRO
                dc.w        $A964|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMaxCtl:     MACRO
                dc.w        $A965|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TestControl:   MACRO
                dc.w        $A966|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DragControl:   MACRO
                dc.w        $A967|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TrackControl:  MACRO
                dc.w        $A968|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawControls:  MACRO
                dc.w        $A969|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCtlAction:  MACRO
                dc.w        $A96A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCtlAction:  MACRO
                dc.w        $A96B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FindControl:   MACRO
                dc.w        $A96C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Draw1Control:  MACRO
                dc.w        $A96D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Dequeue:       MACRO
                dc.w        $A96E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Enqueue:       MACRO
                dc.w        $A96F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNextEvent:  MACRO
                dc.w        $A970|(\1+0)|(\2+0)|(\3+0)
                ENDM

_EventAvail:    MACRO
                dc.w        $A971|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMouse:      MACRO
                dc.w        $A972|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StillDown:     MACRO
                dc.w        $A973|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Button:        MACRO
                dc.w        $A974|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TickCount:     MACRO
                dc.w        $A975|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetKeys:       MACRO
                dc.w        $A976|(\1+0)|(\2+0)|(\3+0)
                ENDM

_WaitMouseUp:   MACRO
                dc.w        $A977|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UpdtDialog:    MACRO
                dc.w        $A978|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CouldDialog:   MACRO
                dc.w        $A979|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FreeDialog:    MACRO
                dc.w        $A97A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitDialogs:   MACRO
                dc.w        $A97B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNewDialog:  MACRO
                dc.w        $A97C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewDialog:     MACRO
                dc.w        $A97D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SelIText:      MACRO
                dc.w        $A97E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IsDialogEvent: MACRO
                dc.w        $A97F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DialogSelect:  MACRO
                dc.w        $A980|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DrawDialog:    MACRO
                dc.w        $A981|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CloseDialog:   MACRO
                dc.w        $A982|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposDialog:  MACRO
                dc.w        $A983|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeDialog: MACRO
                dc.w        $A983|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FindDItem:     MACRO
                dc.w        $A984|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Alert:         MACRO
                dc.w        $A985|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StopAlert:     MACRO
                dc.w        $A986|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NoteAlert:     MACRO
                dc.w        $A987|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CautionAlert:  MACRO
                dc.w        $A988|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CouldAlert:    MACRO
                dc.w        $A989|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FreeAlert:     MACRO
                dc.w        $A98A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ParamText:     MACRO
                dc.w        $A98B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ErrorSound:    MACRO
                dc.w        $A98C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetDItem:      MACRO
                dc.w        $A98D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetDItem:      MACRO
                dc.w        $A98E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetIText:      MACRO
                dc.w        $A98F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetIText:      MACRO
                dc.w        $A990|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ModalDialog:   MACRO
                dc.w        $A991|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DetachResource: MACRO
                dc.w        $A992|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetResPurge:   MACRO
                dc.w        $A993|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CurResFile:    MACRO
                dc.w        $A994|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitResources: MACRO
                dc.w        $A995|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RsrcZoneInit:  MACRO
                dc.w        $A996|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenResFile:   MACRO
                dc.w        $A997|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UseResFile:    MACRO
                dc.w        $A998|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UpdateResFile: MACRO
                dc.w        $A999|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CloseResFile:  MACRO
                dc.w        $A99A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetResLoad:    MACRO
                dc.w        $A99B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CountResources: MACRO
                dc.w        $A99C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetIndResource: MACRO
                dc.w        $A99D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CountTypes:    MACRO
                dc.w        $A99E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetIndType:    MACRO
                dc.w        $A99F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetResource:   MACRO
                dc.w        $A9A0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNamedResource: MACRO
                dc.w        $A9A1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LoadResource:  MACRO
                dc.w        $A9A2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ReleaseResource: MACRO
                dc.w        $A9A3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HomeResFile:   MACRO
                dc.w        $A9A4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SizeRsrc:      MACRO
                dc.w        $A9A5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetResAttrs:   MACRO
                dc.w        $A9A6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetResAttrs:   MACRO
                dc.w        $A9A7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetResInfo:    MACRO
                dc.w        $A9A8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetResInfo:    MACRO
                dc.w        $A9A9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ChangedResource: MACRO
                dc.w        $A9AA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddResource:   MACRO
                dc.w        $A9AB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddReference:  MACRO
                dc.w        $A9AC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RmveResource:  MACRO
                dc.w        $A9AD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RmveReference: MACRO
                dc.w        $A9AE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ResError:      MACRO
                dc.w        $A9AF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_WriteResource: MACRO
                dc.w        $A9B0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CreateResFile: MACRO
                dc.w        $A9B1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SystemEvent:   MACRO
                dc.w        $A9B2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SystemClick:   MACRO
                dc.w        $A9B3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SystemTask:    MACRO
                dc.w        $A9B4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SystemMenu:    MACRO
                dc.w        $A9B5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenDeskAcc:   MACRO
                dc.w        $A9B6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CloseDeskAcc:  MACRO
                dc.w        $A9B7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPattern:    MACRO
                dc.w        $A9B8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCursor:     MACRO
                dc.w        $A9B9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetString:     MACRO
                dc.w        $A9BA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetIcon:       MACRO
                dc.w        $A9BB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPicture:    MACRO
                dc.w        $A9BC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNewWindow:  MACRO
                dc.w        $A9BD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNewControl: MACRO
                dc.w        $A9BE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetRMenu:      MACRO
                dc.w        $A9BF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNewMBar:    MACRO
                dc.w        $A9C0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UniqueID:      MACRO
                dc.w        $A9C1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SysEdit:       MACRO
                dc.w        $A9C2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_KeyTrans:      MACRO
                dc.w        $A9C3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_KeyTranslate:  MACRO
                dc.w        $A9C3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenRFPerm:    MACRO
                dc.w        $A9C4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RsrcMapEntry:  MACRO
                dc.w        $A9C5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SecondsToDate: MACRO
                dc.w        $A9C6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Secs2Date:     MACRO
                dc.w        $A9C6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SecsToDate:    MACRO
                dc.w        $A9C6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Date2Secs:     MACRO
                dc.w        $A9C7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DateToSeconds: MACRO
                dc.w        $A9C7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DateToSecs:    MACRO
                dc.w        $A9C7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SysBeep:       MACRO
                dc.w        $A9C8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SysError:      MACRO
                dc.w        $A9C9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PutIcon:       MACRO
                dc.w        $A9CA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEGetText:     MACRO
                dc.w        $A9CB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEInit:        MACRO
                dc.w        $A9CC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEDispose:     MACRO
                dc.w        $A9CD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TETextBox:     MACRO                         ; New name for TextBox
                dc.w        $A9CE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TextBox:       MACRO
                dc.w        $A9CE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TESetText:     MACRO
                dc.w        $A9CF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TECalText:     MACRO
                dc.w        $A9D0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TESetSelect:   MACRO
                dc.w        $A9D1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TENew:         MACRO
                dc.w        $A9D2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEUpdate:      MACRO
                dc.w        $A9D3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEClick:       MACRO
                dc.w        $A9D4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TECopy:        MACRO
                dc.w        $A9D5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TECut:         MACRO
                dc.w        $A9D6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEDelete:      MACRO
                dc.w        $A9D7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEActivate:    MACRO
                dc.w        $A9D8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEDeactivate:  MACRO
                dc.w        $A9D9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEIdle:        MACRO
                dc.w        $A9DA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEPaste:       MACRO
                dc.w        $A9DB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEKey:         MACRO
                dc.w        $A9DC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEScroll:      MACRO
                dc.w        $A9DD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TEInsert:      MACRO
                dc.w        $A9DE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TESetAlignment: MACRO                         ; New name for TESetJust
                dc.w        $A9DF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TESetJust:     MACRO
                dc.w        $A9DF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Munger:        MACRO
                dc.w        $A9E0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HandToHand:    MACRO
                dc.w        $A9E1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtrToXHand:    MACRO
                dc.w        $A9E2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtrToHand:     MACRO
                dc.w        $A9E3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HandAndHand:   MACRO
                dc.w        $A9E4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitPack:      MACRO
                dc.w        $A9E5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitAllPacks:  MACRO
                dc.w        $A9E6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack0:         MACRO
                dc.w        $A9E7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack1:         MACRO
                dc.w        $A9E8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack2:         MACRO
                dc.w        $A9E9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack3:         MACRO
                dc.w        $A9EA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FP68K:         MACRO
                dc.w        $A9EB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack4:         MACRO
                dc.w        $A9EB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Elems68K:      MACRO
                dc.w        $A9EC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack5:         MACRO
                dc.w        $A9EC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack6:         MACRO
                dc.w        $A9ED|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DECSTR68K:     MACRO
                dc.w        $A9EE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Pack7:         MACRO
                dc.w        $A9EE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PtrAndHand:    MACRO
                dc.w        $A9EF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LoadSeg:       MACRO
                dc.w        $A9F0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnLoadSeg:     MACRO
                dc.w        $A9F1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Launch:        MACRO
                dc.w        $A9F2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Chain:         MACRO
                dc.w        $A9F3|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ExitToShell:   MACRO
                dc.w        $A9F4|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetAppParms:   MACRO
                dc.w        $A9F5|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetResFileAttrs: MACRO
                dc.w        $A9F6|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetResFileAttrs: MACRO
                dc.w        $A9F7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MethodDispatch: MACRO
                dc.w        $A9F8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InfoScrap:     MACRO
                dc.w        $A9F9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnloadScrap:   MACRO
                dc.w        $A9FA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UnlodeScrap:   MACRO
                dc.w        $A9FA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LoadScrap:     MACRO
                dc.w        $A9FB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_LodeScrap:     MACRO
                dc.w        $A9FB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ZeroScrap:     MACRO
                dc.w        $A9FC|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetScrap:      MACRO
                dc.w        $A9FD|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PutScrap:      MACRO
                dc.w        $A9FE|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Debugger:      MACRO
                dc.w        $A9FF|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenCPort:     MACRO
                dc.w        $AA00|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitCPort:     MACRO
                dc.w        $AA01|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPixMap:     MACRO
                dc.w        $AA03|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposPixMap:  MACRO
                dc.w        $AA04|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposePixMap: MACRO
                dc.w        $AA04|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyPixMap:    MACRO
                dc.w        $AA05|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPortPix:    MACRO
                dc.w        $AA06|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPixPat:     MACRO
                dc.w        $AA07|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposPixPat:  MACRO
                dc.w        $AA08|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposePixPat: MACRO
                dc.w        $AA08|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyPixPat:    MACRO
                dc.w        $AA09|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PenPixPat:     MACRO
                dc.w        $AA0A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_BackPixPat:    MACRO
                dc.w        $AA0B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPixPat:     MACRO
                dc.w        $AA0C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MakeRGBPat:    MACRO
                dc.w        $AA0D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillCRect:     MACRO
                dc.w        $AA0E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillCOval:     MACRO
                dc.w        $AA0F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillCRoundRect: MACRO
                dc.w        $AA10|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillCArc:      MACRO
                dc.w        $AA11|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillCRgn:      MACRO
                dc.w        $AA12|(\1+0)|(\2+0)|(\3+0)
                ENDM

_FillCPoly:     MACRO
                dc.w        $AA13|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RGBForeColor:  MACRO
                dc.w        $AA14|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RGBBackColor:  MACRO
                dc.w        $AA15|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCPixel:     MACRO
                dc.w        $AA16|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCPixel:     MACRO
                dc.w        $AA17|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCTable:     MACRO
                dc.w        $AA18|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetForeColor:  MACRO
                dc.w        $AA19|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetBackColor:  MACRO
                dc.w        $AA1A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCCursor:    MACRO
                dc.w        $AA1B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCCursor:    MACRO
                dc.w        $AA1C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AllocCursor:   MACRO
                dc.w        $AA1D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCIcon:      MACRO
                dc.w        $AA1E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PlotCIcon:     MACRO
                dc.w        $AA1F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpenCPicture:  MACRO
                dc.w        $AA20|(\1+0)|(\2+0)|(\3+0)
                ENDM

_OpColor:       MACRO
                dc.w        $AA21|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HiliteColor:   MACRO
                dc.w        $AA22|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CharExtra:     MACRO
                dc.w        $AA23|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposCTable:  MACRO
                dc.w        $AA24|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeCTable: MACRO
                dc.w        $AA24|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposCIcon:   MACRO
                dc.w        $AA25|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeCIcon:  MACRO
                dc.w        $AA25|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposCCursor: MACRO
                dc.w        $AA26|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeCCursor: MACRO
                dc.w        $AA26|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMaxDevice:  MACRO
                dc.w        $AA27|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCTSeed:     MACRO
                dc.w        $AA28|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetDeviceList: MACRO
                dc.w        $AA29|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMainDevice: MACRO
                dc.w        $AA2A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNextDevice: MACRO
                dc.w        $AA2B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_TestDeviceAttribute: MACRO
                dc.w        $AA2C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetDeviceAttribute: MACRO
                dc.w        $AA2D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitGDevice:   MACRO
                dc.w        $AA2E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewGDevice:    MACRO
                dc.w        $AA2F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposGDevice: MACRO
                dc.w        $AA30|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeGDevice: MACRO
                dc.w        $AA30|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetGDevice:    MACRO
                dc.w        $AA31|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetGDevice:    MACRO
                dc.w        $AA32|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Color2Index:   MACRO
                dc.w        $AA33|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Index2Color:   MACRO
                dc.w        $AA34|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InvertColor:   MACRO
                dc.w        $AA35|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RealColor:     MACRO
                dc.w        $AA36|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetSubTable:   MACRO
                dc.w        $AA37|(\1+0)|(\2+0)|(\3+0)
                ENDM

_UpdatePixMap:  MACRO
                dc.w        $AA38|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MakeITable:    MACRO
                dc.w        $AA39|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddSearch:     MACRO
                dc.w        $AA3A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AddComp:       MACRO
                dc.w        $AA3B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetClientID:   MACRO
                dc.w        $AA3C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ProtectEntry:  MACRO
                dc.w        $AA3D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ReserveEntry:  MACRO
                dc.w        $AA3E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetEntries:    MACRO
                dc.w        $AA3F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_QDError:       MACRO
                dc.w        $AA40|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetWinColor:   MACRO
                dc.w        $AA41|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetAuxWin:     MACRO
                dc.w        $AA42|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetCtlColor:   MACRO
                dc.w        $AA43|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetAuxCtl:     MACRO
                dc.w        $AA44|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewCWindow:    MACRO
                dc.w        $AA45|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNewCWindow: MACRO
                dc.w        $AA46|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetDeskCPat:   MACRO
                dc.w        $AA47|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetCWMgrPort:  MACRO
                dc.w        $AA48|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SaveEntries:   MACRO
                dc.w        $AA49|(\1+0)|(\2+0)|(\3+0)
                ENDM

_RestoreEntries: MACRO
                dc.w        $AA4A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewCDialog:    MACRO
                dc.w        $AA4B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DelSearch:     MACRO
                dc.w        $AA4C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DelComp:       MACRO
                dc.w        $AA4D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetStdCProcs:  MACRO
                dc.w        $AA4E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CalcCMask:     MACRO
                dc.w        $AA4F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SeedCFill:     MACRO
                dc.w        $AA50|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyDeepMask:  MACRO
                dc.w        $AA51|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HFSPinaforeDispatch: MACRO
                dc.w        $AA52|(\1+0)|(\2+0)|(\3+0)
                ENDM

_HighLevelFSDispatch: MACRO
                dc.w        $AA52|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DockingDispatch: MACRO
                dc.w        $AA57|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DelMCEntries:  MACRO
                dc.w        $AA60|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DeleteMCEntries: MACRO
                dc.w        $AA60|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMCInfo:     MACRO
                dc.w        $AA61|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMCInfo:     MACRO
                dc.w        $AA62|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DispMCInfo:    MACRO
                dc.w        $AA63|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposeMCInfo: MACRO
                dc.w        $AA63|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetMCEntry:    MACRO
                dc.w        $AA64|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetMCEntries:  MACRO
                dc.w        $AA65|(\1+0)|(\2+0)|(\3+0)
                ENDM

_MenuChoice:    MACRO
                dc.w        $AA66|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ModalDialogMenuSetup: MACRO
                dc.w        $AA67|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DialogDispatch: MACRO
                dc.w        $AA68|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitPalettes:  MACRO
                dc.w        $AA90|(\1+0)|(\2+0)|(\3+0)
                ENDM

_NewPalette:    MACRO
                dc.w        $AA91|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetNewPalette: MACRO
                dc.w        $AA92|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisposePalette: MACRO
                dc.w        $AA93|(\1+0)|(\2+0)|(\3+0)
                ENDM

_ActivatePalette: MACRO
                dc.w        $AA94|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetPalette:    MACRO
                dc.w        $AA95|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetPalette:    MACRO
                dc.w        $AA96|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PmForeColor:   MACRO
                dc.w        $AA97|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PmBackColor:   MACRO
                dc.w        $AA98|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AnimateEntry:  MACRO
                dc.w        $AA99|(\1+0)|(\2+0)|(\3+0)
                ENDM

_AnimatePalette: MACRO
                dc.w        $AA9A|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetEntryColor: MACRO
                dc.w        $AA9B|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetEntryColor: MACRO
                dc.w        $AA9C|(\1+0)|(\2+0)|(\3+0)
                ENDM

_GetEntryUsage: MACRO
                dc.w        $AA9D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SetEntryUsage: MACRO
                dc.w        $AA9E|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CTab2Palette:  MACRO
                dc.w        $AA9F|(\1+0)|(\2+0)|(\3+0)
                ENDM

_Palette2CTab:  MACRO
                dc.w        $AAA0|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CopyPalette:   MACRO
                dc.w        $AAA1|(\1+0)|(\2+0)|(\3+0)
                ENDM

_PaletteDispatch: MACRO
                dc.w        $AAA2|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CursorADBDispatch: MACRO
                dc.w        $AADB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_InitApplication: MACRO
                dc.w        $AAFA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_CleanupApplication: MACRO
                dc.w        $AAFB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_QDExtensions:  MACRO
                dc.w        $AB1D|(\1+0)|(\2+0)|(\3+0)
                ENDM

_IconDispatch:  MACRO
                dc.w        $ABC9|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DeviceLoop:    MACRO
                dc.w        $ABCA|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DisplayDispatch: MACRO
                dc.w        $ABEB|(\1+0)|(\2+0)|(\3+0)
                ENDM

_SynchIdleTime: MACRO
                dc.w        $ABF7|(\1+0)|(\2+0)|(\3+0)
                ENDM

_StdOpcodeProc: MACRO
                dc.w        $ABF8|(\1+0)|(\2+0)|(\3+0)
                ENDM

_DebugStr:      MACRO
                dc.w        $ABFF|(\1+0)|(\2+0)|(\3+0)
                ENDM

;---------------------------------------------------------------------------
; Aliases, trap word constants and multi-instruction trap macros
;---------------------------------------------------------------------------

GestaltTrap     EQU         $A0AD
GestaltTrapID   EQU         $A1AD
OSDispatchTrap  EQU         $A88F
Unimplemented   EQU         $A89F
__InitGraf      EQU         $A86E
__SetToolBoxTrapAddress EQU $A647
__GetToolBoxTrapAddress EQU $A746

_HFSDispatch_async: MACRO
                _HFSDispatch async
                ENDM

; _ShutDown selectors
sdInit          EQU         0
sdPowerOff      EQU         1
sdRestart       EQU         2
sdInstall       EQU         3
sdRemove        EQU         4
sdUserChoice    EQU         5
sdSoftOff       EQU         6

_SDPowerOff:    MACRO
                move.w      #sdPowerOff,-(SP)
                _ShutDown
                ENDM

_SDRestart:     MACRO
                move.w      #sdRestart,-(SP)
                _ShutDown
                ENDM

_SDInstall:     MACRO
                move.w      #sdInstall,-(SP)
                _ShutDown
                ENDM

_SDRemove:      MACRO
                move.w      #sdRemove,-(SP)
                _ShutDown
                ENDM

; _InternalWait selectors
_GetTimeOut:    MACRO
                suba.l      A0,A0
                _InternalWait
                ENDM

_SetTimeOut:    MACRO
                movea.w     #1,A0
                _InternalWait
                ENDM

_GetWaitFlags:  MACRO
                movea.w     #2,A0
                _InternalWait
                ENDM

_SetWaitFlags:  MACRO
                movea.w     #3,A0
                _InternalWait
                ENDM

_DisableDynWait: MACRO
                movea.w     #4,A0
                _InternalWait
                ENDM

_EnableDynWait: MACRO
                movea.w     #5,A0
                _InternalWait
                ENDM

_DisablePermWait: MACRO
                movea.w     #6,A0
                _InternalWait
                ENDM

_EnablePermWait: MACRO
                movea.w     #7,A0
                _InternalWait
                ENDM

; _HWPriv selectors
_DisableInstructionCache: MACRO
                moveq       #0,D0
                movea.l     D0,A0
                _HWPriv
                ENDM

_EnableInstructionCache: MACRO
                moveq       #0,D0
                movea.w     #1,A0
                _HWPriv
                ENDM

_FlushInstructionCache: MACRO
                moveq       #1,D0
                _HWPriv
                ENDM

_DisableDataCache: MACRO
                moveq       #2,D0
                suba.l      A0,A0
                _HWPriv
                ENDM

_EnableDataCache: MACRO
                moveq       #2,D0
                movea.l     D0,A0
                _HWPriv
                ENDM

_FlushDataCache: MACRO
                moveq       #3,D0
                _HWPriv
                ENDM

_FlushCacheRange: MACRO
                moveq       #9,D0
                _HWPriv
                ENDM

; _SysError debugger breaks
_SysBreak:      MACRO
                move.w      #-490,D0
                _SysError
                ENDM

_SysBreakStr:   MACRO
                move.w      #-491,D0
                _SysError
                ENDM

_SysBreakFunc:  MACRO
                move.w      #-492,D0
                _SysError
                ENDM

_sReadByte:     MACRO
                moveq       #0,D0
                _SlotManager
                ENDM
_sReadWord:     MACRO
                moveq       #1,D0
                _SlotManager
                ENDM
_sReadLong:     MACRO
                moveq       #2,D0
                _SlotManager
                ENDM
_sGetcString:     MACRO
                moveq       #3,D0
                _SlotManager
                ENDM
_sGetBlock: MACRO
                moveq       #5,D0
                _SlotManager
                ENDM
_sFindStruct:     MACRO
                moveq       #6,D0
                _SlotManager
                ENDM
_sReadStruct:     MACRO
                moveq       #7,D0
                _SlotManager
                ENDM
_sVersion:      MACRO
                moveq       #8,D0
                _SlotManager
                ENDM
_sSetsRsrcState:      MACRO
                moveq       #9,D0
                _SlotManager
                ENDM
_sInsertSRTRec:     MACRO
                moveq       #$A,D0
                _SlotManager
                ENDM
_sGetsRsrc:     MACRO
                moveq       #$B,D0
                _SlotManager
                ENDM
_sGetTypesRsrc:     MACRO
                moveq       #$C,D0
                _SlotManager
                ENDM
_sReadInfo:     MACRO
                moveq       #10,D0
                _SlotManager
                ENDM
_sReadPRAMrec:     MACRO
                moveq       #$11,D0
                _SlotManager
                ENDM
_sPutPRAMRec: MACRO
                moveq       #$12,D0
                _SlotManager
                ENDM
_sReadFHeader:     MACRO
                moveq       #$13,D0
                _SlotManager
                ENDM
_sNextsRsrc:     MACRO
                moveq       #$14,D0
                _SlotManager
                ENDM
_sNextTypesRsrc:     MACRO
                moveq       #$15,D0
                _SlotManager
                ENDM
_sRsrcInfo: MACRO
                moveq       #$16,D0
                _SlotManager
                ENDM
_sDisposePtr: MACRO
                moveq       #$17,D0
                _SlotManager
                ENDM
_sCkCardStat:     MACRO
                moveq       #$18,D0
                _SlotManager
                ENDM
_sReadDrvrName: MACRO
                moveq       #$19,D0
                _SlotManager
                ENDM
_sFindSRTRec: MACRO
                moveq       #$1A,D0
                _SlotManager
                ENDM
_sFindDevBase:     MACRO
                moveq       #$1B,D0
                _SlotManager
                ENDM
_sFindBigDevBase:     MACRO
                moveq       #$1C,D0
                _SlotManager
                ENDM
_sGetsRsrcPtr:     MACRO
                moveq       #$1D,D0
                _SlotManager
                ENDM
_initSDeclMgr:     MACRO
                moveq       #$20,D0
                _SlotManager
                ENDM
_sPrimaryInit:     MACRO
                moveq       #$21,D0
                _SlotManager
                ENDM
_sCardChanged: MACRO
                moveq       #$22,D0
                _SlotManager
                ENDM
_sExec:     MACRO
                moveq       #$23,D0
                _SlotManager
                ENDM
_sOffsetData: MACRO
                moveq       #$24,D0
                _SlotManager
                ENDM
_sInitPRAMRecs:     MACRO
                moveq       #$25,D0
                _SlotManager
                ENDM
_sReadPBSize: MACRO
                moveq       #$26,D0
                _SlotManager
                ENDM
_sCalcStep:     MACRO
                moveq       #$28,D0
                _SlotManager
                ENDM
_sInitsRsrcTable: MACRO
                moveq       #$29,D0
                _SlotManager
                ENDM
_sSearchSRT:     MACRO
                moveq       #$2A,D0
                _SlotManager
                ENDM
_sUpdateSRT: MACRO
                moveq       #$2B,D0
                _SlotManager
                ENDM
_sCalcsPointer:     MACRO
                moveq       #$2C,D0
                _SlotManager
                ENDM
_sGetDriver: MACRO
                moveq       #$2D,D0
                _SlotManager
                ENDM
_sPtrToSlot:     MACRO
                moveq       #$2E,D0
                _SlotManager
                ENDM
_sFindsInfoRecPtr: MACRO
                moveq       #$2F,D0
                _SlotManager
                ENDM
_sFindsRsrcPtr:     MACRO
                moveq       #$30,D0
                _SlotManager
                ENDM
_sDeleteSRTRec: MACRO
                moveq       #$31,D0
                _SlotManager
                ENDM
_sSecondaryInit:     MACRO
                moveq       #$32,D0
                _SlotManager
                ENDM
_sInitSlotPRAM:     MACRO
                moveq       #$33,D0
                _SlotManager
                ENDM

