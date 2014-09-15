planning
sortBlock
	^ [:a :b | a y < b y
		or: [a y == b y
				and: [a x <= b x]]]