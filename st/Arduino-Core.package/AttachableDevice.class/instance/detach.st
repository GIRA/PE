attaching
detach
	self controlAttaching.
	[self deleteConfiguration] on: Error do: ["The port may be disconnected"].
	pins := nil