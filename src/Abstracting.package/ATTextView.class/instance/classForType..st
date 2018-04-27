as yet unclassified
classForType: aType

	(#(number integer) includes: aType) ifTrue: [^ ATNumber].
	(#(string character self true false nil) includes: aType) ifTrue: [^ ATLiteral].
	(#(tempVar) includes: aType) ifTrue: [^ ATIdentifier].
	
	^ ATVisible