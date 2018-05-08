as yet unclassified
setReceiver: aReceiverExpression selector: aSymbol arguments: aCollectionOfExpressions

	self removeAllMorphs.
	messagePartTextEntries := OrderedCollection new.
	
	self add: aReceiverExpression.
	self
		addMessagePatternOf: aSymbol
		withArguments: aCollectionOfExpressions
		do: [:textEntry | messagePartTextEntries add: textEntry].
		
	aSymbol isKeyword ifTrue: [self addTrailingTextEntry]