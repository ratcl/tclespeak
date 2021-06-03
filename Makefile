all:
	swig -c++ -tcl -o espeak_wrap.cpp espeak.i
	tclsh fix.tcl
	g++ -fpic -c espeak.cpp espeak_wrap.cpp
	g++ -shared espeak.o espeak_wrap.o -o espeak.so -lm -ltcl8.6 -lespeak

	cp -f espeak.so ./tclespeak/espeak1.0.so

clean:
	rm -fr *~
	rm -fr *.o
	rm -fr *.so
	rm -fr espeak
	rm -fr espeak_wrap.cpp

install_dev_pkg:
	sudo apt-get install libespeak-dev
	sudo apt-get install tcl8.6-dev
	sudo apt-get install tk8.6-dev
