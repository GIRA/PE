translating
compileSetUpMethod
| methodSource |
methodSource := WriteStream on: ''.
methodSource nextPutAll: 'setup'; cr.
"Configure sensors"
digitalPins keysAndValuesDo: [:key :value |
	value notEmpty
		ifTrue: [| mode |
		mode := (mainMorph arduino digitalPin: key) mode.
		methodSource
			nextPutAll: 'self setMode: ';
			nextPutAll: key asString;
			nextPutAll: 'value:';
			space;
			nextPutAll: (self pinModeCodeFor: mode);
			nextPutAll: '.';
			cr.
	]
].
analogPins keysAndValuesDo: [:key :value |
	value notEmpty
		ifTrue: [| mode |
		mode := (mainMorph arduino analogPin: key) mode.
		methodSource
			nextPutAll: 'self setMode:';
			nextPutAll: (key + 14) asString;
			nextPutAll: 'value:';
			space;
			nextPutAll: (self pinModeCodeFor: mode);
			nextPutAll: '.';
			cr.
	]
].


"Initialize variables"
self variablesDo: [:varName :varTypeAndValue | | value |
	value := varTypeAndValue value.
	value := (value isKindOf: RBProgramNode) 
				ifTrue: [value formattedCode]  "Is a message send"
				ifFalse: [value printString]. "Is a literal"
	methodSource 
		nextPutAll: (self asLegalName: varName), ' := ' , value , '.';
		cr].
methods add: methodSource contents