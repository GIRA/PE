accessing
mainImplementation
	^'int main()
\{
{1}* program = new {1}();
program->{2}();
return 0;
\}' format: {
	self mainMethod ownerClass asCString.
	self mainMethod name}

