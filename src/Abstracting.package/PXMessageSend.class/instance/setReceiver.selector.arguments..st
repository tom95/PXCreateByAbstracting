as yet unclassified
setReceiver: aReceiverExpression selector: aSymbol arguments: aCollectionOfExpressions

	self removeAllMorphs.
	messagePartTextEntries := OrderedCollection new.
	
	self add: aReceiverExpression.
	messagePartTextEntries := self
		addMessagePatternOf: aSymbol
		withArguments: aCollectionOfExpressions.
		
	aSymbol isKeyword ifTrue: [self addTrailingTextEntry]