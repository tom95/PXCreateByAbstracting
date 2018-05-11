as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	(#($# $( $)) includes: anEvent keyCharacter) ifTrue: [].
	
	(#(${ $}) includes: anEvent keyCharacter) ifTrue: [].
	
	^ super beforeKeystroke: anEvent from: aTextEntry