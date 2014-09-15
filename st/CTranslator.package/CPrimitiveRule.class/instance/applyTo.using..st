applying
applyTo: aMessageNode using: aCMethodTranslator 
	"Visits the message node receiver and arguments and replaces the '{n}' in the string with the result ({0} represents the receiver). It reinitializes the source stream for every node so that we only get the result of visiting that node"
	^ self format: ({aMessageNode receiver}, aMessageNode arguments
		collectWithIndex: [:node :index | 
		(String streamContents: [:stream | 
				aCMethodTranslator withSource: stream do: [aCMethodTranslator visitNode: node].
				self removeSemicolonIfNecessaryOn: stream for: index - 1])])