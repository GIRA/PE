*PhysicalEtoys-FFI
externalCallFailed
	"Raise an error after a failed call to an external function"
	| errCode |
	"Reimplemented in PhysicalEtoys due to a difference in FFI 
	version and Kernel. This should be temporary, though, because
	it's dangerous to change the FFI version we're using. But once 
	we pass the 'Conectar Igualdad' deadline, this should be revised"
	self flag: #Richo.
	errCode := ExternalFunction getLastError. "this allows us to look at the actual error code"
	^self error: (ExternalFunction errorMessageFor: errCode).