as yet unclassified
do

	| block |
	block := self bubble methodBlock.
	
	variable := self bubble replaceBy: [PXIdentifier value: self name].
	assignment := PXAssignment identifier: (PXVariableName name: self name) statement: self bubble.
	
	block addTemporaryVariable: self name.
	block insertStatement: self assignment at: 1.
	
	self variable focus