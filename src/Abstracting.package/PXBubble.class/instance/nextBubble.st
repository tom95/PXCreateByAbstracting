as yet unclassified
nextBubble

	^ self bubbleAfter ifNil: [self owner bubbleAfter ifNotNilDo: #firstBubble ifNil: [self owner]]