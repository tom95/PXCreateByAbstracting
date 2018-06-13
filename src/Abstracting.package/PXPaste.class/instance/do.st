as yet unclassified
do

	self bubble editor clipboard ifNotNil: [
		action := PXReplace bubble: self bubble with: self bubble editor clipboard.
		action do]