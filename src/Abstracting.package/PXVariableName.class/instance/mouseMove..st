as yet unclassified
mouseMove: anEvent

	assignLine verticesAt: 2 put: anEvent position.
	
	self dropTargetAt: anEvent position do: [:token |
		(token ~~ highlighted and: [token ~~ self]) ifTrue: [self clearHighlighted. token highlight: true. highlighted := token]] ifNone: [self clearHighlighted]