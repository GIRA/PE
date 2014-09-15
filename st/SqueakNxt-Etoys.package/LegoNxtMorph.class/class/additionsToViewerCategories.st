as yet unclassified
additionsToViewerCategories
^  #(

		#(#'lego nxt - connection' 
		#(
			#(slot nxtMode 'Let''s you change programming mode. Options are:

* Direct: The script will be executed in the computer and the orders will be transferred to the robot via direct commands. Requires a connection with the robot in order to run.

* Compiled: The script will be compiled and run inside the robot. No communication with the computer is used afterwards.' NxtMode readWrite Player getNxtMode Player setNxtMode:) "Only available if SqueakNxt-EtoysCompiler is loaded"
			#(command connect 'Connects this device' )
			#(command disconnect 'Disconnects this device' )
			#(slot isConnected 'Shows if the device is connected' Boolean readOnly Player getIsConnected Player unused )
			#(slot nxtPort 'Let''s you select the port in which to connect the robot' PENxtPort readWrite Player getNxtPort Player setNxtPort: ) 
		))
		#(#'lego nxt - display' 
		#(
			#(#slot displayX 'Let''s you change the x coordinate in which to write in the display (only available in compiled mode)' Number readWrite Player getDisplayX Player setDisplayX:) 
			#(#slot displayY 'Let''s you change the y coordinate in which to write in the display (only available in compiled mode)' Number readWrite Player getDisplayY Player setDisplayY:) 
			#(#command #displayText: 'Let''s you write text in the display (only available in compiled mode)' String) 
			#(#command #displayNumber: 'Let''s you write a number in the display (only available in compiled mode)' Number) 
			#(#command #resetScreen 'Resets the screen (only available in compiled mode)') 
			#(#command #clearScreen 'Clears the screen (only available in compiled mode)')
		))
		#(#'lego nxt - other stuff' 
		#(
			#(#command #startProgram: 'Starts a program' #String) 
			#(#command #stopProgram 'Stops the running program')
		))
		#(#'lego nxt - sound' 
		#(
			#(#slot volume 'Let''s you change the sound''s volume' Number readWrite Player getVolume Player setVolume:) 
			#(#slot duration 'Let''s you change the sound''s duration' Number readWrite Player getDuration Player setDuration:) 
			#(#command #playTone: 'Plays the given tone' Number) 
			#(#command #playNote: 'Plays the given note' PENote) 
			#(#command #playSoundFile: 'Plays a sound file' String) 
			#(#command #stopPlaying 'Stops the current sound')
		))
		"#(#'lego nxt - send/receive' 
		#(
			#(#slot connection '' Number readWrite Player getConnection Player setConnection:) 
			#(#slot mailBox '' Number readWrite Player getMailBox Player setMailBox:) 
			#(#slot msgText '' String readWrite Player getMsgText Player setMsgText:) 
			#(#slot msgNumber '' Number readWrite Player getMsgNumber Player setMsgNumber:) 
			#(#slot msgBoolean '' Boolean readWrite Player getMsgBoolean Player setMsgBoolean:) 
		))"
		#(#'lego nxt - buttons' 
		#(
			#(#slot isPressedEnter 'Shows if the Enter button is currently pressed (only available in compiled mode)' Boolean readOnly Player getIsPressedEnter Player unused) 
			#(#slot isPressedLeft 'Shows if the Left button is currently pressed (only available in compiled mode)' Boolean readOnly Player getIsPressedLeft Player unused) 
			#(#slot isPressedRight 'Shows if the Right button is currently pressed (only available in compiled mode)' Boolean readOnly Player getIsPressedRight Player unused) 
		))
		#(#'lego nxt - timer' 
		#(
			#(#slot currentTick 'Shows the timer''s value' Number readOnly Player getCurrentTick Player unused) 
			#(command resetTimer 'Resets the timer')
		))
)


