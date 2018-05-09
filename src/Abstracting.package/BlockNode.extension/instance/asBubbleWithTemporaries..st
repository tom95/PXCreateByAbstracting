*Abstracting
asBubbleWithTemporaries: aCollection

	^ PXBlock
		statements: (self statements collect: #asBubble)
		temporaries: (aCollection collect: #asNameBubble)
		arguments: (self arguments collect: #asNameBubble)