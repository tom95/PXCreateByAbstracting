as yet unclassified
contextActions
	
	| actions |
	actions := super contextActions asOrderedCollection.
	
	self resolveDeclaration ifNil: [
		actions
			add: ((PHDropdownItem label: 'Declare new inst var') when: #clicked send: #declareNewInstanceVar to: self);
			add: ((PHDropdownItem label: 'Declare new temp var') when: #clicked send: #declareNewTempVar to: self).
		
		self containingBlock ~~ self method block ifTrue: [
			actions add: ((PHDropdownItem label: 'Declare new block temp var') when: #clicked send: #declareNewBlockVar to: self)].
		
		(self uneditedName notNil and: [(self resolveDeclaration: self uneditedName) notNil]) ifTrue: [
			actions add: ((PHDropdownItem label: 'Rename ''', self uneditedName, ''' to ''', textEntry text, '''') when: #clicked send: #renameDeclaration to: self)]].
	
	^ actions