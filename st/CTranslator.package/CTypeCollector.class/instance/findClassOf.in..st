finding types
findClassOf: aProgramNode in: aClass 
	selfClass := aClass.
	^ self findClassOf: aProgramNode