as yet unclassified
selector

	^ (String streamContents: [:stream |
		messagePartTextEntries do: [:p | stream nextPutAll: p text]]) asSymbol