initialize-release
updatePosition
	(Flaps globalFlapTab: 'Physical Etoys')
		ifNil: [self delete]
		ifNotNil: [:flap |
			self center: World center;
				bottom: flap top]