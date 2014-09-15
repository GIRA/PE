accessing
at: key ifAbsent: aBlock 
	"answer a value of the point"
	^ (self
		cellAt: key
		ifAbsent: [^ aBlock value]) contents