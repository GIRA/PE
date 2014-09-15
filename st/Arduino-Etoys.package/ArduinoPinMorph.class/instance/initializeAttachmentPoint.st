initialization
initializeAttachmentPoint
	attachmentPoint := PEAttachmentPointMorph new color: Color transparent;
				 borderWidth: 0;
				 extent: 1 @ 1;
				 center: self center + (1 @ 0).
	self addMorph: attachmentPoint