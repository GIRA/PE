updating
resolveFormulaOn: sheet at: aPoint 
	block
		ifNil: [^ self].
	sheet
		at: aPoint
		put: ([block value: sheet value: aPoint]
				ifError: [:err :rcvr | 
					false
						ifTrue: [Transcript show: err printString;
								 cr;
								 show: rcvr printString;
								 cr].
					0])