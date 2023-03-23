*Regex-Tools
asMorphForContext: aContext

	| matchContexts startContext morph |
	matchContexts := OrderedCollection new.
	startContext := aContext ifNotNil:
		[aContext stack tdbproxyYourself detect: [:octx | | ctx |
			ctx := (thisContext objectClass: aContext) isTdbProxyClass
				ifFalse: [octx]
				ifTrue:
					[(thisContext objectClass: octx) isTdbMemorySliceClass
						ifFalse: [aContext xxxtdbproxyMemory object: octx atTime: aContext xxxtdbproxyTimeIndices first]
						ifTrue: [octx atTime: aContext xxxtdbproxyTimeIndices first]].
			ctx selector = #matchAgainst: ifTrue:
				[matchContexts addFirst: ctx].
			(ctx receiver tdbIdentical: self) and: [ctx selector = #tryMatch]]].
	
	morph := matcher asBoardMorph.
	matchContexts ifNotEmpty:
		[morph
			activeLinkChain: (matchContexts collect: [:ctx | ctx receiver tdbproxyYourself])
			currentResult:
				((matchContexts last receiver isKindOf: RxmTerminator)
					ifTrue: ["constant return" true]
					ifFalse:
						[matchContexts last willReturn
						ifTrue: [matchContexts last top]])].
	^ morph