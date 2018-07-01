*Abstracting
asBubbleWithTemporaries: aCollection stripTrailingReturnSelf: aBoolean

	| s |
	s := (aBoolean and: [self statements last class = ReturnNode and: [self statements last expr class = VariableNode and: [self statements last expr key = 'self']]])
		ifTrue: [self statements allButLast]
		ifFalse: [self statements].

	^ PXBlock
		statements: (s collect: #asBubble)
		temporaries: (aCollection collect: #asNameBubble)
		arguments: (self arguments collect: #asNameBubble)