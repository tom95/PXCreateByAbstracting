as yet unclassified
bubbleAfter
	"helper method for nextBubble"

	| m |
	m := self.
	^ [m := m submorphAfter] doWhileTrue: [m notNil and: [m isBubble not]]