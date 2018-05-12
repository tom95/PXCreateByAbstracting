as yet unclassified
selector

	^ (1 to: self submorphCount by: 2) gather: [:index | (self submorphs at: index) text]