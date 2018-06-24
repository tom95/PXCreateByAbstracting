as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	(anEvent keyCharacter = Character space and: [anEvent anyModifierKeyPressed not]) ifTrue: [
		self run: (PXUseAsReceiver bubble: self). ^ true].
	
	anEvent keyCharacter isSpecial ifTrue: [
		self run: (PXUseAsReceiver bubble: self selector: anEvent keyCharacter asSymbol). ^ true].
	
	aTextEntry isAllSelected ifTrue: [
		PXUnknown decideForCharacter: anEvent keyCharacter ifFound: [:unknown |
			self run: (PXReplace bubble: self with: unknown).
			^ true]].
	
	^ super beforeKeystroke: anEvent from: aTextEntry