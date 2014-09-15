stepping
controlOrientation
	"This checks the position of the morph on the screen in relation with 
	the nxt brick and it flips the morph if necessary (for esthetic purposes)"
	connector isNil
		ifTrue: [^ self].
	connector sourceMorph isNil
		ifTrue: [^ self].
	(self center x < (connector sourceMorph center x - 50)
	and: [self image ~= self class flippedForm])
		ifTrue: [self image: self class flippedForm.
			attachmentPoint center: self center  + self attachmentPointFlippedCenter].
	(self center x > (connector sourceMorph center x + 50)
	and: [self image ~= self class form])
		ifTrue: [self image: self class form.
			attachmentPoint center: self center + self attachmentPointCenter]