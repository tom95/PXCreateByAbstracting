as yet unclassified
in: aClass old: aSymbol new: anotherSymbol

	^ self new
		ownerClass: aClass;
		oldSelector: aSymbol;
		newSelector: aSymbol;
		yourself