as yet unclassified
oldSelector: aSymbol

	oldSelector := aSymbol asSymbol.
	aSymbol ~~ #'' ifTrue: [
		oldSource := (self ownerClass >> oldSelector) getSourceFromFile.
		category := self ownerClass categoryForSelector: oldSelector]