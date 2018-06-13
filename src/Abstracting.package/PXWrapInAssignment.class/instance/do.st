as yet unclassified
do

	action := PXReplace bubble: self bubble with: [PXAssignment identifier: (PXVariableName name: '') statement: self bubble].
	action do