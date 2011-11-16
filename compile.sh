#!/bin/sh
javac -Xlint:unchecked -O -source 1.5 -target 1.5 -cp ../libTUIO.jar TuioMouse.java
jar cfm ../TuioMouse.jar mouseManifest.inc TuioMouse.class
javac -Xlint:unchecked -O -source 1.5 -target 1.5 -cp ../libTUIO.jar TuioTouchpad.java
jar cfm ../TuioTouchpad.jar touchpadManifest.inc TuioTouchpad.class
rm -f *.class
