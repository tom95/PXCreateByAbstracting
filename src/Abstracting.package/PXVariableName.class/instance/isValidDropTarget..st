assign line
isValidDropTarget: aMorph

	^ aMorph isBubble and: [aMorph wantsIdentifierDrop]