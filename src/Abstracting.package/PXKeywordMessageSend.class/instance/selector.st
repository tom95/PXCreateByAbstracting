as yet unclassified
selector

	^ (String streamContents: [:stream |
		self messagePartTextEntries do: [:p | stream nextPutAll: p text; nextPut: $:]]) asSymbol