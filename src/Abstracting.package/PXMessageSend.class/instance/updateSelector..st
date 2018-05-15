as yet unclassified
updateSelector: aSymbol
	Transcript show: aSymbol.
	Transcript show: messagePartTextEntries .
	"transition to keyword message"
	( self messageSymbol isKeyword not and: aSymbol isKeyword) ifTrue: [
		PXUnknown new addTo: self; focus].
	"transition back from keyword message"
	(self messageSymbol isKeyword and: aSymbol isKeyword not) ifTrue: [
		(self submorphs after: messagePartTextEntries last) remove].
	
	self updateMessagePartsToMatch: aSymbol.
	