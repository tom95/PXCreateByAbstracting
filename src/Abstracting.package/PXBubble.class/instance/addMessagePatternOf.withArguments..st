as yet unclassified
addMessagePatternOf: aSymbol withArguments: aCollection

	aCollection
		ifEmpty: [ |te| te := self createTextEntryFor: aSymbol. self add: te. ^ Array with: te]
		ifNotEmpty: [
			|keywordTextEntries|
			keywordTextEntries :=
				(aSymbol findTokens: ':') collect: [:k | self createTextEntryFor: k in: aSymbol].
			keywordTextEntries with: aCollection do: [:keyword :argumentExpression |
				self add: keyword.
				self add: argumentExpression].
			^ keywordTextEntries]