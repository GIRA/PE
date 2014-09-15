class initialization
installSound
	| sounds |
	sounds _ self class organization listAtCategoryNamed: #'sound library'.
	sounds
		do: [:each | self perform: each]