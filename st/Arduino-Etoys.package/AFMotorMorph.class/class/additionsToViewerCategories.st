viewer categories
additionsToViewerCategories
	^ #(
	(#dcmotor (
	#(#slot state 'State of the DC motor: stopped or running' #MotorState #readWrite #Player #getState #Player #setState:)
	#(#slot motorDirection 'Rotation direction DC motor: forward or backward' #MotorDirection #readWrite #Player #getMotorDirection #Player #setMotorDirection:)
	#(#slot speed 'Speed of the DC motor, from 0% to 100%' #Number #readWrite #Player #getSpeed #Player #setSpeed:)

)) )