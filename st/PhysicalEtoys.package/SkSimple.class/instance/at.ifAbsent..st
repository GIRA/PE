accessing
at: key ifAbsent: aBlock 
	^ (map at: key ifAbsent: aBlock) value