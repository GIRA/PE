initializing
collectMorphs
	"Finds out which motor and sensor morphs are connected to the nxt brick.
	It's not the cleanest way of doing it but it works..."
	| nxt |
	super collectMorphs.
	nxt := mainMorph nxt.
	motors := Array new: 3.
	sensors := Array new: 4.
	World allMorphsDo: [:m |
		(m isKindOf: NxtPluggableDeviceMorph)
		ifTrue: [
			m device port caseOf: {
				[nxt portA] -> [motors at: 1 put: m].
				[nxt portB] -> [motors at: 2 put: m].
				[nxt portC] -> [motors at: 3 put: m].
				[nxt port1] -> [sensors at: 1 put: m].
				[nxt port2] -> [sensors at: 2 put: m].
				[nxt port3] -> [sensors at: 3 put: m].
				[nxt port4] -> [sensors at: 4 put: m].
			} otherwise: []
		]
	].