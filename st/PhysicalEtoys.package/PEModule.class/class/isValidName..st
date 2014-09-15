testing
isValidName: aByteString 
	^ (FileDirectory extensionFor: aByteString) = self peModuleExtension