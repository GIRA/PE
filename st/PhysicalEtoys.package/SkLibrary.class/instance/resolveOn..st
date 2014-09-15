updating
resolveOn: sheet 
	[self resolve]
		ifError: [:err :rcvr | 
			false
				ifTrue: [Transcript show: err printString;
						 cr;
						 show: rcvr printString;
						 cr].
			0]