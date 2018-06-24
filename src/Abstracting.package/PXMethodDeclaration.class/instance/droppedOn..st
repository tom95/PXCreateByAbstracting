assign line
droppedOn: aMorph

	self run: (PXReplace bubble: aMorph with: (PXUnaryMessageSend receiver: PXIdentifier self selector: self selector))