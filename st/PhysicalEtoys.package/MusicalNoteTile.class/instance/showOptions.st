as yet unclassified
showOptions
	(MusicalNotePicker new
		when: #selectionChanged 
		send: #value:
		to: self)
		openInWorld;
		center: World currentHand position;
		keepInsideWorld.
