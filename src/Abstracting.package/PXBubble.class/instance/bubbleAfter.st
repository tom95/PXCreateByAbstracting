as yet unclassified
bubbleAfter

	| m |
	m := self.
	^ [m := m submorphAfter] doWhileTrue: [m notNil and: [m isBubble not]]