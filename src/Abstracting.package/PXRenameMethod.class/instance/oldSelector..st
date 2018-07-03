as yet unclassified
oldSelector: aSymbol

	oldSelector := aSymbol.
	oldSource := (self ownerClass >> aSymbol) getSourceFromFile.
	category := self ownerClass categoryForSelector: aSymbol