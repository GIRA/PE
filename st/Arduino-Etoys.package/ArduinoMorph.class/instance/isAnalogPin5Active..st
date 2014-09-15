analog pins
isAnalogPin5Active: aBoolean
| pin |
pin := arduino analogPin: 5.
[aBoolean ifTrue: [pin activate] ifFalse: [pin deactivate]] on: Error do: []
