translating
withSource: aWriteStream do: aBlock
	"Replaces the source stream just for running the block, then it goes back to the old source.
	Very useful for CPrimitiveRule, which needs to translate just specific expressions without messing with already translated stuff"
	| oldSource |
	oldSource := source.
	source := aWriteStream.
	aBlock value.
	source := oldSource