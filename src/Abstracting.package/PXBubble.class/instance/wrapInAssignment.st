edit actions
wrapInAssignment

	self
		deselect;
		run: (PXReplace bubble: self with: [PXAssignment identifier: (PXVariableName name: '') statement: self])