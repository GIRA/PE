finding types
findClassOf: aProgramNode in: aClass with: aKit
	^ (self withKit: aKit)
		findClassOf: aProgramNode in: aClass 