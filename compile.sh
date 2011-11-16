#!/bin/sh
javac -Xlint:unchecked -O -source 1.5 -target 1.5 -cp lib/libTUIO.jar TuioMouse.java
jar cfm bin/TuioMouse.jar mouseManifest.inc TuioMouse.class
javac -Xlint:unchecked -O -source 1.5 -target 1.5 -cp lib/libTUIO.jar TuioTouchpad.java
jar cfm bin/TuioTouchpad.jar touchpadManifest.inc TuioTouchpad.class
cp lib/libTUIO.jar bin/
rm -f *.class
