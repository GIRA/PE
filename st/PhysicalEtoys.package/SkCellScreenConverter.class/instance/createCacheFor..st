private
createCacheFor: aRectangle 
	"xCache = #{{left. right}. {left. right}. ...}"
	| first last screenOffset |
	offset _ aRectangle topLeft - cellTopLeft.
	screenOffset _ self createOffset: offset.
	xCache _ Array new: aRectangle width.
	first _ screenOffset x + border.
	aRectangle left
		to: aRectangle right - 1
		do: [:i | 
			last _ first + (grid
							cellExtentAt: (grid globalToLocal: i @ 0)) x.
			xCache at: i - aRectangle left + 1 put: {first. last}.
			first _ last + border].
	yCache _ Array new: aRectangle height.
	first _ screenOffset y + border.
	aRectangle top
		to: aRectangle bottom - 1
		do: [:i | 
			last _ first + (grid
							cellExtentAt: (grid globalToLocal: 0 @ i)) y.
			yCache at: i - aRectangle top + 1 put: {first. last}.
			first _ last + border]