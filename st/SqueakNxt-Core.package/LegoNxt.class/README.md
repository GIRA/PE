I represent a Lego Mindstorms Nxt robot.
Below you'll find an example code:
---------------------------------------------------------------------------------------
| nxt motor sensor |
 
"Connection"
nxt := LegoNxt new.
nxt connectOnPort: 'COM6'.
nxt isConnected.
nxt disconnect. "Don't forget to disconnect me after finish using me"

"Motors"
motor := NxtMotor new.
nxt portA plug: motor.
motor power: 100.
motor brake.
nxt portA unplug.

"Sensors"
sensor := LightSensor new.
nxt port1 plug: sensor.
sensor rawValue.
sensor normalizedValue.
sensor scaledValue.
nxt port1 unplug.

"Other stuff"
nxt batteryLevel.
nxt playSoundFile: 'Woops.rso'.
nxt playTone: 783.
nxt startProgram: 'my program file.rxe'.
nxt stopProgram.
