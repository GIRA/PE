planning
collectCardDependents: depArray 
	"Answer  
	#((observer subject subject ..) .."
	"This is ugly code because using Array. We should use Dictionary by  
	building plan"
	| dict |
	dict _ Dictionary new.
	depArray
		do: [:each | dict at: each first put: each allButFirst asSet].
	(self cardPositions
		select: [:each | (map at: each) contents isInstance])
		do: [:each | ((map at: each) contents collectDependentsForCard: each)
				ifNotNilDo: [:depends | depends
						keysAndValuesDo: [:key :value | (dict at: key ifAbsentPut: Set new)
								addAll: value]]].
	^ self dictToArray: dict