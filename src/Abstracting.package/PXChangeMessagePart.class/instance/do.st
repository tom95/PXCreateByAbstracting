as yet unclassified
do

	| entry |
	entry := self bubble messagePartEntryAt: self index.
	previousText := entry text.
	entry text: self newText.
	
	(((previousText endsWith: ':') not and: [self newText endsWith: ':']) or:
	[(previousText isEmpty or: [(previousText allSatisfy: #isSpecial) not]) and: [self newText allSatisfy: #isSpecial]])
		ifTrue: [ | argument |
			argument := PXUnknown new.
			self bubble add: argument.
			(self newText endsWith: ':') ifTrue: [self bubble addTrailingTextEntry].
			argument focus]