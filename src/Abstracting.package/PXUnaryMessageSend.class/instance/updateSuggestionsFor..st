as yet unclassified
updateSuggestionsFor: aTextEntry

	aTextEntry suggestionsList: (self receiver possibleClass
		ifNotNil: [:class | self suggestionsFor: class]
		ifNil: [#()])