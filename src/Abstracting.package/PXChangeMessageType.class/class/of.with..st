as yet unclassified
of: aBubble with: aSymbol

	^ self new
		previousBubble: aBubble;
		newBubble: [(PXMessageSend classForSelector: aSymbol) receiver: aBubble receiver selector: aSymbol]