as yet unclassified
sampleEditor
	^ self new
		editor: (PXMethodEditor fromSource: 'drawOn: aCanvas
		aCanvas line: 30@40 to: 60@20 width: 4 color: Color red.
		aCanvas line: 60@20 to: 90@40 width: 4 color: Color red.
		aCanvas line: 30@40 to: 30@100 width: 3 color: Color black.
		aCanvas line: 90@40 to: 90@100 width: 3 color: Color black.
		aCanvas line: 30@100 to: 90@100 width: 3 color: Color black.
		' in: Morph);
		makeCanvas;
		yourself
		