as yet unclassified
removeMessagePartAt: aNumber

	| entry |
	entry := self messagePartEntryAt: aNumber.
	(self argumentAt: aNumber) ifNotNil: #delete.
	entry delete.
	messagePartTextEntries removeAt: aNumber