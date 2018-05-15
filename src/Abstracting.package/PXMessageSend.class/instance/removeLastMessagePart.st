as yet unclassified
removeLastMessagePart
	| index |
	index := self submorphs indexOf: messagePartTextEntries last.
	(self submorphs at: index + 1) delete.
	(self submorphs at: index) delete.
	messagePartTextEntries := messagePartTextEntries allButLast