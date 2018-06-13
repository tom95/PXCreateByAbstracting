edit actions
wrapInMessageSendAsArgument

	self
		deselect;
		run: (PXReplace bubble: self with: [PXKeywordMessageSend receiver: PXUnknown new selector: #msg: arguments: {self}])