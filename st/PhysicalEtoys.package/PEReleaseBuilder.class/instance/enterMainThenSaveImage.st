releasing
enterMainThenSaveImage
	"We need to perform these two actions in the same step because once we enter
	the main project this process will be terminated"
	| main |
	main := Project named: self mainName.
	WorldState addDeferredUIMessage: [
		"A delay to make sure we save the image inside the main project"
		2 seconds asDelay wait. 
		"Set main project as top project"
		main setParent: main.
		"Save and quit"
		SmalltalkImage current snapshot: true andQuit: true].
	main enter.