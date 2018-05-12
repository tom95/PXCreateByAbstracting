as yet unclassified
validValue

	self flag: #todo. " check for escaped ' "
	^ textEntry text size > 2 and: [(textEntry text first = $' and: [textEntry text last = $']) or: [textEntry text allSatisfy: #tokenish]]