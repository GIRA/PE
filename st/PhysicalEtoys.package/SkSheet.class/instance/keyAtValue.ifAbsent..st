structure
keyAtValue: value ifAbsent: aBlock 
	"Answer only named key"
	map
		associationsDo: [:association | (value == association value contents
					and: [association key class ~= Point])
				ifTrue: [^ association key]].
	^ aBlock value