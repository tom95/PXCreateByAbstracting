as yet unclassified
afterKeystroke: anEvent from: aTextEntry previous: aString

	(aTextEntry ~~ messagePartTextEntries first and: [(aTextEntry text endsWith: ':') not]) ifTrue: [aTextEntry textKeepCursor: aTextEntry text, ':'].

	super afterKeystroke: anEvent from: aTextEntry previous: aString