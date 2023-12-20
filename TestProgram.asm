; TestProgram.asm
; line 2 here
n1      equ 10
n2      equ 'A'
n3      equ '\n'
n4      equ $4444
n5      equ @5050
n6      equ %10101
t1      dcs "This is sample text."
t2      dcs "\tThis is more.\r\n"
t3      dcsz "Ends with a null-terminator!"
t4      dcsz "Another\r\n"
        mov RQ0,#n1
        mov RQ0,#n2
        mov RQ0,#n3
        mov RQ0,#n4
        mov RQ0,#n5
        mov RQ0,#n6
        mov rb001,#5
        mov rh01,#555
        mov rw01,#555555
        mov rd01,#555555555555
        mov rq1,#555555555555555555555555
        dcb $12 $77,$88
        dch $1234,$0
        dcw $123456 55 66 77
        dcd $123456789A 22 23 24
        dcq $12345699988866 1 2 3
here1   clrz
        clrn
        bne nowhere
nowhere addc RB028,#27
        addc RB028,#65
        sub RB028,#127
        umul RB028,#99
        jsr RB055
        jsr [RB055]
        bra lab1
        beq lab2
        bra labelfar
        neg RB000
        mov rb017,#$46
        mov rb017,#@46
        mov rb017,#%101
        mov rb017,#46
        mov rb001,#'X'
        mov rb021,#'\\'
        mov rb021,#'\''
lab1    mov rb021,#'\r'
        mov rb021,#'\n'
        mov rb021,#'\t'
        setbit RH01,#6
        cmp RW02,#1234
        cmp RD03,RD04
        setbit RQ1,[RQ2],#127
        clrn
        brn label
lab2    brn labelfar
        Inc RB028
        clrbit RQ3,#127
        Inc RB028,[RB055]
        clrbit RB028,[RB055],#5
        clrc
        ble lab1
        ble labelfar
        dec RB028
        invbit RB028,#5
        sub SP,#123
        dec RB028,[RB055]
        invbit RB028,[RB055],#5
        clrv
        blt label
        blt label
        rev RB028
        testbit RB055,#5
        add SP,#123
        xchg RB028,[RB055]
        testbit RB055,[RB055],#5
        clrie
        beq label
        beq label
        sxt RB028
        add RB028,#123
        add RB028,#123
        add RB028,RB055
label   add RB028,RB055,#123
        clrfe
        bne lab2
        bne label
        zxt RB028
        addc RB028,RB055
        addc RB028,RB055,#123
        clrge
        bge label
        bge label
        oxt RB028
        sub RB028,#123
        sub RB028,#123
        sub RB028,RB055
        sub RB028,RB055,#123
        clrhe
        bgt label
        bgt label
        loz RB028
        subb RB028,#123
        subb RB028,#123
        subb RB028,RB055
        subb RB028,RB055,#123
        clrint
        bhi label
        bhi lab3
        loo RB028
lab3    umul RB028,#123
        umul RB028,#123
        umul RB028,RB055
        umul RB028,RB055,#123
        clrp
        bls lab1
        bnh label
        bls lab3
        bnh label
        hiz RB028
        smul RB028,#123
        smul RB028,#123
        smul RB028,RB055
        smul RB028,RB055,#123
        clrse
        bpl lab2
        bpl label
        hio RB028
        udiv RB028,#123
        udiv RB028,#123
        udiv RB028,RB055
        udiv RB028,RB055,#123
        setz
lab4    bnp lab4
        bmz lab2
        bnp lab3
        bmz lab1
        inv RB028
        sdiv RB028,#123
        sdiv RB028,#123
        sdiv RB028,RB055
        sdiv RB028,RB055,#123
        setn
        bmi label
        bmi label
        pushb RB055,RB100
        pushb RH09,RH10
        and RB028,#123
        and RB028,#123
        and RB028,RB055
        and RB028,RB055,#123
        and RQ1,RB055,#123
        and RB055,RQ1,#123
        setc
        bnm label
        bpz label
        bnm label
        bpz label
        popb RB028,RB029
        or RQ2,#123
        or RD02,#123
        or RB028,#123
        or RB028,#123
        or RB028,RB055
        or RB028,RB055,#123
        setv
        bcc label
        bnl lab4
        bcc label
        bnl label
        pushh RH01,RH02
        xor RB028,#123
        xor RB028,#123
        xor RB028,RB055
        xor RB028,RB055,#123
        setie
        bcs lab5
        blo label
        bcs label
        blo label
        poph RB028,RB030
        nand RB028,#123
        nand RB028,#123
lab5    nand RB028,RB055
        nand RB028,RB055,#123
        setfe
        bvc lab2
        bno label
        bvc label
        bno lab5
        pushd RB055,RB045
        nor RB028,#123
        nor RB028,#123
        nor RB028,RB055
        nor RB028,RB055,#123
        setge
        bvs label
        bov label
        bvs label
        bov label
        popd RB028,RB029
        xchg RB028,RB055
        sethe
        bic label
        bic label
        pushw RQ0,RQ1
        shl RB028,#6
        lozu RB028,RB055
        shl RB028,RB055,#6
        setint
        bis label
        bis label
        popw RD02,RD03
        shr RB028,#6
        loou RB028,RB055
        shr RB028,RB055,#6
        setp
        bfc label
        bfc label
        pushq RB055,RB045
        rol RB028,#6
        rol RB028,#7
        rol RB028,#8
        hizu RB028,RB055
        rol RB028,RB055,#6
        setse
        bfs label
        bfs label
        popq RQ7,RQ0
        ror RB028,#6
        hiou RB028,RB055
        ror RB028,RB055,#6
        nop
        bgc lab6
        bgc label
        fill RB028
        rcl RB028,#6
        decu RB028,RB055
        rcl RB028,RB055,#6
        pushf
        bgs label
        bgs label
        clr RB028
        rcr RB028,#6
        encu RB028,RB055
        rcr RB028,RB055,#6
        popf
        bhc label
        bhc label
        test RB055
        cmp RB028,#123
        cmp RB028,#123
lab6    sto [RB028],RB055
        sto [RB028,#65],RB055
        ret
        bhs label
        bhs label
        mov RB028,#123
        mov RB028,#123
        mov RB028,RB055
        sto [RB028,#65],RB055
        reti
        bsr label
        bsr lab3
        movinv RB028,#123
        movinv RB028,#123
        movinv RB028,RB055
        stoinv [RB028,#65],RB055
        retf
        jmp RB055
        movneg RB028,#123
        movneg RB028,#123
        movneg RB028,RB055
        stoneg [RB028,#65],RB055
        retg
        jmp[RB055]
me1     lea RB028,me1
        lea RB028,here1
        lea RB028,[RB055]
        lea RB028,[RB055,#65]
        rets
        mov SP,RB055
        ld RB028,me1
        ld RB028,labelfar
        ld RB028,[RB055]
        ld RB028,[RB055,#65]
        retn
        mov RB028,SP
        ldinv RB028,me1
        ldinv RB028,here1
        ldinv RB028,[RB055]
        ldinv RB028,[RB055,#123]
        reth
        reset
        mov RB028,PC
        ldneg RB028,me1
        ldneg RB028,here1
        ldneg RB028,[RB055]
labelfar  ldneg RB028,[RB055,#123]
        bra here1
