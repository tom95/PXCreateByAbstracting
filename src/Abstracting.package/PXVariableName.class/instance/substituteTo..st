as yet unclassified
substituteTo: aToken

	| simpleReplace |
	simpleReplace := [self run: (PXReplace bubble: aToken with: (PXIdentifier value: self name))].
	
	aToken isNumber
		ifTrue: [
			self constantNumberIfFound: [:number | aToken replaceBy: [PXMessageSend receiver: (PXIdentifier value: self name) selector: #+ arguments: {PXNumber value: aToken value - number}]] ifNone: simpleReplace]
		ifFalse: simpleReplace