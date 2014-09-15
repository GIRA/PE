connection
connectOnPort: aByteSymbol 
	self isConnected ifTrue: [^ self].
	(port := aByteSymbol) = #USB
		ifTrue: [^ self].
	[deviceName := Fantom deviceNameOn: port]
		on: Error
		do: ["If the name search failed, I probably won't work.
			Just in case, disconnect"
			self disconnect]