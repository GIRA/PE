translating
createTimerStep: aMethodNode
"First add the corresponding variables"
| source newMethod |
(variables at: currentMorph)
	at: #isStarted
	put: #Boolean -> false.
(variables at: currentMorph)
	at: #startTime
	put: #CUnsignedLong -> 0.
(variables at: currentMorph)
	at: #interval
	put: #CLong -> currentMorph interval.
(variables at: currentMorph)
	at: #current
	put: #CLong -> 0.

"Then parse the method"
source := 'step
	{1} ifFalse: [^ self].
	{2} := {3} - (self currentTick - {4}).
	{2} < 0 ifTrue: [{2} := 0].
	{2} = 0
		ifTrue: [self stopCountdown. self action]'
	format: {
		self asLegalName: #isStarted.
		self asLegalName: #current.
		self asLegalName: #interval.
		self asLegalName: #startTime
		}.
newMethod := RBParser parseMethod: source.

"Finally replace the old method with the new one"
aMethodNode becomeForward: newMethod
