as yet unclassified
do

	action := PXReplace bubble: self bubble with: [PXBlock statements: {self bubble} temporaries: #() arguments: #()].
	action do