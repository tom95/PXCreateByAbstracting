as yet unclassified
testToCharacter

	self keyStroke: unknown key: $$.
	(self expect: container firstSubmorph) class == PXCharacter.
	
	self assertCursorAtEnd.
	self assertBackspaceRevertsToUnknown