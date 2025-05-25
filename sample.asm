JMP Main

Main:
    MOV A, 0 
    MOV B, 0
    MOV C, 1
    ADD A, Lookup
    JMP [A]
Test_JC:
    CMP B, C
    JC [A]
    HLT
Test_JNC:
    CMP C, B
    JNC [A]
    HLT
Test_JZ:
    CMP B, B
    JZ [A]
    HLT
Test_JNZ:
    CMP C, B
    JNZ [A]
    HLT
Test_JA:
    CMP C, B
    JA [A]
    HLT
Test_JNA:
    CMP B, C
    JNA [A]
    HLT
Lookup:
    DW Print_0 
    DW Print_1
    DW Print_2
    DW Print_3
    DW Print_4
    DW Print_5
    DW Print_6
Print_0:
    ADD A, 2
    MOVB [0x1000], 0x30
    JMP Test_JC
Print_1:
    ADD A, 2
    MOVB [0x1001], 0x31
    JMP Test_JNC
Print_2:
    ADD A, 2
    MOVB [0x1002], 0x32
    JMP Test_JZ
Print_3:
    ADD A, 2
    MOVB [0x1003], 0x33
    JMP Test_JNZ
Print_4:
    ADD A, 2
    MOVB [0x1004], 0x34
    JMP Test_JA
Print_5:
    ADD A, 2
    MOVB [0x1005], 0x35
    JMP Test_JNA
Print_6:
    ADD A, 2
    MOVB [0x1006], 0x36
    HLT

