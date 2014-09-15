as yet unclassified
add: aNumber
	<argTypes: #(CLong)>
	next isNil
		ifTrue: [next := CLinkedList with: aNumber]
		ifFalse: [next add: aNumber]
	