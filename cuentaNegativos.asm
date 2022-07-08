        org $90
        db $00
        db $04
        db $fa,$01,$ff
        org $EE00
        clra
        ldx #$92
dato:   dec $91
        lda $91
        cbeqa #$0,fin
        lda ,x
        bmi neg
        incx
        bra dato
neg:    inc $90
        incx
        bra dato
fin:    swi
        org $FFFA
        dw $EE00
        dw $EE00
        dw $EE00
