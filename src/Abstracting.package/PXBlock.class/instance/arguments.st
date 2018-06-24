as yet unclassified
arguments

	self owner isMethod ifTrue: [^ self owner arguments].
	
	^ declarations ifNil: [#()] ifNotNil: #arguments