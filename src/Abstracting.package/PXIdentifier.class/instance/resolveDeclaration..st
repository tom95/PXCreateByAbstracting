as yet unclassified
resolveDeclaration: aString

	| block method declaration abort |
	block  := self containingBlock.
	method := self method.
	
	[declaration := block temporaries, block arguments detect: [:bubble | bubble name = aString] ifNone: [nil]] doWhileTrue: [
	abort := declaration isNil and: [block ~~ method block].
	block := block owner containingBlock.
	abort].
	
	^ declaration ifNil: [method contextClass instVarNames detect: [:name | name = aString] ifNone: []]