as yet unclassified
selector

	^ (String streamContents: [:stream |
		2 to: self submorphCount by: 2 do: [:index | stream nextPutAll: (self submorphs at: index) text]]) asSymbol