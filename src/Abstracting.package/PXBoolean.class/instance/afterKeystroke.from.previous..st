as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	(aTextEntry text ~= 'true' or: [aTextEntry text ~= 'false']) ifTrue: [
		^ self run: (PXReplace bubble: self with: (PXIdentifier value: aTextEntry text))].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString