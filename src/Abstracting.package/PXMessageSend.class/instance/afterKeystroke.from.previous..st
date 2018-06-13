as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	aTextEntry text notEmpty ifTrue: [
		(self isValidForPart: aTextEntry text)
			ifFalse: [^ aTextEntry textKeepCursor: aString]
			ifTrue: [^ self run: (PXChangeMessagePart at: (self textEntryIndexOf: aTextEntry) replace: aString of: self to: aTextEntry text)]].
		
	super afterKeystroke: anEvent from: aTextEntry previous: aString