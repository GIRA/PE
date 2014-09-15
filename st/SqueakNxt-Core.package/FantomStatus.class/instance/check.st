error control
check
	"It raises an error if the value is not #Success"
	self isSuccess ifFalse: [FantomError signal: self description]