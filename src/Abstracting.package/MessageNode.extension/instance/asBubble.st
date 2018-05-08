*Abstracting
asBubble

	^ PXMessageSend
		receiver: self receiver asBubble
		selector: self selector key
		arguments: (originalArguments collect: #asBubble)