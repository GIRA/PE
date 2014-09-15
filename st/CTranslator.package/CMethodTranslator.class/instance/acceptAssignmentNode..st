visiting
acceptAssignmentNode: anAssignmentNode
	self visitNode: anAssignmentNode variable.
	source nextPutAll: ' = '.
	self visitNode: anAssignmentNode value.
	source nextPut: $;; cr.