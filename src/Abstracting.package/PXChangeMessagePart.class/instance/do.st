as yet unclassified
do

	| entry |
	entry := self bubble messagePartEntryAt: self index.
	previousText ifNil: [previousText := entry text].
	entry textKeepCursor: self newText