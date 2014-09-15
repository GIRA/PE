as yet unclassified
main
	| list |
	<tempTypes: #(CLinkedList)>
	list := CLinkedList with: 1.
	list add: 2.
	self printf: '%d\n' value: list value.
	self printf: '%d\n' value: (list at: 2) value.
	self pause.