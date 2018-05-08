edit actions
wrapInMessageSendAsReceiver

	(self replaceBy: [PXMessageSend receiver: self selector: #'' arguments: #()]) focusSelector