lcd
lcdPrintString: string
	| s |
	self lcdClear.
	s := string size > 16
		ifTrue: [(string copyFrom: 1 to: 16),
			'314151617181920212223242',
			(string copyFrom: 17 to: string size)]
		ifFalse: [string].
	s do: [:char |
		self lcdPrint: char]