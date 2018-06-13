as yet unclassified
triggerForShortcut: anEvent do: aBlock

	^ (self triggerForShortcut: anEvent) ifTrue: aBlock