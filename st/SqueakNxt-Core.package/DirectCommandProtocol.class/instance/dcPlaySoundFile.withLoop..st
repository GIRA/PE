direct commands
dcPlaySoundFile: fileName withLoop: bool
	"Sound files end with .rso"
	| msg |
	msg := {self class  playSoundFile.
			bool ifTrue: [1] ifFalse: [0]
			} asByteArray,
			fileName asByteArray, (ByteArray with: 0).
	self send: msg replySize: 0