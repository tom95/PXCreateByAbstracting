as yet unclassified
addTemporaryVariable: aName

	declarations
		ifNil: [
			self addMorph: (declarations := PXTemporaryDeclaration
				blockArguments: #()
				temporaries: {PXVariableName name: aName})]
		ifNotNil: [
			declarations addTemporaryVariable: aName]