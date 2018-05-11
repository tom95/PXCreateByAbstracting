as yet unclassified
handleKeyStroke: anEvent from: aTextEntry

	(#($# $( $)) includes: anEvent keyCharacter) ifTrue: [].
	
	(#(${ $}) includes: anEvent keyCharacter) ifTrue: [].
	
	anEvent keyString = '<right>' ifTrue: [self submorphs second select].
	
	^ true