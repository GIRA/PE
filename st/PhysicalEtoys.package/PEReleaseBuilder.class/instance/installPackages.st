installing
installPackages
	"Install latest version of all Physical Etoys packages"
	(Installer ss project: 'CTranslator')
		install: 'CTranslator-'.
	(Installer ss project: 'Arduino')
		install: 'Arduino-Core-';
		install: 'Arduino-Etoys-';
		install: 'Arduino-Compiler-';
		install: 'Arduino-EtoysCompiler-'.
	(Installer ss project: 'SqueakNxt')
		install: 'SqueakNxt-Core-';
		install: 'SqueakNxt-Etoys-';
		install: 'SqueakNxt-Compiler-';
		install: 'SqueakNxt-EtoysCompiler-'.
	(Installer ss project: 'DuinoBot')
		install: 'DuinoBot-Core-';
		install: 'DuinoBot-Etoys-';
		install: 'DuinoBot-Compiler-';
		install: 'DuinoBot-EtoysCompiler-'