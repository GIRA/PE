receiving
processInputOn: data 
	| commandType commandHeader commandSize |
	data isEmpty
		ifTrue: [^ self].
	commandSize := data first.
	data size < (commandSize + 2)
		ifTrue: [^ self].
	commandType := data third.
	commandType = self class replyTelegram
		ifTrue: [
			"commandStatus := data fifth.
			commandStatus = 0 ifFalse: [(NxtError code: commandStatus) signal]."
			commandHeader := data fourth.
			commandHeader caseOf: {
				[self class getInputValues] -> [self parseGetInputValuesOn: data].
				[self class getBatteryLevel] -> [self parseGetBatteryLevelOn: data].
				[self class keepAlive] -> [self parseKeepAliveOn: data].
				[self class lsGetStatus] -> [self parseLsGetStatusOn: data].
				[self class lsRead] -> [self parseLsReadOn: data]}
				 otherwise: []].
	data size > (commandSize + 2)
		ifTrue: [self
				processInputOn: (data allButFirst: commandSize + 2)]