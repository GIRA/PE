event handling
mouseEnter: evt forMorph: aMorph 
form := self class form deepCopy reverse.
self changed