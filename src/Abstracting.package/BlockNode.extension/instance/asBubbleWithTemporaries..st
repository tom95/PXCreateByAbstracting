*Abstracting
asBubbleWithTemporaries: aCollection

	^ PXBlock
		statements: (self statements collect: #asBubble)
		temporaries: (aCollection collect: #asBubble)
		arguments: (self arguments collect: #asBubble)