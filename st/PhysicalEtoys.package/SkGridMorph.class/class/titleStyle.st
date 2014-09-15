constant
titleStyle
	#(#NewYork #Accujen )
		do: [:fontName | (TextStyle named: fontName)
				ifNotNilDo: [:style | ^ style fontOfPointSize: 24]].
	Error signal: 'Font not found'