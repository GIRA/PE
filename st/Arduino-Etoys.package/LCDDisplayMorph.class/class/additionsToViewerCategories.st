accessing
additionsToViewerCategories
^ #(
(#lcddisplay (
#(slot text 'You can print text in your LCD Display' String readWrite Player getCharacters Player setCharacters: )
#(slot text 'You can print numbers in your LCD Display' Number readWrite Player getNumericValue Player setNumericValue: )
)))