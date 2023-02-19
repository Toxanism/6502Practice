    processor 6502
    seg Code    ; Define a new segment named "Code"
    org $F000
Start:
	ldy #10
        
Loop:
	tya
        sta $80,Y
        dey
        bpl Loop
        
        jmp Start
    
    org $FFFC   ; End the ROM by adding required values to memory position $FFFC
    .word Start ; Put 2 bytes with the reset address at memory position $FFFC
    .word Start ; Put 2 bytes with the break address at memory position $FFFE