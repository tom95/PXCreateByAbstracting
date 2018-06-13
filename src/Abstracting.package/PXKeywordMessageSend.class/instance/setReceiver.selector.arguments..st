as yet unclassified
setReceiver: aReceiverExpression selector: aSymbol arguments: aCollectionOfExpressions

	self removeAllMorphs.
	
	self add: aReceiverExpression.
	
	self
		addMessagePatternOf: aSymbol
		withArguments: aCollectionOfExpressions
		do: #yourself.
		
	self add: (trailingTextEntry := self createTextEntry)