testing
stopTestProcess
"Just for testing"
testProcess isNil ifTrue: [^self].
testProcess terminate.
testProcess := nil