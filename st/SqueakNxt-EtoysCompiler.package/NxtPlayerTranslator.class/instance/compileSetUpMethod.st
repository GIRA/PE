translating
compileSetUpMethod
"Compiles the #setup method, which gets executed once at the beginning of the program and its responsible for configuring the sensors and initialize all the inst vars. It also waits for 500 milliseconds (just to be sure all the sensors are correctly configured)"
| methodSource |
methodSource := WriteStream on: ''.
methodSource nextPutAll: 'setup'; cr.
"Configure sensors"
sensors doWithIndex: [:m :index |
	m isNil ifFalse: [ | zeroBasedIndex |
		zeroBasedIndex := (index - 1) asString.
		methodSource nextPutAll: '	self setSensor'.
		m device type caseOf: {
			[SensorType lowspeed9V] -> [methodSource nextPutAll: 'LowSpeed: ', zeroBasedIndex].
			[SensorType lightActive] -> [methodSource nextPutAll: 'Light: ', zeroBasedIndex, ' active: true'].
			[SensorType lightInactive] -> [methodSource nextPutAll: 'Light: ', zeroBasedIndex, ' active: false'].
			[SensorType soundDba] -> [methodSource nextPutAll: 'Sound: ', zeroBasedIndex, ' scaling: false'].
			[SensorType soundDb] -> [methodSource nextPutAll: 'Sound: ', zeroBasedIndex, ' scaling: true'].
			[SensorType switch] -> [methodSource nextPutAll: 'Touch: ', zeroBasedIndex]
		} otherwise: [].
		methodSource nextPut: $.; cr.
	]
].
"Wait"
methodSource 
	nextPutAll: 'self wait: 500.'; cr.
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