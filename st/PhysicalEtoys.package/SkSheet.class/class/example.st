examples
example
	"self example"
	| sheet p1 p2 |
	ActiveWorld setProperty: #originAtCenter toValue: true.
	sheet _ SkSheet new.
	p1 _ (SkeletonBaseInfo point color: Color blue) openInWorld assuredPlayer.
	p2 _ (SkeletonBaseInfo point color: Color red) openInWorld assuredPlayer.
	sheet
		modelAt: 1 @ 1
		for: p1
		getter: #getX
		setter: #setX:.
	sheet
		modelAt: 2 @ 1
		for: p1
		getter: #getY
		setter: #setY:.
	sheet
		modelAt: 1 @ 2
		for: p2
		getter: #getX
		setter: #setX:.
	sheet
		modelAt: 2 @ 2
		for: p2
		getter: #getY
		setter: #setY:.
	sheet textAt: 1 @ 1 put: '=( 4 * A2 ) degreeSin * 200'.
	sheet textAt: 2 @ 1 put: '=( 7 * A2 ) degreeSin * 200'.
	p1 setPenDown: true.
	p1
		setPenColor: (TranslucentColor
				r: 1.0
				g: 0.0
				b: 0.0
				alpha: 0.1).
	p1 setPenSize: 3.
	p2 setX: 0;
		 setY: 0.
	sheet grid openInWorld