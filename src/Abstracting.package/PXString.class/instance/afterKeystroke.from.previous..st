as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	self validValue ifTrue: [self run: (PXModifyValue replace: aString of: self with: aTextEntry text)].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString