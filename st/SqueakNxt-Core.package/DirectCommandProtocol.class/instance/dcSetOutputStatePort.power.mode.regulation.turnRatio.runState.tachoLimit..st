direct commands
dcSetOutputStatePort: outputPort power: power mode: mode regulation: regulation turnRatio: turnRatio runState: runState tachoLimit: tachoLimit
	| msg limit tach1 tach2 tach3 tach4 tach5 |
	limit := tachoLimit.
	tach1 := limit // 4294967296.
	limit := limit \\ 4294967296.
	tach2 := limit // 16777216.
	limit := limit \\ 16777216.
	tach3 := limit // 65536.
	limit := limit \\ 65536.
	tach4 := limit // 256.
	tach5 := limit \\ 256.
	msg := {self class setOutputState.
			outputPort.
			(power >= 0 ifTrue: [power] ifFalse: [256 + power]).
			mode.
			regulation.
			(turnRatio >= 0 ifTrue: [turnRatio] ifFalse: [256 + power]).
			runState.
			tach1.
			tach2.
			tach3.
			tach4.
			tach5
			} asByteArray.

	self send: msg replySize: 0