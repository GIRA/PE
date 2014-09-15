planning
dependMap
	"directory of (subject -> a set of observers)"
	| dep values |
	dep _ Dictionary new.
	"Make simple dictionary reverse of dependents #(observers  subject ..)"
	self collectDependents
		do: [:each | each allButFirst
				do: [:point | 
					values _ dep at: point ifAbsentPut: Set new.
					values add: each first]].
	dep keys
		do: [:key | self
				dependMap: key
				addKey: (dep at: key)
				dict: dep].
	^ dep