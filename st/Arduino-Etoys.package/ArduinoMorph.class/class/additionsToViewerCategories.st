viewer categories
additionsToViewerCategories
^ #(
(#'arduino - connection' (
#(slot arduinoMode 'Let''s you change programming mode. Options are:

* Direct: The script will be executed in the computer and the orders will be transferred to the board via a serial port. Requires a serial connection with the board in order to run.

* Compiled: The script will be compiled and run inside the board. No communication with the computer is used afterwards.

* Firmata: The same as direct mode but requires StandardFirmata installed in the board before connecting.' ArduinoMode readWrite Player getArduinoMode Player setArduinoMode:) "Only available if Arduino-EtoysCompiler is loaded"
#(command connect 'Connects this device' )
#(command disconnect 'Disconnects this device' )
#(slot isConnected 'Shows if the device is connected' Boolean readOnly Player getIsConnected Player unused )
#(slot portName 'Name of the OS port in which the device is connected' PEPort readWrite Player getPortName Player setPortName: )
#(slot arduinoType 'The Arduino type that is being used. Make sure to set this right, otherwise the compilation will fail.' ArduinoType readWrite Player getArduinoType Player setArduinoType: )
))

(#'arduino - digital pins mode' (

#(slot #'digitalPin 2Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin2Mode Player setDigitalPin2Mode:  )
#(slot #'digitalPin 3Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin3Mode Player setDigitalPin3Mode:  )
#(slot #'digitalPin 4Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin4Mode Player setDigitalPin4Mode:  )
#(slot #'digitalPin 5Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin5Mode Player setDigitalPin5Mode:  )
#(slot #'digitalPin 6Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin6Mode Player setDigitalPin6Mode:  )
#(slot #'digitalPin 7Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin7Mode Player setDigitalPin7Mode:  )
#(slot #'digitalPin 8Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin8Mode Player setDigitalPin8Mode:  )
#(slot #'digitalPin 9Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin9Mode Player setDigitalPin9Mode:  )
#(slot #'digitalPin 10Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin10Mode Player setDigitalPin10Mode:  )
#(slot #'digitalPin 11Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin11Mode Player setDigitalPin11Mode:  )
#(slot #'digitalPin 12Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin12Mode Player setDigitalPin12Mode:  )
#(slot #'digitalPin 13Mode' 'Indicates if the pin is in output/input mode' ArduinoPinMode readWrite Player getDigitalPin13Mode Player setDigitalPin13Mode:  )
))

(#'arduino - digital pins' (
#(slot #'digitalPin 10' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin10 Player setDigitalPin10: )
#(slot #'digitalPin 11' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin11 Player setDigitalPin11: )
#(slot #'digitalPin 12' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin12 Player setDigitalPin12: )
#(slot #'digitalPin 13' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin13 Player setDigitalPin13: )
#(slot #'digitalPin 2' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin2 Player setDigitalPin2: )
#(slot #'digitalPin 3' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin3 Player setDigitalPin3: )
#(slot #'digitalPin 4' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin4 Player setDigitalPin4: )
#(slot #'digitalPin 5' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin5 Player setDigitalPin5: )
#(slot #'digitalPin 6' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin6 Player setDigitalPin6: )
#(slot #'digitalPin 7' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin7 Player setDigitalPin7: )
#(slot #'digitalPin 8' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin8 Player setDigitalPin8: )
#(slot #'digitalPin 9' 'Accesses the current digital value of the pin' Boolean readWrite Player getDigitalPin9 Player setDigitalPin9: )
))

(#'arduino - analog pins' (
#(slot #'isAnalogPin 0Active' 'Indicates if the analog pin is active' Boolean readWrite Player getIsAnalogPin0Active Player setIsAnalogPin0Active: )
#(slot #'isAnalogPin 1Active' 'Indicates if the analog pin is active' Boolean readWrite Player getIsAnalogPin1Active Player setIsAnalogPin1Active: )
#(slot #'isAnalogPin 2Active' 'Indicates if the analog pin is active' Boolean readWrite Player getIsAnalogPin2Active Player setIsAnalogPin2Active: )
#(slot #'isAnalogPin 3Active' 'Indicates if the analog pin is active' Boolean readWrite Player getIsAnalogPin3Active Player setIsAnalogPin3Active: )
#(slot #'isAnalogPin 4Active' 'Indicates if the analog pin is active' Boolean readWrite Player getIsAnalogPin4Active Player setIsAnalogPin4Active: )
#(slot #'isAnalogPin 5Active' 'Indicates if the analog pin is active' Boolean readWrite Player getIsAnalogPin5Active Player setIsAnalogPin5Active: )

#(slot #'analogPin 0' 'Shows the raw value of the analog pin' Number readOnly Player getAnalogPin0 Player unused )
#(slot #'analogPin 1' 'Shows the raw value of the analog pin' Number readOnly Player getAnalogPin1 Player unused )
#(slot #'analogPin 2' 'Shows the raw value of the analog pin' Number readOnly Player getAnalogPin2 Player unused )
#(slot #'analogPin 3' 'Shows the raw value of the analog pin' Number readOnly Player getAnalogPin3 Player unused )
#(slot #'analogPin 4' 'Shows the raw value of the analog pin' Number readOnly Player getAnalogPin4 Player unused )
#(slot #'analogPin 5' 'Shows the raw value of the analog pin' Number readOnly Player getAnalogPin5 Player unused )
))

(#'arduino - timer'
(
(#slot currentTick 'Shows the timer''s value' Number readOnly Player getCurrentTick Player unused) 
(command resetTimer 'Resets the timer')
))

)