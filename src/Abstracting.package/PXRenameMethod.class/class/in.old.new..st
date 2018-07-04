as yet unclassified
in: anEditor old: aSymbol new: aString

	^ self new
		editor: anEditor;
		ownerClass: anEditor contextClass;
		oldSelector: aSymbol;
		newSource: aString;
		yourself