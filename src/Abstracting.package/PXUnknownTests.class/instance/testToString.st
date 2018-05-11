as yet unclassified
testToString

	"container openInWorld: world.
	unknown focus."
	"self keyStroke: hand keyboardFocus key: $'."
	"unknown handleKeyStroke: (self key: $') from: nil."
	(self expect: container firstSubmorph) class == PXString.
	
	self assertCursorAtEnd.
	self assertBackspaceRevertsToUnknown