set fin [open [file join [file dirname [info script]] espeak_wrap.cpp] r]
set fout [open [file join [file dirname [info script]] espeak_wrap.cpp.tmp] w]

set data [regsub -all -- {#include <tcl.h>} [read $fin] {#include <tcl8.5/tcl.h>}]
puts $fout $data

close $fin
close $fout

file delete espeak_wrap.cpp
file rename espeak_wrap.cpp.tmp espeak_wrap.cpp
