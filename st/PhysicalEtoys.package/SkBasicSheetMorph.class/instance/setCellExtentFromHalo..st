layout
setCellExtentFromHalo: newExtent 
	| eachExtent cellExtent |
	model
		ifNil: [^ self].
	cellExtent _ model
				at: self cellExtentName
				ifAbsent: [model
						at: self cellExtentName
						put: (SkSheet new parent: model)].
	eachExtent _ newExtent // self selection extent max: 10 @ 10.
	self selection left
		to: self selection right - 1
		do: [:x | cellExtent at: x @ 1 put: eachExtent].
	self selection top
		to: self selection bottom - 1
		do: [:y | cellExtent at: 1 @ y put: eachExtent].
	self areaChanged.
	self changed