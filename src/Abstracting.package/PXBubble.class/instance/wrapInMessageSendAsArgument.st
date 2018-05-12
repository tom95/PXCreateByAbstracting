edit actions
wrapInMessageSendAsArgument

	self
		deselect;
		run: (PXReplace bubble: self with: [PXMessageSend receiver: PXUnknown new selector: #msg: arguments: {self}])