as yet unclassified
receiver: aReceiverExpression selector: aSymbol

	^ self receiver: aReceiverExpression selector: aSymbol arguments: ((1 to: aSymbol numArgs) collect: [:i | PXUnknown new])