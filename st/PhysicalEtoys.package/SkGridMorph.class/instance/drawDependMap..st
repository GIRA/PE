drawing
drawDependMap: aCanvas 
	| subjectColor dependArray observer subjects observerColor |
	subjectColor _ SkColorSet selectedFor: self model rule.
	observerColor _ subjectColor adjustBrightness: -0.06.
	dependArray _ self model rule collectDependents.
	"draw subjects"
	aCanvas
		clipBy: self bounds
		during: [:canvas | 
			(dependArray
				inject: Set new
				into: [:set :next | set addAll: next allButFirst;
						 yourself])
				do: [:each | canvas
						fillOval: ((self localCellToScreenRect: each) center - (7 @ 7) extent: 14 @ 14)
						fillStyle: subjectColor].
			"draw objerver and line"
			dependArray
				do: [:each | 
					observer _ each first.
					subjects _ each allButFirst.
					canvas
						fillOval: ((self localCellToScreenRect: observer) center - (4 @ 4) extent: 8 @ 8)
						fillStyle: observerColor.
					subjects
						do: [:end | canvas
								line: (self localCellToScreenRect: observer) center
								to: (self localCellToScreenRect: end) center
								width: 1
								color: observerColor]]]