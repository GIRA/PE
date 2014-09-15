accessing
angle: aSmallInteger 
	self controlAttaching; reconfigureIfNecessary.
	pins first value = aSmallInteger ifTrue: [^ self].
	pins first value: (aSmallInteger min: 180 max: 0)