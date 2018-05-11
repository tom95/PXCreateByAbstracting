as yet unclassified
do

	(self identifier replaceBy: [assignment := PXAssignment identifier: (PXVariableName name: self identifier value) statement: PXUnknown new]) focusStatement