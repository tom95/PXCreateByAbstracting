as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	(aTextEntry text = 'true' or: [aTextEntry text = 'false']) ifTrue: [
		^ self run: (PXReplace bubble: self with: (PXBoolean incompleteFrom: aTextEntry text))].
	
	aTextEntry text notEmpty ifTrue: [
		(aTextEntry text first isLetter and: [aTextEntry text allSatisfy: #tokenish])
			ifFalse: [^ aTextEntry textKeepCursor: aString]
			ifTrue: [
				((self resolveDeclaration: aTextEntry text asString) notNil) ifTrue: [self uneditedName: aTextEntry text asString].
				^ self run: (PXModifyValue replace: aString of: self with: aTextEntry text)]].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString