initialization
initializeAttachmentPoints
	attachments := Array new: self numberOfAttachmentPoints.
	attachmentPoints := Array streamContents: [:stream |
		1 to: self numberOfAttachmentPoints do: [:i |
			| point spec pointCenter pointColor pointBorderColor |
			spec := self attachmentPointsSpecs at: i.
			pointCenter := spec first.
			pointColor := spec second.
			pointBorderColor := spec third.
			point :=PEAttachmentPointMorph new 
					extent: 10 @ 10;
					center: pointCenter;
					color: pointColor;
					borderColor: pointBorderColor;
					on: #mouseDown
					send: #mouseDownPin:evt:morph:
					to: self
					withValue: i.
			self addMorph: point.
			stream nextPut: point]]