*Abstracting
asBubble

	^ (PXMessageSend classForSelector: self selector key)
		receiver: self receiver asBubble
		selector: self selector key
		arguments: (originalArguments collect: #asBubble)