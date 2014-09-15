message sending
send: command replySize: replySize
	| reply replyExpected header |
	replyExpected := replySize > 0.
	reply := replyExpected ifTrue: [ByteArray new: replySize] ifFalse: [nil].
	Fantom
		apiSendDirectCommand: nxt
		requireResponse: (replyExpected ifTrue: [1] ifFalse: [0])
		commandBuffer: command
		commandBufferSize: command size
		responseBuffer: reply
		responseBufferSize: replySize
		status: status.

	"If the command fails for some reason, it probably means the lego got disconnected
	The safest thing to do is raise the NotConnectedLego exception and let the sender
	(usually a NxtProtocol) disconnect itself."
	status isSuccess ifFalse: [NotConnectedLego signal].

	replyExpected ifFalse: [^ self].
	header := {reply size + 1.
				0.
				DirectCommandProtocol replyTelegram} asByteArray.
	self storeMessage: header, reply