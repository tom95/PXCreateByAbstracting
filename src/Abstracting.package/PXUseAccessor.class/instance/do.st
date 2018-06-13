as yet unclassified
do

	action := PXReplace bubble: self bubble with: (PXUnaryMessageSend receiver: (PXIdentifier incompleteFrom: 'self') selector: self bubble data).
	action do