layout
setExtentFromHalo: newExtent 
	| newCellExtent nSize |
	newCellExtent _ (self screenToCell: ActiveHand position - 10)
				- origin.
	(newCellExtent y > 1
			and: [newCellExtent x > 1])
		ifTrue: [^ self replaceToSheet: newCellExtent].
	nSize _ (newCellExtent x abs max: newCellExtent y abs)
				max: 0.
	newCellExtent y > (0 - newCellExtent x)
		ifTrue: [newCellExtent y < newCellExtent x
				ifTrue: [self direction: #right]
				ifFalse: [self direction: #down]]
		ifFalse: [newCellExtent y < newCellExtent x
				ifTrue: [self direction: #up]
				ifFalse: [self direction: #left]].
	self size: nSize