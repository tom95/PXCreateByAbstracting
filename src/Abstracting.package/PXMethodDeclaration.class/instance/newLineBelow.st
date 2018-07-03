as yet unclassified
newLineBelow

	^ self owner block statements ifEmpty: [self owner block addStatement] ifNotEmpty: [:statements | statements first newLineAbove]