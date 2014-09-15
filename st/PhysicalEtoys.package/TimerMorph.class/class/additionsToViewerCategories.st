as yet unclassified
additionsToViewerCategories
	^#((
		timer 
		(
			(slot interval 'The timer''s interval (in milliseconds)' Number readWrite Player getInterval Player setInterval:)
			(slot current 'The timer''s current value (in milliseconds)' Number readOnly Player getCurrent Player unused)
			"(command startCountdownFrom: 'Starts the timer''s countdown from the value given as a parameter (in milliseconds)' Number)"
			(command stopCountdown 'Stops the timer''s countdown')
			(command startCountdown 'Starts the timer''s countdown from its current value')
		)))
