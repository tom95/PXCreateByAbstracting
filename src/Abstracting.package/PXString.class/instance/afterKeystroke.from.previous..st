as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	self validValue ifTrue: [self run: (PXModifyValue replace: aString of: self with: aTextEntry text)].
	
	(aTextEntry text = '''' and: [textEntry cursor = 0]) ifTrue: [
		^ self run: (PXReplace bubble: self with: PXUnknown new)].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString