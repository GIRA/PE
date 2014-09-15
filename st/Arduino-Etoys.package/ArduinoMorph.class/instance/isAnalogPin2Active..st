analog pins
isAnalogPin2Active: aBoolean
| pin |
pin := arduino analogPin:2.
[aBoolean ifTrue: [pin activate] ifFalse: [pin deactivate]] on: Error do: []
