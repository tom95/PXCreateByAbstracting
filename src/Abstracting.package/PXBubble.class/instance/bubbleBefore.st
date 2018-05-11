as yet unclassified
bubbleBefore
	"helper method for previousBubble"

	| m |
	m := self.
	^ [m := m submorphBefore] doWhileTrue: [m notNil and: [m isBubble not]]