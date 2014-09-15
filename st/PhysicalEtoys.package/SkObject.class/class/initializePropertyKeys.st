class initialization
initializePropertyKeys
	| library |
	library _ self root at: 'Library'.
	library at: 'PropertyKeys' put: {'CellExtent'} asSet