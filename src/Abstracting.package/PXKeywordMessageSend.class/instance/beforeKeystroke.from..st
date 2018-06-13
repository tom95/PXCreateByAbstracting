as yet unclassified
beforeKeystroke: anEvent from: aTextEntry
	
	" selector can't start with a number "
	(anEvent keyCharacter isDigit and: [aTextEntry cursorAtStart]) ifTrue: [^ true].
	
	" possibly wrap myself as receiver of a new message send "
	trailingTextEntry == aTextEntry ifTrue: [
		anEvent keyCharacter = Character space ifTrue: [self run: (PXUseAsReceiver bubble: self selector: #''). ^ true].
		
		anEvent keyCharacter isSpecial ifTrue: [
			self run: (PXUseAsReceiver bubble: self selector: anEvent keyCharacter asSymbol). ^ true]].
	
	" now block remaining special and separator characters "
	(anEvent keyCharacter = Character space or: [anEvent keyCharacter isSpecial]) ifTrue: [^ true].
	
	" typed in trailing text entry, add new "
	(anEvent keyCharacter tokenish and: [aTextEntry == trailingTextEntry]) ifTrue: [ 
		self run: (PXAddMessagePart with: (anEvent keyCharacter asString copyWithout: $:) at: self numArgs + 1 of: self).
		^ true].
	
	anEvent keyCharacter = $: ifTrue: [
		"aTextEntry cursorAtEnd ifTrue: [(self closestTextEntryAfter: aTextEntry) focus. ^ true]."
		self run: (PXSplitMessagePart index: (self textEntryIndexOf: aTextEntry) of: self at: aTextEntry cursor).
		^ true].
	
	(anEvent keyCharacter = Character backspace and: [aTextEntry cursorAtStart]) ifTrue: [
		aTextEntry == trailingTextEntry ifTrue: [self focusLastArgument. ^ true].
		
		self run: (aTextEntry == self messagePartTextEntries first
			ifTrue: [PXReplace bubble: self with: self receiver]
			ifFalse: [PXMergeMessageParts at: (self textEntryIndexOf: aTextEntry) of: self]).
		^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry