private
privateRemoveMorph: aMorph 
	aMorph class = SkCardMorph
		ifTrue: [self beep: 'scratch'.
			self model textAt: aMorph cellOrigin put: ''].
	super privateRemoveMorph: aMorph