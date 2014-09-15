private
checkForErrorsOn: errorsFile
	errorsFile contents
		ifNotEmpty: [:contents | 
			errorsFile close.
			^ CompilingSketchError signal: contents]
	