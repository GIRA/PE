arg accessing
holder: aSkSheet at: aPoint 
	| holderCell |
	(self referenceAt: aPoint)
		withIndexDo: [:pos :index | 
			holderCell _ aSkSheet assuredCellAt: pos.
			args at: index put: holderCell]