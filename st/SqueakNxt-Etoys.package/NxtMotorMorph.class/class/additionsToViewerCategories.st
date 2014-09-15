as yet unclassified
additionsToViewerCategories
	^ #(
		#(#'lego nxt' #(
			#(#command #float 'Gradually reduces the power up to 0 from its current speed') 
			#(#command #brake 'Sets the power up to 0 immediately')  
			"#(#command #resetDegrees '')"
			#(slot #automaticBrake 'Sets the power to 0 automatically if it does not receive updated power values after a second' #Boolean #readWrite #Player #getAutomaticBrake #Player #setAutomaticBrake:) 
			#(#slot #power 'Lets you change the power of the motor' #Number #readWrite #Player #getPower #Player #setPower:) 
			"#(#slot #degrees '' #Number #readOnly #Player #getDegrees #unused #unused)"
		))

)
