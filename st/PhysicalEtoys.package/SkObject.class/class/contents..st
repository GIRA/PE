instance creation
contents: aBlock 
	| holder |
	holder _ self new.
	aBlock value: holder.
	^ holder