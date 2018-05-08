as yet unclassified
setStatements: aCollectionOfExpressions temporaries: aCollectionOfIdentifiers arguments: anotherCollectionOfIdentifiers

	self removeAllMorphs.
	
	(aCollectionOfIdentifiers notEmpty or: [anotherCollectionOfIdentifiers notEmpty]) ifTrue: [
		self add: (declarations := PXTemporaryDeclaration
			blockArguments: anotherCollectionOfIdentifiers
			temporaries: aCollectionOfIdentifiers)].
	
	self addAll: (statements := aCollectionOfExpressions)