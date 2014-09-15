initialize
extent: aPoint
| newExtent |
newExtent := (aPoint x max: 126) @ (aPoint y max: 102).
scrollPane extent: newExtent.
super extent: newExtent
