accessing
mainImplementation
	self flag: #Richo. "Don't forget to initialize class structs here!"
	^'int main(void)
\{
{1}* program = ({1}*)malloc(sizeof({1}));
//Initialize class structs here
{2}(program);
return 0;
\}' format: {
	self mainMethod ownerClass asCString.
	self mainMethod name}