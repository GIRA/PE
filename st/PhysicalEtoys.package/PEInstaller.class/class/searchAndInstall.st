system startup
searchAndInstall
	"Search the current directory for physical etoys modules and install them"
	| modules |
	modules := self searchForModules.
	modules isEmpty ifTrue: [^ self].
	[modules do: [:module |
		module install.
		self inform: ('Module {1} was successfully installed'
			translated format: {module name})]]
		on: Error do: [:err |
			"Roll back all modules, inform the user and quit"
			modules do: [:module | [module rollBack] on: Error do: ["Nothing"]].
			self inform: err description.
			SmalltalkImage current quitPrimitive].
	modules do: [:module | 
		self register: module name.
		module close].
	"Only save the image after installing all modules"
	WorldState addDeferredUIMessage: [
		PESupplies makeFlap.
		SmalltalkImage current saveSession]
