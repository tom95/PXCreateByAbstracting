as yet unclassified
addArgument: aString

	^ declarations
		ifNil: [ | var |
			var := PXVariableDeclaration name: aString.
			self addMorph: (declarations := PXTemporaryDeclaration
				blockArguments: {var}
				temporaries: #()).
			var]
		ifNotNil: [declarations addArgument: aString]