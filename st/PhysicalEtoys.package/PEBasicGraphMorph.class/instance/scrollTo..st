scrolling
scrollTo: n
	| intervals selectedInterval |
	(isGraphing or: [points isEmpty]) ifTrue: [^ self].
	intervals := OrderedCollection new.
	points first x to: points last x - 2000 by: 100 do: [:each |
		intervals add: {each. each + 2000}].
	selectedInterval := intervals at: intervals size - 1 * n + 1 ifAbsent: [^ self].
	cartesianBounds := (selectedInterval first  @ self minVal corner: selectedInterval second @ self maxVal).
	self changed