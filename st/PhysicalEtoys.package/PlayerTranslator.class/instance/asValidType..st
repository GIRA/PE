converting
asValidType: aSymbol
	^ aSymbol caseOf: {
		[#Number] -> [#CLong].
		[#Boolean] -> [#CBoolean].
		[#String] -> [#CString]
		} otherwise: [aSymbol]