as yet unclassified
main
	| list |
	<tempTypes: #(CLinkedList)>
	list := CLinkedList with: 1.
	list add: 2;
		add: 3;
		add: 4.
	self printf: '%d\n' value: (list at: 1) value.
	self printf: '%d\n' value: (list at: 2) value.
	self printf: '%d\n' value: (list at: 3).
	self printf: '%d\n' value: (list at: 4).
	self pause.