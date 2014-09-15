as yet unclassified
main
	| list |
	<tempTypes: #(CLinkedList)>
	list := CLinkedList new.
	list isNil
		ifFalse: [self printf: 'list no es nil \n'].
	list value isNil
		ifTrue: [self printf: 'value si es nil\n'].
	list value: 1.
	list value isNil
		ifFalse: [self printf: 'value: %d\n' value: list value].
	list add: 2.
	(list at: 2) isNil
		ifFalse: [self printf: 'value: %d\n' value: (list at: 2) value].
	list add: 3.
	list add: 4.
	self printf: 'value: %d\n' value: (list at: 3) value.
	self printf: 'value: %d\n' value: (list at: 4) value.
	self pause.