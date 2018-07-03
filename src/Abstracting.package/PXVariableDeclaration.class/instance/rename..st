as yet unclassified
rename: aString

	| oldName |
	self flag: #todo. " wrap in command and add undo support "
	oldName := self name.
	
	self isInstanceVariable
		ifTrue: [
			self editor methods do: [:method | self rename: aString from: oldName inMethod: method].
			self editor contextClass removeInstVarName: oldName.
			self editor contextClass addInstVarName: aString]
		ifFalse: [self rename: aString from: oldName inMethod: self method].
		
	self name: aString