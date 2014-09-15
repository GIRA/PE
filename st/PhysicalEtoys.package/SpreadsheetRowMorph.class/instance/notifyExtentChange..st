cell extent change
notifyExtentChange: aMorph
	| index |
	index := self submorphIndexOf: aMorph.
	index ifNil: [^ self].
	self submorphsDo: [:each | 
		each safeExtent: each width @ aMorph height].
	owner column: index width: aMorph width.