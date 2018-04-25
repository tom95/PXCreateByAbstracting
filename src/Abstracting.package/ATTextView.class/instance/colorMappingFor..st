as yet unclassified
colorMappingFor: aSymbol

	| blue brown foreground green orange purple red yellow turquoise gray literal |
	foreground := Color fromString: '#4a4c54'.
	gray := Color fromString: '#696c77'.
	red := Color fromString: '#ca1243'.
	orange := Color fromString: '#e45649'.
	yellow := Color fromString: '#c18401'.
	brown := Color fromString: '#986801'.
	green := Color fromString: '#50a14f'.
	purple := Color fromString: '#a626a4'.
	blue := Color fromString: '#4078f2'.
	turquoise := Color fromString: '#0083be'.
	
	literal := green.
	
	^ (Dictionary newFrom: {
		#default -> foreground.
		#invalid -> red.
		#excessCode -> red.
		#comment -> gray.
		#unfinshedComment -> red.
		#'$' -> literal.
		#character -> literal.
		#integer -> literal.
		#number -> literal.
		#- -> literal.
		#symbol -> literal.
		#stringSymbol -> literal.
		#literalArray -> literal.
		#string -> literal.
		#unfinishedString -> red.
		#assignment -> foreground.
		#ansiAssignment -> foreground.
		#literal -> literal.
		#keyword -> purple.
		#binary -> purple.
		#unary -> purple.
		#incompleteKeyword -> red.
		#incompleteBinary -> red.
		#incompleteUnary -> red.
		#undefinedKeyword -> red.
		#undefinedBinary -> red.
		#undefinedUnary -> red.
		#patternBinary -> foreground.
		#patternUnary -> foreground.
		#self -> brown.
		#super -> brown.
		#true -> literal.
		#false -> literal.
		#nil -> literal.
		#thisContext -> brown.
		#return -> foreground.
		#patternArg -> turquoise.
		#methodArg -> turquoise.
		#blockPatternArg -> turquoise.
		#blockArg -> turquoise.
		#argument -> turquoise.
		#blockArgColon -> turquoise.
		#leftParenthesis -> foreground.
		#leftParenthesis1 -> foreground.
		#rightParenthesis -> foreground.
		#rightParenthesis1 -> foreground.
		#leftParenthesis2 -> foreground.
		#rightParenthesis2 -> foreground.
		#leftParenthesis3 -> foreground.
		#rightParenthesis3 -> foreground.
		#leftParenthesis4 -> foreground.
		#rightParenthesis4 -> foreground.
		#leftParenthesis5 -> foreground.
		#rightParenthesis5 -> foreground.
		#leftParenthesis6 -> foreground.
		#rightParenthesis6 -> foreground.
		#leftParenthesis7 -> foreground.
		#rightParenthesis7 -> foreground.
		#blockStart -> foreground.
		#blockEnd -> foreground.
		#blockStart1 -> foreground.
		#blockEnd1 -> foreground.
		#blockStart2 -> foreground.
		#blockEnd2 -> foreground.
		#blockStart3 -> foreground.
		#blockEnd3 -> foreground.
		#blockStart4 -> foreground.
		#blockEnd4 -> foreground.
		#blockStart5 -> foreground.
		#blockEnd5 -> foreground.
		#blockStart6 -> foreground.
		#blockEnd6 -> foreground.
		#blockStart7 -> foreground.
		#blockEnd7 -> foreground.
		#arrayStart -> foreground.
		#arrayEnd -> foreground.
		#arrayStart1 -> foreground.
		#arrayEnd1 -> foreground.
		#byteArrayStart -> foreground.
		#byteArrayEnd -> foreground.
		#byteArrayStart1 -> foreground.
		#byteArrayEnd1 -> foreground.
		#leftBrace -> foreground.
		#rightBrace -> foreground.
		#cascadeSeparator -> foreground.
		#statementSeparator -> foreground.
		#externalCallType -> Color magenta.
		#externalCallTypePointerIndicator -> Color magenta.
		#primtiveOrExternalCallStart -> Color magenta.
		#primitiveOrExternallCallEnd -> Color magenta.
		#methodTempBar -> gray.
		#blockTempBar -> gray.
		#blockArgsbar -> gray.
		#primitve -> Color magenta.
		#pragmaKeyword -> Color magenta.
		#pragmaUnary -> Color magenta.
		#pragmyBinary -> Color magenta.
		#externalFunctionCallingConvetion -> Color magenta.
		#module -> Color magenta.
		#blockTempVar -> gray.
		#blockPatternTempVar -> gray.
		#instVar -> foreground.
		#workspaceVar -> foreground.
		#undefinedIdentifier -> red.
		#incompleteIdentifier -> red.
		#tempVar -> gray.
		#patternTempVar -> gray.
		#patternKeyword -> foreground.
		#poolConstant -> gray.
		#classVar -> blue.
		#globalVar -> blue}) at: aSymbol