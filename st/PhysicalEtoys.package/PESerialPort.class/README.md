This is a wrapper for the ScratchPlugin serial port primitives.

It has the same protocol than the SerialPort class, so that the two could be used interchangeably. Only a subset of the full protocol is supported though (the one used by Physical Etoys).

In the class side there are a few extra methods to deal with the serial port list vocabulary used in etoys slots.

This class will replace the use of SerialPort in windows. See class side >> #startUp.