as yet unclassified
setSelector: aSymbol argumentNames: aCollectionOfIdentifiers

	messagePartTextEntries := OrderedCollection new.
	self removeAllMorphs.
	self
		addMessagePatternOf: aSymbol
		withArguments: aCollectionOfIdentifiers
		do: [:textEntry | messagePartTextEntries add: textEntry bold]