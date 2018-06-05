as yet unclassified
closestTextEntryBefore: aMorph

	| p |
	p := aMorph.
	[(p owner ifNil: [^ nil]) firstSubmorph = p] whileTrue: [p := p owner].
	p := p submorphBefore.
	[p submorphCount > 0] whileTrue: [p := p lastSubmorph].
	
	^ (p notNil and: [(p isKindOf: PXTextEntry) not])
		ifTrue: [self closestTextEntryBefore: p]
		ifFalse: [p]