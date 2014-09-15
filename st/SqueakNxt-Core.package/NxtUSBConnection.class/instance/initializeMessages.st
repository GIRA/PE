initialize-release
initializeMessages
	"We need to store the responses received so that the protocol can retrieve them later.
	To do it we use the messages dictionary. The reason it is a dictionary and not a simple
	collection is that we don't want to store useless stuff so if two messages of the same type
	arrive we just overwrite the old one and keep only the updated message."
	| protocol |
	protocol := DirectCommandProtocol.
	messages := Dictionary new
		at: protocol getInputValues put: (Array new: 4);
		at: protocol getBatteryLevel put: (Array new: 1);
		at: protocol lsGetStatus put: (Array new: 1);
		at: protocol lsRead put: (Array new: 1);
		yourself