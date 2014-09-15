building
inARow: anArray
	^ (AlignmentMorph inARow: anArray) 
		borderWidth: 0;
		extent: 1@1;
		layoutInset: 0;
		cellInset: 0;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		wrapCentering: #center;
		cellPositioning: #center.