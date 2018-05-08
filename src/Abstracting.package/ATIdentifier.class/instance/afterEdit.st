as yet unclassified
afterEdit

	super afterEdit.
	
	self sameIdentifiersDo: [:identifier | identifier contents: self contents]