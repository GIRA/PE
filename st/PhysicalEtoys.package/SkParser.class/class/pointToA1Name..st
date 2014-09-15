support
pointToA1Name: aPoint 
	"(self new pointToA1Name: 1@1) = 'A1'  
	(self new pointToA1Name: 10@10) = 'J10'  
	(self new pointToA1Name: 100@100) = 'CV100'"
	| base i dest remain xPos |
	base _ 26.
	dest _ aPoint x.
	i _ 1.
	xPos _ (String
				streamContents: [:aStream | [dest > 0]
						whileTrue: [remain _ dest \\ (i * base).
							dest _ dest - remain.
							aStream
								nextPut: (Character value: 64 + (remain / i)).
							i _ i * base]]) reverse.
	^ xPos , aPoint y printString