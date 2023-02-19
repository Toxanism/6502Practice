    processor 6502
    seg Code    ; Define a new segment named "Code"
    org $F000
Start:

    lda #1
    ldx #2
    ldy #3
    inx
    iny
    clc
    adc #1
    dex
    dey
    sec
    sbc #1
    
    
    jmp Start
    org $FFFC   ; End the ROM by adding required values to memory position $FFFC
    .word Start ; Put 2 bytes with the reset address at memory position $FFFC
    .word Start ; Put 2 bytes with the break address at memory position $FFFE