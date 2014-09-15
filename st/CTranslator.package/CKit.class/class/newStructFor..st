building
newStructFor: aClass 
	aClass isMeta
		ifTrue: [^ self metaStructClass for: aClass].
	aClass isPrimitive
		ifTrue: [^ self primStructClass for: aClass].
	^ self structClass for: aClass