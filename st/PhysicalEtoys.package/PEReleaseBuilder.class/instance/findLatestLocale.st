releasing
findLatestLocale
	"Looks for the latest version of the locale directory by applying a regex
	to the html page listing all the files.
	This would work as long as the server which hosts the files will keep 
	returning the same page"
	| locales |
	locales := Array streamContents: [:stream |
		(HTTPClient httpGet: self localesUrl)
		contents
			regex: '"locale.[[:digit:]]+.zip"'
			matchesDo: [:match | stream nextPut: match withoutQuoting]].
	locales ifEmpty: [^ self error: 'No locale found'].
	^ self localesUrl , '/', locales asSortedCollection last
