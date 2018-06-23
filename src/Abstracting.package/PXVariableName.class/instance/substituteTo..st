as yet unclassified
substituteTo: aToken

	| simpleReplace |
	simpleReplace := [self run: (PXReplace bubble: aToken with: (PXIdentifier value: self name))].
	self flag.
	
	aToken isNumber
		ifTrue: [
			self constantNumberIfFound: [:number | 
				(number ~= aToken data) ifTrue: [aToken replaceBy: [PXBinaryMessageSend receiver: (PXIdentifier value: self name) selector: #+ arguments: {PXNumber value: aToken data - number}]
					]
				ifFalse: simpleReplace] ifNone: simpleReplace]
		ifFalse: simpleReplace