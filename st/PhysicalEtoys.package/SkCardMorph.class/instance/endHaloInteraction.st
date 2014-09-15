event handling
endHaloInteraction
	self isOnHolder
		ifFalse: [^ self].
	holder model textAt: self cellOrigin put: '=' , model codeString.
	self halo
		ifNotNilDo: [:halo | 
			halo
				setTarget: (holder
						cardMorphAt: self cellOrigin
						ifAbsent: []).
			self delete]