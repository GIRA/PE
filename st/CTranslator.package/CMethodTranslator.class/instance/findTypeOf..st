finding types
findTypeOf: node
	^ CTypeCollector findTypeOf: node in: class with: self kit