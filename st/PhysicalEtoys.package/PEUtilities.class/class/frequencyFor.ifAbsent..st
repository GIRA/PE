note constants
frequencyFor: noteName ifAbsent: aBlock
	^ (self notes as: Dictionary) at: noteName ifAbsent: aBlock