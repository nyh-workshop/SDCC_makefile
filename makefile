CC = sdcc

SDCC_INCLUDE = "/usr/share/sdcc/include/"

CXXFLAGS = -mmcs51 -I$(SDCC_INCLUDE)

main.ihx: main.c
        @echo "Compiling for MCS-51..."
        $(CC) $(CXXFLAGS) main.c

clean:
        @echo "cleaning files..."
        @rm -f *.asm *.ihx *.lk *.lst *.map *.mem *.rel *.rst *.sym
