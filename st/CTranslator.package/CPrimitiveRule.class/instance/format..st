applying
format: aCollection
	"Zero based. It goes through value increasing by 1 the enclosed expressions and then it sends regular #format:"
	| oldStream newStream last next |
	oldStream := value readStream.
	newStream := WriteStream on: ''.
	[oldStream atEnd]
		whileFalse: [
		last := next.
		next := oldStream next.
		newStream nextPut: next.
		(next = ${ and: [last ~= $\])
			ifTrue: [| n | "We found an enclosed expression"
			n := oldStream upTo: $}.
			newStream nextPutAll: (n asNumber + 1) asString, '}'.
			]
	].
	^ newStream contents format: aCollection
	