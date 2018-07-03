as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	self flag: #fixme. "only works for unary messages "
	
	aTextEntry text notEmpty ifTrue: [
		(self isValidForPart: aTextEntry text)
			ifFalse: [^ aTextEntry textKeepCursor: aString]
			ifTrue: [^ self run: (PXRenameMethod in: self editor contextClass old: aString new: self method codeString)]].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString