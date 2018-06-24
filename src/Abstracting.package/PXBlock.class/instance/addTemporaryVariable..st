as yet unclassified
addTemporaryVariable: aName

	^ declarations
		ifNil: [ | temp |
			temp := PXVariableDeclaration name: aName.
			self addMorph: (declarations := PXTemporaryDeclaration
				blockArguments: #()
				temporaries: {temp}).
			temp]
		ifNotNil: [
			declarations addTemporaryVariable: aName]