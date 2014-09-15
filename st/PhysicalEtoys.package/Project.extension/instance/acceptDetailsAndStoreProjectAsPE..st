*physicaletoys
acceptDetailsAndStoreProjectAsPE: details
	"The user having hit the ok button in the dialog, send the details back to the project, store the project on the server, "

	self acceptProjectDetails: details.

	self isCurrentProject
		ifTrue:
			["exit, then do the command"
			self
				armsLengthCommand: #storeOnServerAsPEAssumingNameValid
				withDescription: 'Publishing' translated]
		ifFalse:
			[self storeOnServerAsPEWithProgressInfo]