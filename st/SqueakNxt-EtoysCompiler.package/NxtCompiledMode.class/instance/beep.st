actions
beep
	"Temporary we use the direct command protocol just to make 
	a little beep showing the user that we connected succesfully."
	port ifNil: [^ self].
	"In unix the fantom driver doesn't work so we'll be better without
	beeping"
	SmalltalkImage current platformName = 'unix'
		ifTrue: [^ self].
	[DirectCommandProtocol new
		connectOnPort: port;
		beep;
		disconnect]
		on: Error
		do: ["If the direct command protocol couldn't do it, chances are 
			that I won't work. Just in case, disconnect"
			self disconnect]