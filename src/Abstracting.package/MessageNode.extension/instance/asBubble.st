*Abstracting
asBubble

	(self selector key = #red and: [self receiver name = 'Color']) ifTrue: [^ PXColor color: Color red].

	^ (PXMessageSend classForSelector: self selector key)
		receiver: self receiver asBubble
		selector: self selector key
		arguments: (originalArguments collect: #asBubble)