as yet unclassified
classForType: aType

	(#(number integer) includes: aType) ifTrue: [^ ATNumber].
	(#(string character self true false nil) includes: aType) ifTrue: [^ ATLiteral].
	
	^ ATVisible