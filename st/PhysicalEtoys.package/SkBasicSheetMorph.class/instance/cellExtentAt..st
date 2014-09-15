layout
cellExtentAt: aPoint 
	| cellExtent x y |
	^ (model notNil
			and: [(cellExtent _ model findName: self cellExtentName) class == SkSheet ])
		ifTrue: [x _ (cellExtent
						at: aPoint x @ 1
						ifAbsent: [SkGridMorph standardCellExtent]) x.
			y _ (cellExtent
						at: 1 @ aPoint y
						ifAbsent: [SkGridMorph standardCellExtent]) y.
			x @ y]
		ifFalse: [SkGridMorph standardCellExtent]