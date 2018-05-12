as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	(#($# $( $)) includes: anEvent keyCharacter) ifTrue: [self run: (PXChangeArrayType array: self type: #literal). ^ true].
	
	(#(${ $}) includes: anEvent keyCharacter) ifTrue: [self run: (PXChangeArrayType array: self type: #dynamic). ^ true].
	
	(#($[ $]) includes: anEvent keyCharacter) ifTrue: [self run: (PXChangeArrayType array: self type: #literalBytes). ^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry