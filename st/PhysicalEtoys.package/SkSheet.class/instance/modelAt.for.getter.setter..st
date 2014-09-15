accessing
modelAt: aPoint for: anObject getter: getter setter: setter 
	self
		textAt: aPoint
		put: (anObject perform: getter).
	(self cellAt: aPoint)
		on: anObject
		getter: getter
		setter: setter.
