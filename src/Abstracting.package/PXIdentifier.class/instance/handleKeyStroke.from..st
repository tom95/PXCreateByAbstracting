as yet unclassified
handleKeyStroke: anEvent from: aTextEntry

	anEvent keyCharacter = $: ifTrue: [
		(self replaceBy: [PXAssignment identifier: self statement: PXUnknown new]) focusStatement.
		^ true].
	
	^ super handleKeyStroke: anEvent from: aTextEntry