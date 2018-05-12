as yet unclassified
previousBubble

	^ self bubbleBefore ifNil: [self owner bubbleBefore ifNotNilDo: #lastBubble ifNil: [self owner]]