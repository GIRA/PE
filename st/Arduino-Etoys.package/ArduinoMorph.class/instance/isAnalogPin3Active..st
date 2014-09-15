analog pins
isAnalogPin3Active: aBoolean
| pin |
pin := arduino analogPin:3.
[aBoolean ifTrue: [pin activate] ifFalse: [pin deactivate]] on: Error do: []
