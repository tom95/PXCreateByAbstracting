as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	data := aTextEntry text.
	self updateBold.
	"self root allMorphsDo: [:m | (m isBubble and: [m isIdentifier and: [m value = aString and: [m ~~ self]]]) ifTrue: [m value: self value]]".
	
	(aTextEntry text = 'true' or: [aTextEntry text = 'false']) ifTrue: [
		^ self run: (PXReplace bubble: self with: (PXBoolean incompleteFrom: aTextEntry text))].
	
	aTextEntry text notEmpty ifTrue: [
		(aTextEntry text first isLetter and: [aTextEntry text allSatisfy: #tokenish])
			ifFalse: [^ aTextEntry textKeepCursor: aString]
			ifTrue: [^ self run: (PXModifyValue replace: aString of: self with: aTextEntry text)]].
	
	super afterKeystroke: anEvent from: aTextEntry previous: aString