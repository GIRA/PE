showing
showWhile: aBlock timeout: seconds
	| process progressMorph |
	progressMorph := self buildProgressMorph.
	progressMorph openInWorld.
	process := [seconds * 10
				timesRepeat: [(Delay forMilliseconds: 100) wait.
					progressMorph incrDone: 0.1 / seconds].
			progressMorph delete] fork.
	[Cursor wait showWhile: aBlock]
		on: Error
		do: [:err | 
			process terminate.
			progressMorph done: 1.
			(Delay forMilliseconds: 200) wait.
			progressMorph delete.
			err signal]. 
	process terminate.
	progressMorph done: 1.
	(Delay forMilliseconds: 200) wait.
	progressMorph delete