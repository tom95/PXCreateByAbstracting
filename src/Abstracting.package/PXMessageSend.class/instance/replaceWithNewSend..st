as yet unclassified
replaceWithNewSend: aSymbol

	self run: (PXChangeMessageType of: self with: aSymbol).
	^ true