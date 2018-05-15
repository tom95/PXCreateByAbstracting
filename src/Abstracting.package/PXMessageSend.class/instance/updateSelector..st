as yet unclassified
updateSelector: aSymbol

	"transition to message with argument"
	(self selector isUnary and: [aSymbol isUnary not]) ifTrue: [self addAndFocusUnknown].
	
	self updateMessagePartsToMatch: aSymbol.
	