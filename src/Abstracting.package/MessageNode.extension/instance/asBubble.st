*Abstracting
asBubble

	(self receiver name = 'Color' and: [(Color respondsTo: self selector key) and: [self selector key isUnary]]) ifTrue: [^ PXColor color: (Color perform: self selector key)].

	^ (PXMessageSend classForSelector: self selector key)
		receiver: (self receiver ifNotNil: #asBubble)
		selector: originalSelector
		arguments: (originalArguments collect: #asBubble)