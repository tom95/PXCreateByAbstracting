as yet unclassified
regexConvertAction

	^ (PHDropdownItem label: 'As Regex') when: #clicked send: #toRegex to: self