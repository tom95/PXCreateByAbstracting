as yet unclassified
replaceWithSend: aSymbol

	self run: (PXChangeMessageType of: self with: aSymbol).
	^ true