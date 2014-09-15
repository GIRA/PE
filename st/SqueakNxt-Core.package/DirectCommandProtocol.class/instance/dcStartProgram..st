direct commands
dcStartProgram: fileName
	"Program files end with .rxe"
	| msg |
	msg := {self class  startProgram} asByteArray ,
			fileName asByteArray, (ByteArray with: 0).
	self send: msg replySize: 0