holder and card
holder: aSkSheet at: aPoint 
	| holderCell |
	self initializeArgs.
	(self referenceAt: aPoint)
		withIndexDo: [:pos :index | 
			holderCell _ aSkSheet assuredCellAt: pos.
			holderCell modelAddDependent: self.
			args at: index put: holderCell].
	self update: #contents.