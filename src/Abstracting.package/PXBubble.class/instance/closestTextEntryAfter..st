as yet unclassified
closestTextEntryAfter: aMorph

	| p |
	p := aMorph.
	[p owner lastSubmorph == p] whileTrue: [p := p owner].
	p := p submorphAfter.
	[p submorphCount > 0] whileTrue: [p := p firstSubmorph].
	
	^ (p notNil and: [(p isKindOf: PXTextEntry) not])
		ifTrue: [self closestTextEntryAfter: p]
		ifFalse: [p]