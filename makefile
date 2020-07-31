CC = sdcc

SDCC_INCLUDE = "/usr/share/sdcc/include/"

CPPFLAGS = -mmcs51 -I$(SDCC_INCLUDE)

main.ihx: main.c
        @echo "Compiling for MCS-51..."
        $(CC) $(CPPFLAGS) main.c

clean:
        @echo "cleaning files..."
        @rm -f *.asm *.ihx *.lk *.lst *.map *.mem *.rel *.rst *.sym
