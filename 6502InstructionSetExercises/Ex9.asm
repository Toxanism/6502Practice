    processor 6502
    seg Code    ; Define a new segment named "Code"
    org $F000
Start:
	lda #1
        
Loop:
	clc
        adc #1
        cmp #10
        bne Loop
        jmp Start
    
    org $FFFC   ; End the ROM by adding required values to memory position $FFFC
    .word Start ; Put 2 bytes with the reset address at memory position $FFFC
    .word Start ; Put 2 bytes with the break address at memory position $FFFE