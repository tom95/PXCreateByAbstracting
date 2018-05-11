as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	aTextEntry text ifEmpty: [
		aTextEntry text: aString.
		^ self run: (PXReplace bubble: self with: PXUnknown new)].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString