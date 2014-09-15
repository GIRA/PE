This class is responsible of visiting a parse node and return its declared type. For now, it checks the pragma declarations for return, arguments and temporary variables, and it sends the #instanceVariableTypes message for instance variables.
Eventually, we would like to automatically infer the types used, so that we won't need to statically type every variable. When that time comes, this would be the place to start.

You can ask for a node's class or type by sending either #findClassOf:in: or #findTypeOf:in:. In the latter case, it will return an instance of CType (or a subclass, depending on the chosen kit).

Example (1):
=======

CTypeCollector
	findTypeOf: (RBParser parseExpression: '3 + 4')
	in: CObject
	with: CKit 


Example (2):
=======

CTypeCollector
	findClassOf: (RBParser parseExpression: '5 isDivisibleBy: 2')
	in: CObject
	with: CKit 


Example (3):
=======

src := 'prueba
	<returnType: #(CLong)>
	^ 3 + 4'.

CTypeCollector
	findClassOf: (RBParser parseMethod: src)
	in: CObject
	with: CKit 
