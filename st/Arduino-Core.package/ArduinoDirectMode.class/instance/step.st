stepping
step
	[self processInput]
		on: Error
		do: [:err | 
			Transcript show: self asString , ': ' , err description; cr. 
			self initialize]