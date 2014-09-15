accessing
area
	^ model direction = #right
		ifTrue: [origin extent: self size + 1 @ 1]
		ifFalse: [model direction = #down
				ifTrue: [origin extent: 1 @ (self size + 1)]
				ifFalse: [model direction = #left
						ifTrue: [origin - (self size @ 0) corner: origin + 1]
						ifFalse: [origin - (0 @ self size) corner: origin + 1]]]