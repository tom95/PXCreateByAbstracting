as yet unclassified
updateSuggestionsFor: aTextEntry

	aTextEntry suggestionsList: (self actualReceiver possibleClass
		ifNotNil: [:class | self suggestionsFor: class]
		ifNil: [#()])