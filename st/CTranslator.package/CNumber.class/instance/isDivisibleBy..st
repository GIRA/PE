c-math functions
isDivisibleBy: aNumber
<returnType: #(CBoolean)> <argTypes: #(CLong)>
aNumber = 0 ifTrue: [^false].
self \\ aNumber = 0
	ifTrue: [^ true]
	ifFalse: [^ false]