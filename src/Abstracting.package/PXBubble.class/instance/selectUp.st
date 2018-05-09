as yet unclassified
selectUp

	self selected
		ifTrue: [self owner isRoot not ifTrue: [self owner selectUp]]
		ifFalse: [
			selected := true.
			self root didSelect: self.
			self changed]