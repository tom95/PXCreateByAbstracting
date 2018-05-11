as yet unclassified
validValue

	self flag: #todo. " check for escaped ' "
	^ textEntry text size > 1 and: [textEntry text first = $' and: [textEntry text last = $']]