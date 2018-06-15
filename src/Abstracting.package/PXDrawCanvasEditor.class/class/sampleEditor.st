as yet unclassified
sampleEditor
	^ self new
		editor: (PXEditor fromSource: 'drawOn: aCanvas
		aCanvas line: 1@1 to: 15@15 width: 4 color: Color red
		' in: Morph);
		makeCanvas;
		yourself
		