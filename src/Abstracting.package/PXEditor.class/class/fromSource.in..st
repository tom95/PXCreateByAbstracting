as yet unclassified
fromSource: aString in: aClass
	| method palette |
	method := PXMethod fromSource: aString in: aClass.
	palette := PXCommandPalette new method: method.
	method commandPalette: palette.
	^ self new method: method; commandPalette: palette.