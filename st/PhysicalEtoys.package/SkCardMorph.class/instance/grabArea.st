accessing
grabArea
	| width inset base |
	width _ 16.
	inset _ 3.
	base _ self cellToScreenRect: self cellOrigin.
	^ model direction = #right
		ifTrue: [(base topLeft corner: base left + width @ base bottom)
				insetBy: inset]
		ifFalse: [model direction = #down
				ifTrue: [(base topLeft corner: base right @ (base top + width))
						insetBy: inset]
				ifFalse: [model direction = #left
						ifTrue: [(base right - width @ base top corner: base bottomRight)
								insetBy: inset]
						ifFalse: [(base left @ (base bottom - width) corner: base bottomRight)
								insetBy: inset]]]