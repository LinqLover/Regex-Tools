*Regex-Tools
rxvLabel

	(predicate isBlock and: [predicate receiver isKindOf: RxsPredicate orOf: RxMatcher]) ifTrue:
		[(predicate method selector = #syntaxCharacter:) ifTrue:
			[^ (predicate at: 1) printString].
		^ '{1} {2}' format: {predicate method selector. ((1 to: predicate basicSize) collect: [:i | (predicate at: i) printString]) joinSeparatedBy: Character space}].
	^ 'predicate ({1})' format: {predicate asString}