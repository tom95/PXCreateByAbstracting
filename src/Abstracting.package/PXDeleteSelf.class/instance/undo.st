as yet unclassified
undo

	replacement ifNotNil: #delete.
	
	self previousOwner addMorph: self bubble asElementNumber: self previousIndex.
	self bubble focus