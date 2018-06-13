as yet unclassified
classForSelector: aSymbol

	aSymbol isKeyword ifTrue: [^ PXKeywordMessageSend].
	aSymbol isInfix ifTrue: [^ PXBinaryMessageSend].
	(aSymbol isUnary or: [aSymbol == #'']) ifTrue: [^ PXUnaryMessageSend].
	self error: 'invalid symbol'