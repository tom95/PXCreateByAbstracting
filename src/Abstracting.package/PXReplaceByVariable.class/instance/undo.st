as yet unclassified
undo

	| block |
	block := self assignment methodBlock.
	
	self variable replaceBy: self bubble.
	
	block removeTemporaryVariable: self name.
	self assignment delete.
	
	self bubble focus