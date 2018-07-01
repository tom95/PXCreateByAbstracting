as yet unclassified
validRegex

	^ [RxParser parse: textEntry text. true] on: RegexSyntaxError do: [false]