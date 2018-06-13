as yet unclassified
do

	previousArgument := self bubble argumentAt: self index.
	previousText := (self bubble messagePartEntryAt: self index) text.
	self bubble removeMessagePartAt: self index.
	
	(self index > 1 ifTrue: [self bubble argumentAt: self index - 1] ifFalse: [self bubble receiver]) focus