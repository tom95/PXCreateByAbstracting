as yet unclassified
handleKeyStroke: anEvent from: aTextEntry

	anEvent keyCharacter = $: ifTrue: [
		aTextEntry cursor = aTextEntry text size ifTrue: [
			self addMorph: PXUnknown new focus after: aTextEntry.
			
			aTextEntry == trailingTextEntry ifTrue: [trailingTextEntry := nil].
			self addTrailingTextEntry].
		^ false].
	
	^ false