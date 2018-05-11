as yet unclassified
asNode

	self flag: #todo. "reuse instances from PXVariableName"
	^ TempVariableNode new name: self value index: 0 type: 2 scope: 0