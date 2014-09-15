as yet unclassified
main
	(5 isDivisibleBy: 2)
		ifTrue: [self displayText: 'True' x: 0 y: 0].
	6 \\ 2 = 0 ifTrue: [self wait: 500].

	self clearScreen.
	self displayNumber: 1092 rounded x: 0 y: 0;
		 displayNumber: 1092.015 rounded x: 0 y: 0;
		 displayNumber: 1092 rounded x: 0 y: 0.
	self wait: 2000.

	self clearScreen.
	self displayNumber: 90.0 sin x: 0 y: 0.
	self wait: 2000.