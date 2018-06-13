as yet unclassified
do

	| arguments |
	arguments := (1 to: self selector numArgs) collect: [:x | PXUnknown new].
	
	(self bubble replaceBy: [messageSend := (PXMessageSend classForSelector: self selector) receiver: self bubble selector: self selector arguments: arguments]).
	
	arguments ifEmpty: [self messageSend focusSelector] ifNotEmpty: [self messageSend focusArgumentAt: 1]