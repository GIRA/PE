initialize-release
initializeAttachmentPoint
	attachmentPoint := PEAttachmentPointMorph new 
				color: Color black;
				borderWidth: 0;
				extent: 1 @ 1;
				center: self center + self attachmentPointCenter.
	self addMorph: attachmentPoint