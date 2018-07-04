accessing
labelForShortcut: aCharacter ifAny: aBlock

	aCharacter ifNil: [^ ''].
	
	aCharacter = Character delete ifTrue: [^ aBlock value: 'del'].
	aCharacter = Character backspace ifTrue: [^ aBlock value: 'bs'].
	^ aBlock value: aCharacter asString