as yet unclassified
bubbleBefore

	| m |
	m := self.
	^ [m := m submorphBefore] doWhileTrue: [m notNil and: [m isBubble not]]