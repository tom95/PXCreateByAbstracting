edit actions
wrapInMessageSendAsArgument

	(self replaceBy: [PXMessageSend receiver: PXUnknown new selector: #msg: arguments: {self}]) focusSelector