*Abstracting
asBubble
	
	^ PXCascade receiver: self receiver asBubble messages: (self messages collect: #asBubble)