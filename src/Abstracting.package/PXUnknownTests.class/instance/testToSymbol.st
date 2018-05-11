as yet unclassified
testToSymbol

	self keyStroke: unknown key: $#.
	(self expect: container firstSubmorph class) to be: PXSymbol.
	
	self assertCursorAtEnd.
	self assertBackspaceRevertsToUnknown