I represent the Arduino board. I have a collection of pins and a protocol (i.e. Firmata). 
Below you will find a code example using the Firmata protocol:

---------------------------------------------------------------------------------------
| arduino digitalPin analogPin led button ldr servo |

"Connection"
arduino := Arduino on: Firmata new.
arduino connectOnPort: 'COM5'.
arduino isConnected.
arduino disconnect. "Don't forget to disconnect me after finish using me"

"Digital pins - output"
digitalPin := arduino digitalPin: 4.
digitalPin setOutput.
digitalPin value: 1.

"Digital pins - input"
arduino activateDigitalReports.
digitalPin setInput.
digitalPin value.

"Analog pins (analog pins are input only)"
analogPin := arduino analogPin: 0.
analogPin activate.
analogPin value.

"To avoid configuring pins, you can also attach/detach devices:"

"Led (digital output)"
led := LightEmittingDiode new.
led attach: (arduino digitalPin: 13).
led value: 1.
led value: 0.

"Button (digital input)"
button := EButton new.
button attach: (arduino digitalPin: 2).
button value.

"Ldr (analog input)"
ldr := Photoresistor new.
ldr attach: (arduino analogPin: 5).
ldr value.

"Servo (currently servos can only be attached to pins 9-10)"
servo := Servo new.
servo attach: (arduino digitalPin: 9).
servo angle: 0.
servo angle: 90.
servo angle: 180.

"To see the current list of available devices evaluate:"
AttachableDevice allSubclasses