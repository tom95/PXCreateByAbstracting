as yet unclassified
resolveDeclaration: aString

	| block method declaration |
	block  := self containingBlock.
	method := self method.
	
	declaration := [block temporaries, block arguments detect: [:bubble | bubble name = aString] ifNone: [block := block owner containingBlock. nil]] doWhileTrue: [block ~~ method block].
	
	^ declaration ifNil: [method contextClass instVarNames detect: [:name | name = aString] ifNone: []]