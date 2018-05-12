as yet unclassified
createTextEntryFor: aKeyword in: aSymbol
	
	^ self createTextEntryFor: aKeyword, (aSymbol isBinary ifTrue: [''] ifFalse: [':'])