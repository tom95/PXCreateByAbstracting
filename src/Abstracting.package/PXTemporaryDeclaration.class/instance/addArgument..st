as yet unclassified
addArgument: aString

	| index var |
	index := 1.
	self numberOfPipes < 3
		ifTrue: [self addMorphFront: (self createLabelFor: '|')]
		ifFalse: [(self submorphs findFirst: [:m | m isBlock not]) - 1].
		
	var := PXVariableName name: aString.
	self addMorph: var asElementNumber: index.
	^ var