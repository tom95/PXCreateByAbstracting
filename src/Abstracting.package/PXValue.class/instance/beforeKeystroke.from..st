as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	anEvent keyCharacter = Character space ifTrue: [
		self run: (PXUseAsReceiver bubble: self selector: #''). ^ true].
	
	anEvent keyCharacter isSpecial ifTrue: [
		self run: (PXUseAsReceiver bubble: self selector: anEvent keyCharacter asSymbol). ^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry