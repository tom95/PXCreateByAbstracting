as yet unclassified
incompleteFrom: aString

	textEntry textKeepCursor: (aString size = 1 ifTrue: [aString, $'] ifFalse: [aString]).
	self validValue ifTrue: [self data: (textEntry text allButFirst allButLast)]