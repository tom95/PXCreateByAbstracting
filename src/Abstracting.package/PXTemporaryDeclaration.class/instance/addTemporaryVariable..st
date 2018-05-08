as yet unclassified
addTemporaryVariable: aName

	| numberOfPipes identifier |
	numberOfPipes := self submorphs count: [:m | m isBubble not].
	identifier := PXIdentifier value: aName.
	
	numberOfPipes <= 1
		ifTrue: [self setTemporaryVariables: {identifier}]
		ifFalse: [self addMorph: identifier asElementNumber: self submorphCount]