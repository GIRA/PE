accessing
mainImplementation
	"I was having trouble to access self within tasks (because tasks don't accept parameters) so I decided, in order to make this work, to use a global 'self' instead of sending it in the first parameter all the time. It really sucks because it is very limited, but it will work for Etoys. So, for now, I'll keep this approach...

-Richo (29/7/2011): "
	^'{1} _self;
task main()
\{
{2}();
\}' format: {
	self mainMethod ownerClass asCString.
	self mainMethod name}

