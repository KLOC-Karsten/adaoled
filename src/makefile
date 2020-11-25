
BIN = adaoled

OLED_PATH = ../C/lib

LIB = -L$(OLED_PATH) -lbcm2835 -lm

# OPTS = -aI../../Ada_Drivers_Library 

$(BIN): $(BIN).o
	gnatmake $(BIN).adb -largs $(LIB)

%.o: %.adb %.ads
	gcc -c $<

%.o: %.adb
	gcc -c $<

clean:
	rm -f *.o *.ali

realclean: clean
	rm -f $(BIN)
