as yet unclassified
in: aClass old: aSymbol new: aString

	^ self new
		ownerClass: aClass;
		oldSelector: aSymbol;
		newSource: aString;
		yourself