as yet unclassified
setup
buttonPin := 9.
ledPin := 12.
ledState := HIGH.
lastButtonState := LOW.
lastDebounceTime := 0.
debounceDelay := 50.
self pin: buttonPin mode: INPUT; pin: ledPin mode: OUTPUT