as yet unclassified
addTemporaryVariable: aName

	declarations
		ifNil: [
			self addMorph: (declarations := PXTemporaryDeclaration
				blockArguments: #()
				temporaries: {PXIdentifier value: aName})]
		ifNotNil: [
			declarations addTemporaryVariable: aName]