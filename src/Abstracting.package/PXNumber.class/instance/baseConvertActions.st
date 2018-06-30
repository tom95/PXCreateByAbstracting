as yet unclassified
baseConvertActions

	^ Array streamContents: [:stream |
		(textEntry text beginsWith: '2r')
			ifFalse: [stream nextPut: ((PHDropdownItem label: 'To Binary') when: #clicked send: #toBase: to: self with: 2)].
		(textEntry text beginsWith: '16r')
			ifFalse: [stream nextPut: ((PHDropdownItem label: 'To Hexadecimal') when: #clicked send: #toBase: to: self with: 16)].
		(textEntry text includes: $r)
			ifTrue: [stream nextPut: ((PHDropdownItem label: 'To Decimal') when: #clicked send: #toBase: to: self with: 10)].]