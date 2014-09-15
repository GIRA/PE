drag and drop
acceptRuleMorph: aMorph event: evt 
	| cellPos card |
	model parent adopt: aMorph model rule.
	cellPos _ (self screenToCell: aMorph topLeft)
				+ (aMorph cellOrigin - aMorph area topLeft).
	self model textAt: cellPos put: '=' , aMorph model codeString.
	card _ self
				cardMorphAt: cellPos
				ifAbsent: [^ false].
	card model rule = aMorph model rule
		ifFalse: ["maybe successed"
			^ false].
	aMorph halo
		ifNotNilDo: [:halo | halo setTarget: card].
	^ true