assign line
isValidDropTarget: aMorph

	^ aMorph isBubble and: [aMorph wantsIdentifierDrop and: [aMorph method contextClass == self method contextClass]]