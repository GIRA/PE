event handling
doubleClick: evt 
	| sheet |
	(holder notNil
			and: [owner = holder])
		ifTrue: [^ holder goto: model].
	self owner = World
		ifTrue: [self delete].
	sheet _ SkBasicSheetMorph allInstances
				detect: [:each | each world = World
						and: [each model = model]]
				ifNone: [model grid].
	sheet position: self position;
		 openInWorld