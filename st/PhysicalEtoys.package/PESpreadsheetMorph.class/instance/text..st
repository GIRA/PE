building
text: aString
	^ UserText new
		contents: aString;
		centered;
		autoFit: false;
		setExtentFromHalo: 100@23;
		layoutChanged