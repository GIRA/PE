instance creation
name: aString contents: aBlock 
	| holder |
	holder _ self new name: aString.
	aBlock value: holder.
	^ holder