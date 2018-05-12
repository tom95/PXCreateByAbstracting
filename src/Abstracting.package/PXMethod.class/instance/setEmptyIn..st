as yet unclassified
setEmptyIn: aClass

	class := aClass.
	self add: (PXBubble new add: PXMethodDeclaration empty).
	self add: PXBlock empty