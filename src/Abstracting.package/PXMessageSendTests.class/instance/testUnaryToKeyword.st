as yet unclassified
testUnaryToKeyword

	| messageSend receiver owner |
	owner := PXEditor for: Object.
	receiver := PXIdentifier new data: 'self'.
	messageSend := PXKeywordMessageSend receiver: receiver selector: #do arguments: #().
	owner add: messageSend.
	(self expect: messageSend submorphs size) to be: 2.
	"todo
	messageSend run: (PXChangeMessage of: messageSend content: #do:).
	
	(self expect: messageSend submorphs size) to be: 3.
	(self expect: messageSend submorphs second text) to equal: 'do:'.
	(self expect: messageSend submorphs third class) to be: PXUnknown."