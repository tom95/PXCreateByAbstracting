as yet unclassified
handleKeyStroke: anEvent from: aTextEntry

	(#($# $( $)) includes: anEvent keyCharacter) ifTrue: [].
	
	(#(${ $}) includes: anEvent keyCharacter) ifTrue: [].
	
	^ true