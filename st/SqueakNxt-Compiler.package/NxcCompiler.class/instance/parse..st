private
parse: errorsFile
"Returns a collection with all the errors founded by the nbc compiler. The errorsFile format is similar to this:

# Error: Unknown or invalid statement
File ""D:\RICHI\Squeak images\Nxt\simpleprogram.nbc"" ; line 7
#   result sbyt
#----------------------------------------------------------
1 error during compilation
"
| errors errStream |
errors := OrderedCollection new.
errStream := errorsFile contents withSqueakLineEndings readStream.
[errStream peek = $#] 
	whileTrue: [ | errorDescription errorPosition errorSource |
		errorDescription := errStream nextLine allButFirst: 2.
		errorPosition := (errStream nextLine subStrings: {$;}) last withBlanksTrimmed.
		errorSource := errStream nextLine allButFirst: 4.
		errStream nextLine.
		errors add: (NxcError description: errorDescription position: errorPosition source: errorSource).
		].
^errors asArray