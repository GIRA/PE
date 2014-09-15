compiling
compileTempProgramSubclass
	| instVarNames instVarTypes |
	instVarNames := ''.
	instVarTypes := #().
	"First collect all variables"
	self
		variablesDo: [:varName :varTypeAndValue | 
			instVarNames := instVarNames, (self asLegalName: varName) , ' '.
			instVarTypes := instVarTypes, {self asValidType: varTypeAndValue key}].
	"Then create the class"
	self createTempProgramSubclassInstVarNames: instVarNames
		 instVarTypes: instVarTypes.
	"Finally compile all methods"
	methods
		do: [:each | self programClass compileSilently: each classified: #autogenerated]