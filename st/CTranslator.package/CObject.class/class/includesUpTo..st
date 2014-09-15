definition
includesUpTo: class
	| currentClass includes |
	currentClass := self.
	includes := Set new.
	[includes addAll: currentClass includes]
		doWhileFalse: [(currentClass := currentClass superclass) = class superclass].
	^ includes
	