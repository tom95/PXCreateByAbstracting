as yet unclassified
rename: aString

	| oldName |
	self flag: #todo. " wrap in command and add undo support "
	oldName := self name.
	self name: aString.
	
	self method allMorphsDo: [:m |
		(m isBubble and: [(m isIdentifier or: [m isVariableName]) and: [m data = oldName]]) ifTrue: [
			m
				data: aString;
				uneditedName: aString;
				changed]]