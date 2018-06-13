as yet unclassified
click: anEvent

	| candidates |
	candidates := self morphsAt: anEvent position.
	candidates first  ~~ self
		ifTrue: [candidates first mouseDown: anEvent]
		ifFalse: [self select; focus]