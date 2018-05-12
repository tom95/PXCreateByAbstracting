edit actions
wrapInBlock

	self
		deselect;
		run: (PXReplace bubble: self with: [PXBlock statements: {self} temporaries: #() arguments: #()])