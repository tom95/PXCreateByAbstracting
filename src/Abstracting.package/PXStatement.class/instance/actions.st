as yet unclassified
actions

	| actions |
	actions := {
		PXWrapInReturn.
		PXWrapInBlock.
		PXWrapInAssignment.
		PXUseAsReceiver.
		PXUseAsArgument.
		PXReplaceByVariable.
		PXDeleteSelf.
		PXDeleteOuter.
		PXCopy.
		PXCut} asOrderedCollection.
	self editor clipboard ifNotNil: [actions add: PXPaste].
	^ actions