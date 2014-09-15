analog pins
isAnalogPin4Active: aBoolean
| pin |
pin := arduino analogPin: 4.
[aBoolean ifTrue: [pin activate] ifFalse: [pin deactivate]] on: Error do: []
