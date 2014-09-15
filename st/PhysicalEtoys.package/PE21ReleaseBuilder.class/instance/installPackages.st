as yet unclassified
installPackages
	"Install the exact version of all Physical Etoys packages
	for Physical Etoys 2.1 release"
	(Installer ss project: 'CTranslator')
		install: 'CTranslator-Richo.62'.
	(Installer ss project: 'Arduino')
		install: 'Arduino-Core-Richo.46';
		install: 'Arduino-Etoys-Richo.67';
		install: 'Arduino-Compiler-Richo.61';
		install: 'Arduino-EtoysCompiler-Richo.38'.
	(Installer ss project: 'SqueakNxt')
		install: 'SqueakNxt-Core-Richo.21';
		install: 'SqueakNxt-Etoys-Richo.42';
		install: 'SqueakNxt-Compiler-Richo.77';
		install: 'SqueakNxt-EtoysCompiler-Richo.69'.
	(Installer ss project: 'DuinoBot')
		install: 'DuinoBot-Core-Richo.25';
		install: 'DuinoBot-Etoys-Richo.19';
		install: 'DuinoBot-Compiler-Richo.12';
		install: 'DuinoBot-EtoysCompiler-Richo.14'