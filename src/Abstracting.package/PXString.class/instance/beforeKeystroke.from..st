as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	" allow all keystrokes while inside quotation marks "
	| insideQuotation |
	insideQuotation := aTextEntry cursor > 0 and: [aTextEntry cursor <  aTextEntry text size].
	(insideQuotation and: [({Character tab. Character cr} includes: anEvent keyCharacter) not and: [anEvent anyModifierKeyPressed not]]) ifTrue: [^ false].
	
	^ super beforeKeystroke: anEvent from: aTextEntry