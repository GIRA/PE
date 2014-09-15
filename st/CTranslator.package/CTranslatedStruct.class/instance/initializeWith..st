initialize-release
initializeWith: aClass
	self initialize.
	ownerClass := aClass.
	variables := Set new.
	methods := Set new.