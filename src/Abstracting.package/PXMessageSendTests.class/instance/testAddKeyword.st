as yet unclassified
testAddKeyword

	| messageSend receiver owner |
	owner := PXEditor for: Object.
	receiver := PXIdentifier new data: 'self'.
	messageSend := PXKeywordMessageSend receiver: receiver selector: #do:while: arguments: #().
	owner add: messageSend.
	(self expect: messageSend submorphs size) to be: 4.
	"todo
	messageSend run: (PXChangeMessage of: messageSend content: #do:while:).
	
	(self expect: messageSend submorphs size) to be: 5.
	(self expect: (messageSend submorphs at: 4) text) to equal: 'while:'.
	(self expect: messageSend submorphs last class) to be: PXUnknown."