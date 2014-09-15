instance creation
direction: direction size: aNumber 
	| card |
	card := self rule new.
	card direction: direction.
	card size: aNumber.
	^card