as yet unclassified
bubbleBefore

	| m |
	^ [m := self submorphBefore] doWhileTrue: [m notNil and: [m isBubble not]]