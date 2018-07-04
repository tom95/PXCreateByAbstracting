accessing
buttonForAction: anActionClass

	^ (PHButton label: anActionClass description, (self labelForShortcut: anActionClass shortcut ifAny: [:s | '(', s, ')']))
		align: #(fill fill);
		when: #clicked send: #runAction: to: self selectedBubble with: anActionClass;
		small