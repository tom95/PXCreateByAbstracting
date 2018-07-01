as yet unclassified
minimalDoIt: aString

	^ (self fromSource: 'doIt ', aString in: UndefinedObject)
		commandPaletteVisible: false;
		showMethodPattern: false;
		yourself