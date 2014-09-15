instance creation
friendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate firmataRate: firmataRate
	^ self basicNew initializeWithFriendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate firmataRate: firmataRate avrdudeProgrammer: 'stk500'