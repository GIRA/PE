analog pins
isAnalogPin0Active: aBoolean
| pin |
pin := arduino analogPin: 0.
[aBoolean ifTrue: [pin activate] ifFalse: [pin deactivate]] on: Error do: []
