as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	self
		commandForCharacter: anEvent keyCharacter
		ifFound: [:cmd | self run: cmd. ^ true]
		ifNone: [
			anEvent keyCharacter = Character backspace ifTrue: [
				self owner requestDeleteFrom: self.
				^ true].
			
			(anEvent keyCharacter = $: and: [self owner == self containingBlock and: [self owner statements first == self]]) ifTrue: [
				self run: (PXAddBlockArgument block: self owner name: '').
				^ true].
			
			super beforeKeystroke: anEvent from: aTextEntry.
			" we accept no regular editing events "
			^ true]