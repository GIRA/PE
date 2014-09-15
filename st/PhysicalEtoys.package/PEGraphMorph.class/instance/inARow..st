initialize-release
inARow: anArray
	^ (AlignmentMorph inARow: anArray) 
		borderWidth: 0;
		extent: 1@1;
		layoutInset: 0;
		cellInset: 5;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		wrapCentering: #center;
		cellPositioning: #center.