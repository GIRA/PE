configuring
configure
	pins do: [:each | each mode: (LCDMode on: self)].
	protocol := pins first protocol.
	protocol 
		lcdConfigureOnPins: (pins collect: [:each |
			each digitalNumber])
		width: width
		length: length.
	protocol lcdPrintString: text