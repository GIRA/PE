finding types
findClassOf: node
	^ CTypeCollector findClassOf: node in: class with: self kit