updating
holder: aSkSheet at: aPoint 
	| holderCell |
	(aSkSheet cellAt: aPoint) hasCard
		ifFalse: [^ aSkSheet].
	(self referenceAt: aPoint)
		withIndexDo: [:pos :index | 
			holderCell _ aSkSheet assuredCellAt: pos.
			map
				at: index @ 1
				put: (SkProxyCell new
						holderCell: holderCell
						argCell: (rule assuredCellAt: index @ 1))]