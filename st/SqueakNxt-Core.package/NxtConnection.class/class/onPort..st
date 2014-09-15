instance creation
onPort: aString
	^ ('USB' match: aString)
		ifTrue: [NxtUSBConnection onPort: aString]
		ifFalse: [NxtBluetoothConnection onPort: aString]