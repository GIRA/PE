formatting
format: aStreamOrString
	| result preformatted condensed indented |
	"First condense blanks"
	condensed := self condenseBlanks: aStreamOrString readStream.
	"Add new lines before and after curly brackets (if necessary)"
	preformatted := self assureNewLinesWhenNecessary: condensed readStream.
	"Add indentation"
	indented := self indent: preformatted readStream.
	"Clean up posible extra semicolons"
	result := self removeExtraSemicolons: indented readStream.
	^ result
