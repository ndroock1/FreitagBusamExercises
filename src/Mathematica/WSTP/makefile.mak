

#all: addtwo.exe

addtwo.exe:
	 wsprep addtwo.tm -o addtwotm.c
	 gcc -o addtwo.exe addtwo.c addtwotm.c -luser32 -lkernel32 -lgdi32 -l:wstp64i4m.lib -L.
