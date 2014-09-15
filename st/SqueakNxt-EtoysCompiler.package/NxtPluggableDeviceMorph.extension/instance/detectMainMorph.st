*squeaknxt-etoyscompiler
detectMainMorph
	"Looks for the brick in which it is connected and returns it"
	| ports |
	ports := #(#port1 #port2 #port3 #port4 #portA #portB #portC ).
	World allMorphsDo: [:morph |
		((morph isKindOf: LegoNxtMorph)
		and: [ports anySatisfy: [:port | (morph nxt perform: port) = device port]])
			ifTrue: [^ morph]].
	^ self error: 'The device is not plugged to any brick'