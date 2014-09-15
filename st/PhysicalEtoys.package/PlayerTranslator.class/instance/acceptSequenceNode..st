visiting
acceptSequenceNode: aSequenceNode
	"If one of the statements has an invalid tile it will ignore it entirely. Only assertion failures will be ignored, other errors will be signaled, though"
	aSequenceNode statements do: [:each | [self visitNode: each] on: AssertionFailure do: [self becomeNoOp: each]]
