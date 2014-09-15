finding types
findTypeOf: aProgramNode in: aClass with: aKit
	^ (self withKit: aKit)
		findTypeOf: aProgramNode in: aClass 