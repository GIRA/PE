updating
safetyResolve
	[self resolve]
		ifError: [:err :rcvr | 
			self stopStepping.
			self error: err]