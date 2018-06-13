as yet unclassified
setupCompletionFor: aTextEntry

	aTextEntry
		when: #focused send: #updateSuggestionsFor: to: self with: aTextEntry;
		when: #completed send: #replaceWithNewSend: to: self