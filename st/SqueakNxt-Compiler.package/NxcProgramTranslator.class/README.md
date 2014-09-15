A NxcProgramTranslator is responsible for translating a subclass of NXProgram from smalltalk to Nxc. It's public protocol is very simple, just use #translate:asProgramNamed:, which returns an instance of NxcTranslatedProgram.
An even easier way of translating programs is sending #translatedToNxc to a NXProgram subclass. For example:

	FollowLineExample translatedToNxc.
	
You can also specify a different program name:

	FollowLineExample translatedToNxc: 'Other program name'.

The translation is done recursively, starting from the #main method and translating every method call found from there. For more information, see NxcMethodTranslator comment.


Instance Variables
	program:		<NxcTranslatedProgram>

program
	- The program being translated.
