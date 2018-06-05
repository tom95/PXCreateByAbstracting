accessing
editor: anEditor
	
	anEditor when: #saved send: #runMethod: to: self.
	self add: anEditor.
	^ editor := anEditor