as yet unclassified
sampleEditor
	^ self new
		editor: (PXEditor fromSource: 'drawOn: aCanvas' in: Morph);
		makeCanvas;
		yourself
		