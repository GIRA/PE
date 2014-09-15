initialize
newTextMorphWithContents: aString
	^ SpreadsheetTextMorph new autoFit: false;
		 extent: 100 @ 23;
		 borderWidth: 1;
		rightFlush;
		 backgroundColor: Color white;
		crPassesFocus: true;
		highlightsOnFocus: true;
		 contentsWrapped: aString;
		when: #extentChange send: #notifyExtentChange: to: self