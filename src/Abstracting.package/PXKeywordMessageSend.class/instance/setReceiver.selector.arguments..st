as yet unclassified
setReceiver: aReceiverExpression selector: aSymbol arguments: aCollectionOfExpressions

	self removeAllMorphs.
	
	isInCascade := aReceiverExpression isNil.
	isInCascade ifFalse: [self add: aReceiverExpression].
	
	self
		addMessagePatternOf: aSymbol
		withArguments: aCollectionOfExpressions
		do: #yourself.
		
	self add: (trailingTextEntry := self createTextEntry)