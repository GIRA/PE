updating
resolveOn: holder 
	"Aplly all constrains to cells in holder"
	| updates |
	dependMap
		ifNil: [^ self].
	updates _ Set new
				addAll: (self updatedCellsOn: holder);
				
				addAll: (self updatedCellsInCardOn: holder);
				 yourself.
	plan
		do: [:pair | (updates includes: pair key)
				ifTrue: [pair value resolveOn: holder at: pair key]].
	self rememberUpdatesOn: holder.
"
	updates isEmpty not
		ifTrue: [Transcript show: updates asString;
				 cr]
"