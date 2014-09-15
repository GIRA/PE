stepping and presenter
stepAt: nowTick 
	| delta |
	self isTicking
		ifTrue: [(lastTick isNil
					or: [nowTick < lastTick])
				ifTrue: [lastTick _ nowTick].
			delta _ nowTick - lastTick // stepTime.
			delta > 0
				ifTrue: [self color: self runningColor.
					index _ index + delta.
					lastTick _ nowTick.
					self changed]]
		ifFalse: [self color: self stoppedColor]