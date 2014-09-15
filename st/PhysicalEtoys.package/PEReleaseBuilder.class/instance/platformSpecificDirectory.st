accessing
platformSpecificDirectory
	^ self rootDirectory
		directoryNamed: (SmalltalkImage current platformName
			caseOf: {
				['Win32'] -> ['win32'].
				['unix'] -> ['unix']
			} otherwise: [^ self error: 'Platform not supported'])