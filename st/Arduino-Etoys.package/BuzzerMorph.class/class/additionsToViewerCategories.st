viewer categories
additionsToViewerCategories
^ #(
(#'buzzer' (
"#(slot buzzerValue 'Shows the raw value of the buzzer' Number readWrite Player getBuzzerValue Player setBuzzerValue:  )"
	#(#slot duration 'Let''s you change the sound''s duration' Number readWrite Player getDuration Player setDuration:) 
	#(#command #playTone: 'Plays the given tone' Number) 
	#(#command #playNote: 'Plays the given note' PENote) 
))

)