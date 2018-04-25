as yet unclassified
fitContents

	| f |
	f := self fontToUse.
	self extent: (((f widthOfString: string) max: self minimumWidth)  @ f height)