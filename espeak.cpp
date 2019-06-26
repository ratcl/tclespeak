//
// http://www.tcltk.cn
//

#include <string.h>
#include <stdlib.h>
#include <tcl8.5/tcl.h>
#include <espeak/speak_lib.h>
#include "espeak.h"

eSpeak::eSpeak()
{
    espeak_Initialize(AUDIO_OUTPUT_PLAYBACK, 0, NULL,0);
}

void eSpeak::lang(const char *lang)
{
	espeak_SetVoiceByName(lang);
}

void eSpeak::speak(const char *word)
{
    espeak_Synth(word, strlen(word)+1, 0, POS_CHARACTER, 0, espeakCHARS_UTF8, NULL, NULL);
}

eSpeak::~eSpeak()
{
    espeak_Terminate();
}

