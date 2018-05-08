as yet unclassified
setBlockArguments: aCollectionOfIdentifiers temporaries: anotherCollectionOfIdentifiers

	self removeAllMorphs.
	
	aCollectionOfIdentifiers ifNotEmpty: [
		self addAll: aCollectionOfIdentifiers.
		self add: (self createLabelFor: '|')].
	
	self setTemporaryVariables: anotherCollectionOfIdentifiers