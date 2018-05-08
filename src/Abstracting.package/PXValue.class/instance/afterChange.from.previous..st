as yet unclassified
afterChange: anEvent from: aTextEntry previous: aString

	aTextEntry text ifEmpty: [self replaceBy: [PXUnknown new]].
	self updateValueFrom: aTextEntry text.
	super afterChange: anEvent from: aTextEntry previous: aString