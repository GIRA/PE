accessing
forThisPlatform
	^ SmalltalkImage current platformName caseOf: {
		['unix'] -> [HIDUnix].
		['Win32'] -> [HIDWin32]
	} otherwise: [self error: 'Platform not supported' translated]