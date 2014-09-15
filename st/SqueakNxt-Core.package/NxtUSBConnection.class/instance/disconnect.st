connection
disconnect
	[Fantom apiDestroyNxt: nxt status: status]
		ensure: [nxt := status := nil.
			self initializeMessages]
