message sending
send: directCommand replySize: replySize
	| header |
	header := ByteArray newFrom: {
				directCommand size + 1.
				0.
				replySize > 0
					ifTrue: [DirectCommandProtocol directCommandTelegramResponseRequired]
					ifFalse: [DirectCommandProtocol directCommandTelegramNoResponse]}.
	(port nextPutAll: header , directCommand) < 0
		ifTrue: [
			"An error occurred. Most probably, the Lego got disconnected"
			NotConnectedLego signal]