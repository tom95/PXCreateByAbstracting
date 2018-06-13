as yet unclassified
splitAtCursorToMessageParts

	^ ((self text first: self cursor), $:, (self text allButFirst: self cursor), $:) asSymbol