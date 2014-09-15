instance creation
fromMorph: aMorph toMorph: anotherMorph
	^( (super
		fromMorph: aMorph
		toMorph: anotherMorph
		) ) startControllingConnections