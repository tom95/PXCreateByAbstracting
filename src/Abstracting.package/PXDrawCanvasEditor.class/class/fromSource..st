as yet unclassified
fromSource: aString
	^ self new
		editor: (PXMethodEditor fromSource: aString in: UndefinedObject);
		makeCanvas;
		yourself