accessing
frequencyOfScript: scriptName
	"To be in accordance with the script frequency property we enclose the script call in a #timesRepeat: message. How many times should we repeat the script?"
	^ (self currentPlayer scriptInstantiationForSelector: scriptName) frequency rounded asString
