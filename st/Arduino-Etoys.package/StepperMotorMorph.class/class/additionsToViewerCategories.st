viewer categories
additionsToViewerCategories
^ #(
(#'stepper' (
#(slot direction 'You can change the direction of the motor' StepperDirection readWrite Player getDirection Player setDirection:  )
#(slot stepperMode 'You can set the step mode of the motor' StepperMode readWrite Player getStepperMode Player setStepperMode:  )
#(slot stepTime 'You can set the step time of the motor' Number readWrite Player getStepTime Player setStepTime:  )
#(slot isStepping 'Indicates if the motor is stepping' Boolean readOnly Player getIsStepping Player unused  )

#(command startStepping 'Starts the motor' )
#(command stopStepping 'Stops the motor' )
#(command doOneStep 'The motor will perform one step' )

)))