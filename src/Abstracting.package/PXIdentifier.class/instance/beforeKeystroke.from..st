as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	anEvent keyCharacter = $: ifTrue: [
		self run: (PXUseIdentiferForAssignment identifier: self). ^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry