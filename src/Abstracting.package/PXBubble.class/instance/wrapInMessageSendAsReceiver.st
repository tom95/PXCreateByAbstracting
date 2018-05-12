edit actions
wrapInMessageSendAsReceiver

	self
		deselect;
		"run: (PXReplace bubble: self with: [PXMessageSend receiver: self selector: #'' arguments: {}])"
		run: (PXUseAsReceiver bubble: self selector: #'')