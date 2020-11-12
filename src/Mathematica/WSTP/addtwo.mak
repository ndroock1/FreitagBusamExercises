# addtwo.mak a makefile for building the addtwo.exe example program

CFLAGS = /nologo /c /W3 /Z7 /Od /DWIN32 /D_DEBUG /D_WINDOWS

# Linking against gdi32.lib for access to windowing mechanisms
LFLAGS = /DEBUG /PDB:NONE /NOLOGO /SUBSYSTEM:windows /INCREMENTAL:no kernel32.lib user32.lib gdi32.lib

# Uncomment the value below for working on a 64-bit Windows system
PLATFORM = WIN64
# PLATFORM = WIN32

!if "$(PLATFORM)" == "WIN32"
LIBFILE = wstp32i4m.lib
!else
LIBFILE = wstp64i4m.lib
!endif

addtwo.exe : addtwo.obj addtwotm.obj
  LINK addtwo.obj addtwotm.obj $(LIBFILE) /OUT:addtwo.exe @<<
$(LFLAGS)
<<

addtwo.obj : addtwo.c
  CL @<< addtwo.c
$(CFLAGS)
<<

addtwotm.obj : addtwotm.c
  CL @<< addtwotm.c
$(CFLAGS)
<<

# Need to call wsprep to preprocess WSTP template
addtwotm.c : addtwo.tm
  wsprep addtwo.tm -o addtwotm.c