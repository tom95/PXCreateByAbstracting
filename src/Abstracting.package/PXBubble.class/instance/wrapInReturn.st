edit actions
wrapInReturn

	self
		deselect;
		run: (PXReplace bubble: self with: [PXReturn statement: self])