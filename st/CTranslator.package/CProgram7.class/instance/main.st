as yet unclassified
main
	list := CLinkedList new.
	list value: 1;
		add: 2.
	self print: (list at: 1);
		print: (list at: 2);
		pause 