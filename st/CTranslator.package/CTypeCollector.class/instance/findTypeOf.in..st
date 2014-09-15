finding types
findTypeOf: aProgramNode in: aClass 
	selfClass := aClass.
	^ self findTypeOf: aProgramNode