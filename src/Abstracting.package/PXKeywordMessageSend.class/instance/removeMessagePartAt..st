as yet unclassified
removeMessagePartAt: aNumber

	| entry |
	entry := self messagePartEntryAt: aNumber.
	(self argumentAt: aNumber) delete.
	entry delete