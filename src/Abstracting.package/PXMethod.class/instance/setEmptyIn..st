as yet unclassified
setEmptyIn: aClass

	class := aClass.
	self add: PXMethodDeclaration empty.
	self add: PXBlock empty