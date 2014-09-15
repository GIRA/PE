drawing
drawContents: aCanvas 
	| block |
	block _ [self model
				ifNil: [^ self].
			self visibleArea top
				to: self visibleArea bottom - 1
				do: [:row | self visibleArea left
						to: self visibleArea right - 1
						do: [:col | self drawCell: aCanvas at: col @ row]]].
	self isDebug
		ifTrue: [[block value]
				ifError: [:err :rcvr | rcvr]]
		ifFalse: [block value]