*squeaknxt-etoyscompiler
translateScriptNamed: scriptName of: aMorph
	"First asks the player translator to merge all the players into one
	NXProgram subclass. Then generates the nxc code"
	^ (self playerTranslator translateMainScript: scriptName of: aMorph)
			translatedToNxc: #main named: scriptName