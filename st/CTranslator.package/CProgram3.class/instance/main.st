as yet unclassified
main
	| var |
	<tempTypes: #(CLong)>
	var := 5.
	var > 10
		ifTrue: [self printf: 'Mayor']
		ifFalse: [self printf: 'Menor'].
	self printf: '\n'.
	self system: 'PAUSE'