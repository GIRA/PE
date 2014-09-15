slots-lcd
getNumericValue
^ [self getCharacters asNumber] on: Error do: [0.0]