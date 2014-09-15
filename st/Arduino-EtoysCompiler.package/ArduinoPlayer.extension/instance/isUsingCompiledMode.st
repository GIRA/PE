*arduino-etoyscompiler
isUsingCompiledMode
	"An error might be signaled if this message is sent to an unplugged device"
	^ [self costume renderedMorph detectMainMorph isUsingCompiledMode] on: Error do: [false]