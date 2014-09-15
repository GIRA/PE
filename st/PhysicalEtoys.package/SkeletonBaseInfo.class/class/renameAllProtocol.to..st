utility
renameAllProtocol: before to: after 
	" 
	Change all method category.
	self renameAllProtocol: #'*skeleton-2003' to: #'obsolete-sk2003'.
	self renameAllProtocol: #'*skeleton-2003-var' to: #'obsolete-sk2003-var' 
	self renameAllProtocol: #'*skeleton-velocity' to: #'obsolete-velocity' 
	self renameAllProtocol: #'*skeleton-morph-sumim' to: #'*skeleton-connectors-sumim' 
	"
	ProtoObject
		withAllSubclassesDo: [:class | 
			(class organization listAtCategoryNamed: before) isEmpty not
				ifTrue: [class organization renameCategory: before toBe: after].
			(class class organization listAtCategoryNamed: before) isEmpty not
				ifTrue: [class organization renameCategory: before toBe: after]]