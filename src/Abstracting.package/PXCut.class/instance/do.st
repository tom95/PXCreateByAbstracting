as yet unclassified
do

	self bubble editor clipboard: self bubble.
	action := PXReplace bubble: self bubble with: PXUnknown new.
	action do