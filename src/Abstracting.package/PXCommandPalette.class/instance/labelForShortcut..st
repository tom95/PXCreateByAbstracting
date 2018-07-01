accessing
labelForShortcut: aCharacter

	aCharacter = Character delete ifTrue: [^ 'del'].
	aCharacter = Character backspace ifTrue: [^ 'bs'].
	^ aCharacter asString