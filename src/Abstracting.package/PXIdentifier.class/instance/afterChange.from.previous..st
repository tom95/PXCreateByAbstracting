as yet unclassified
afterChange: anEvent from: aTextEntry previous: aString

	value := aTextEntry text.
	self updateBold.
	self root allMorphsDo: [:m | (m isBubble and: [m isIdentifier and: [m value = aString and: [m ~~ self]]]) ifTrue: [m value: self value]]