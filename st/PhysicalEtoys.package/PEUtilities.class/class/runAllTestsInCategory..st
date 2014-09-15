sunit
runAllTestsInCategory: aCategoryName
"Finds all the TestCase subclasses inside the given category and runs all tests. Returns an array of associations where the key is the class and the value is the test results"
^ (SystemOrganization listAtCategoryNamed: aCategoryName) 
	collect: [:className | | class |
		class := Smalltalk at: className.
		(class inheritsFrom: TestCase) 
			ifTrue: [class -> class suite run]]
	thenSelect: [:each | each notNil]