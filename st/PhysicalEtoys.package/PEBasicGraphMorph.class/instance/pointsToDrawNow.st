drawing
pointsToDrawNow
	"The logic is a little complicated because this method will be evaluated for every drawing so it *must* be fast and I didn't wanted to iterate the points collection more than once. The first time I found a point between the left and right bounds I also add the previous and the last time I found one I also add the next, so that the graph drawing always reaches the bounds"
	| pointsToDraw firstFound lastFound left right |
	pointsToDraw := OrderedCollection new.
	firstFound := lastFound := false.
	left := cartesianBounds left.
	right := cartesianBounds right.
	1 to: points size do: [:index || point |
		point := points at: index.
		(point x >= left and: [point x <= right])
			ifTrue: [
				firstFound ifFalse: [
					(points at: index - 1 ifAbsent: nil)
					ifNotNil: [:p | firstFound := true.
						pointsToDraw addLast: p]].
				pointsToDraw addLast: point]
			ifFalse: [
				(firstFound and: [lastFound not])
					ifTrue: [lastFound := true.
						pointsToDraw addLast: point]]].
	^ pointsToDraw