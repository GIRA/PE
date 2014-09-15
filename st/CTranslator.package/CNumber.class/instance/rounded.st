c-math functions
rounded
<returnType: #(CLong)>
self >= 0 
	ifTrue: [^ (self + 0.5) truncated]
	ifFalse: [^ (self - 0.5) truncated]