*Abstracting
asBubble

	(self selector key = #red and: [self receiver name = 'Color']) ifTrue: [^ PXColor color: Color red].

	^ (PXMessageSend classForSelector: self selector key)
		receiver: (self receiver ifNotNil: #asBubble)
		selector: originalSelector
		arguments: (originalArguments collect: #asBubble)