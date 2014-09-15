initialize-release
moveToOld: dest 
	"It makes a very simple animation of the device moving to the destination (for esthetic purposes)"
	| opuesto adyacente pasosOpuesto pasosAdyacente x y diff maxPasos |
	x := self center x.
	y := self center y.
	diff := self center - dest.
	opuesto := diff y abs.
	adyacente := diff x abs.
	maxPasos := 10.
	pasosOpuesto := opuesto / maxPasos * diff y sign.
	pasosAdyacente := adyacente / maxPasos * diff x sign.
	[maxPasos
		timesRepeat: [x := x - pasosAdyacente.
			y := y - pasosOpuesto.
			self center: x rounded @ y rounded.
			(Delay forMilliseconds: 1) wait]]
		forkNamed: self class asString, ' moveTo: ' , dest asString