as yet unclassified
do

	self selector: self editor nameForExtractedMethod.
	
	(replaceAction := PXReplace bubble: self bubble with: (PXUnaryMessageSend receiver: PXIdentifier self selector: self selector)) do.
	
	self editor
		addMethodNamed: self selector
		bubble: (self bubble isStatement ifTrue: [(PXReturn statement: self bubble)] ifFalse: [self bubble])