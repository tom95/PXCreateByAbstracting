as yet unclassified
beforeKeystroke: anEvent from: aTextEntry
	
	" can only place a special character in a binary message "
	anEvent keyCharacter isSpecial ifTrue: [
		((aTextEntry text allSatisfy: #isSpecial) and: [messagePartTextEntries size = 1]) ifTrue: [
			self run: (PXChangeMessagePart at: 1 of: self to: anEvent keyCharacter asString).
			^ true]].
	
	" selector can't start with a number "
	(anEvent keyCharacter isDigit and: [aTextEntry cursor = 0]) ifTrue: [^ true].
	
	" possibly wrap myself as receiver of a new message send "
	(aTextEntry == messagePartTextEntries last or: [trailingTextEntry == aTextEntry]) ifTrue: [
		anEvent keyCharacter = Character space ifTrue: [self run: (PXUseAsReceiver bubble: self selector: #''). ^ true].
		
		anEvent keyCharacter isSpecial ifTrue: [
			self run: (PXUseAsReceiver bubble: self selector: anEvent keyCharacter asSymbol). ^ true]].
	
	" now block remaining special and separator characters "
	(anEvent keyCharacter = Character space or: [anEvent keyCharacter isSpecial]) ifTrue: [^ true].
	
	" typed in trailing text entry, add new "
	((anEvent keyCharacter isLetter or: [anEvent keyCharacter = $:]) and: [aTextEntry == trailingTextEntry]) ifTrue: [ | text |
		text := anEvent keyCharacter = $: ifTrue: [':'] ifFalse: [anEvent keyCharacter asString, $:].
		self run: (PXAddMessagePart with: text at: messagePartTextEntries size + 1 of: self).
		^ true].
	
	anEvent keyCharacter = $: ifTrue: [
		self selector isBinary ifTrue: [^ true].
		self selector isUnary ifTrue: [self run: (PXChangeMessagePart at: 1 of: self to: self selector asMutator). ^ true].
		aTextEntry cursor = (aTextEntry text size - 1) ifTrue: [(self closestTextEntryAfter: aTextEntry) focus. ^ true].
		
		self run: (PXSplitMessagePart index: (self textEntryIndexOf: aTextEntry) of: self at: aTextEntry cursor).
		^ true].
	
	(anEvent keyCharacter = Character backspace and: [aTextEntry cursor = 0]) ifTrue: [
		aTextEntry == trailingTextEntry ifTrue: [self focusLastArgument. ^ true].
		
		self run: (aTextEntry == messagePartTextEntries first
			ifTrue: [PXReplace bubble: self with: self receiver]
			ifFalse: [PXMergeMessageParts at: (self textEntryIndexOf: aTextEntry) of: self]).
		^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry