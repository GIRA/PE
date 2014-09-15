*PhysicalEtoys-skeleton-base-arrow
arrowTargets
	| player friends |
	player _ self player
				ifNil: [^ #()].
	friends _ OrderedCollection new.
	player class allInstVarNames
		withIndexDo: [:name :index | ((#(#dependents #costume #costume ) includes: name) not
					and: [(player instVarAt: index)
							isKindOf: Player])
				ifTrue: [friends add: name
							-> (player instVarAt: index)]].
	^ friends