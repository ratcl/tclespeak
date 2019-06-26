%module eSpeak

%{
	#include <string.h>
	#include <stdlib.h>
	#include <tcl8.5/tcl.h>
	#include <espeak/speak_lib.h>
	#include "espeak.h"
%}

%include "espeak.h"
