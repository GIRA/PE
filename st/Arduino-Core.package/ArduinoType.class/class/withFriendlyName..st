accessing types
withFriendlyName: aSymbol 
"Return an ArduinoType with the friendly name given as a parameter"

	^ types detect: [:each | each friendlyNames includes: aSymbol] ifNone: [self error: 'ArduinoType not found' translated]