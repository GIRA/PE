message sending
send: directCommand replySize: replySize
	self controlConnection.
	[connection send: directCommand replySize: replySize]
		on: NotConnectedLego
		do: [:ign |
			"An error occurred. Just in case, disconnect"
			self privateDisconnect]