as yet unclassified
addMessagePatternOf: aSymbol withArguments: aCollection do: aBlock

	aCollection
		ifEmpty: [self add: (aBlock value: (self createTextEntryFor: aSymbol))]
		ifNotEmpty: [
			(aSymbol findTokens: ':') with: aCollection do: [:keyword :argumentExpression |
			self add: (aBlock value: (self createTextEntryFor: keyword)).
			self add: argumentExpression]]