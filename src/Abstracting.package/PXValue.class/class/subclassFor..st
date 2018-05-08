as yet unclassified
subclassFor: aString

	(aString beginsWith: '''') ifTrue: [^ PXString].
	(aString beginsWith: '#') ifTrue: [^ PXSymbol].
	(Number readFrom: aString ifFail: []) ifNotNil: [^ PXNumber].
	(aString = 'true' or: [aString = 'false']) ifTrue: [^ PXBoolean].
	^ PXIdentifier