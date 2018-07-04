as yet unclassified
searchRenames

	| newSelector |
	newSelector := Parser new parseSelector: self newSource.
	renamed := Array streamContents: [:stream |
			self editor methods do: [:method | method allMorphsDo: [:morph |
				(morph isBubble and: [morph isMessageSend and: [morph selector = self oldSelector and: [morph receiver isSelf]]])
					ifTrue: [stream nextPut: morph]]]].
		renamed do: [:message | message selector: newSelector]