as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	aTextEntry text ifNotEmpty: [
		(aTextEntry text matchesRegex: self validPrefix)
			ifFalse: [aTextEntry text: aString]
			ifTrue: [
				(aTextEntry text matchesRegex: self valid)
					ifTrue: [self run: (PXModifyValue replace: aString of: self with: aTextEntry text)]]].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString