initialization
extent: aPoint
| newExtent |
newExtent := (aPoint x max: 126) @ (aPoint y max: 102).
scrollPane extent: newExtent.
fileList extent: newExtent.
super extent: newExtent
