as yet unclassified
removeLastMessagePart
	| index |
	index := self submorphs indexOf: messagePartTextEntries last ifAbsent: [nil].
	(self submorphs at: index + 1) class = PXTextEntry ifFalse: [(self submorphs at: index + 1) remove].
	(self submorphs at: index) remove