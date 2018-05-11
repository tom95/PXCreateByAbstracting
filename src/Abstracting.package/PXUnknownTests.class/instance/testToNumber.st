as yet unclassified
testToNumber

	self keyStroke: unknown key: $4.
	(self expect: container firstSubmorph) class == PXNumber.
	
	self assertCursorAtEnd.
	self assertBackspaceRevertsToUnknown