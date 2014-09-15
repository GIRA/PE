analog pins
isAnalogPin1Active: aBoolean
| pin |
pin := arduino analogPin:1.
[aBoolean ifTrue: [pin activate] ifFalse: [pin deactivate]] on: Error do: []
