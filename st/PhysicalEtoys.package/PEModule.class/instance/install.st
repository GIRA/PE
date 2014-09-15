public
install
	[self extractAll;
		loadSourceFiles]
		on: Error
		do: [:err | 
			self error: ('An error occurred while installing module {1}'
				translated format: {self name}),
				String cr,
				err description]