                include     'VIA.s'                 ; Include VIA offsets
                include     'SCSI.s'                ; Include SCSI offsets
bufWorldSize    EQU         $800000
HeapStart       EQU         $2000
seRegs          EQU         $C30
seVars          EQU         seRegs
seD0            EQU         seVars
seA0            EQU         seD0+32
seA7  			EQU 		seA0+28
sePC  			EQU 		seA7+4
seSR  			EQU 		sePC+4
seAccess  		EQU 		seSR+2
seCmdSize 		EQU 		seAccess+4
se000BE   		EQU 		seCmdSize+2
seLastVar 		EQU 		se000BE+8
