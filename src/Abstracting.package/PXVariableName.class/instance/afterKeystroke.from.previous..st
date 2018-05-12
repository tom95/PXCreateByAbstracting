as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	aTextEntry text ifNotEmpty: [
		(aTextEntry text first isLetter and: [aTextEntry text allSatisfy: #tokenish])
			ifFalse: [anEvent text: aString]
			ifTrue: [self run: (PXModifyValue replace: aString of: self with: aTextEntry text)]].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString