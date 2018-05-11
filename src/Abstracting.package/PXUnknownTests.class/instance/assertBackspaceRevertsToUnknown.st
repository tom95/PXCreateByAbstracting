as yet unclassified
assertBackspaceRevertsToUnknown

	"container firstSubmorph handleKeyStroke: (self key: Character backspace) from:  nil."
	(self keyStroke: container firstSubmorph firstSubmorph key: Character backspace).
	(self expect: container firstSubmorph class) to be: PXUnknown