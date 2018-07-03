as yet unclassified
prettyCodeString

	| class |
	class := self method contextClass.
	^ class prettyPrinterClass 
		format: self codeString
		in: class
		notifying: nil