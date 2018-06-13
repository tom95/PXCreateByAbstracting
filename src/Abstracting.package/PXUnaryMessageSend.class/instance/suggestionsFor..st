as yet unclassified
suggestionsFor: aClass

	^ Array streamContents: [:stream |
		aClass methodDict keysAndValuesDo: [:selector :method |
			stream nextPut: (PHTextCompletionSuggestion label: selector asString data: selector)]]