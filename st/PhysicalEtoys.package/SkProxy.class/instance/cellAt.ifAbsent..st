cell accessing
cellAt: key ifAbsent: aBlock 
	^ map
		at: key
		ifAbsent: [rule cellAt: key ifAbsent: aBlock]