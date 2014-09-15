as yet unclassified
at: aNumber
	<argTypes: #(CLong)>
	aNumber = 1
		ifTrue: [^ self].
	^ next at: aNumber - 1