as yet unclassified
blockDepth

	^ (self owner isBubble and: [self owner isRoot not])
		ifTrue: [self owner blockDepth + 1]
		ifFalse: [1]