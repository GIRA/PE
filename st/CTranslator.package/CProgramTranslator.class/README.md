A CProgramTranslator is responsible for translating subclasses of CProgram from smalltalk to C. It's public protocol is very simple, just use #translate:of:asProgramNamed:, which returns an instance of CTranslatedProgram.
An even easier way of translating programs is sending #translatedToC to a CProgram subclass. For example:

	CHelloWorld translatedToC: #main.
	
You can also specify a different program name:

	CHelloWorld translatedToC: #main named: 'Other program name'.

The translation is done recursively, starting from the #main method and translating every method call found from there. For more information, see CMethodTranslator comment.


Instance Variables
	program:		<CTranslatedProgram>

program
	- The program being translated.
