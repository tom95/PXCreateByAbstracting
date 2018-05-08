as yet unclassified
abstractVariable

	| w |
	w := self textView activeWord.
	w acceptsIdentifierSubstitution ifFalse: [^ self error: 'not a valid type'].
	self halt