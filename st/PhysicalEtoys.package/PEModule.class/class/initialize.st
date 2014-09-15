class initialization
initialize
	"
	self initialize.
	"
	ExternalDropHandler
		registerHandler: (ExternalDropHandler
			type: nil
			extension: self peModuleExtension
			action: [:file || msg |
				msg := String streamContents: [:stream |
					stream
						nextPutAll: ('It seems you''re trying to install an external module named {1}'
							translated format: {file localName});
						cr;
						cr;
						nextPutAll: ('Please follow the instructions below:
1) Copy the file named {1} into the directory where you have Physical Etoys installed.
2) Close and restart Physical Etoys.
3) The module will be installed automatically.

Thanks for using Physical Etoys!' translated format: {file localName printString})].
				StringHolder new
					contents: msg;
					openLabel: 'How to install external modules' translated])