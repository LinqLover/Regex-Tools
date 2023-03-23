accessing
state: aBooleanOrSymbolOrNil

	self assert: (#(true false active nil) includes: aBooleanOrSymbolOrNil).
	state := aBooleanOrSymbolOrNil.