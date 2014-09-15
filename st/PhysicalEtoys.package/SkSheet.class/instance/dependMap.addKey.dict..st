planning
dependMap: target addKey: addKey dict: dict 
	| founds more |
	founds _ Set with: target.
	founds
		addAll: (dict at: target).
	more _ Set new.
	addKey
		do: [:key | more
				addAll: ((dict
						at: key
						ifAbsent: [#()])
						select: [:value | (founds includes: value) not])].
	more isEmpty
		ifTrue: [^ self].
	(dict at: target)
		addAll: more.
	self
		dependMap: target
		addKey: more
		dict: dict