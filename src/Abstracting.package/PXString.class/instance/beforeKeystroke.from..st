as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	" allow all keystrokes while inside quotation marks "
	(aTextEntry cursor > 0 and: [aTextEntry cursor ~=  aTextEntry text size]) ifTrue: [^ false].
	
	^ super beforeKeystroke: anEvent from: aTextEntry