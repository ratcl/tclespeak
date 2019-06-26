# pkgIndex.tcl --
#
# http://www.tcltk.cn
#

package ifneeded espeak 1.0 [list [load [file join $dir espeak1.0.so] eSpeak] {package provide espeak 1.0}]

