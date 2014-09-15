as yet unclassified
loop
<tempTypes: #(CLong)>
| reading |
reading := self digitalRead: buttonPin.
reading ~= lastButtonState ifTrue: [lastDebounceTime := self millis].
(self millis - lastDebounceTime)  > debounceDelay ifTrue: [buttonState := reading].
self digitalWrite: ledPin value: buttonState.
lastButtonState := reading