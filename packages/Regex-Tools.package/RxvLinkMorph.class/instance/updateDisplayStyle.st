updating
updateDisplayStyle

	| baseColor |
	baseColor := "self isActive
		ifTrue:
			[((self link isKindOf: RxmTerminator)
				ifTrue: [Color green]
				ifFalse: [Color red]) twiceLighter]
		ifFalse:
			[self isIndirectlyActive
				ifTrue: [Color orange twiceLighter]
				ifFalse: [Color veryLightGray lighter]]"
		self state caseOf:
			{[true] -> [Color green adjustSaturation: -0.45 brightness: -0].
			[false] -> [Color red adjustSaturation: -0.45 brightness: -0].
			[#active] -> [Color yellow adjustSaturation: -0.45 brightness: -0].
			[nil] -> [Color veryLightGray lighter]}.
	(mouseState isNil and: [self isIndirectlyHovered]) ifTrue:
		[self
			color: baseColor darker;
			borderColor: Color gray darker.
		^ self].
	mouseState caseOf:
		{[nil] ->
			[self
				color: baseColor;
				borderColor: Color transparent].
		[#hovering] ->
			[self
				color: baseColor twiceDarker;
				borderColor: Color gray twiceDarker darker].
		[#pressing] ->
			[self
				color: baseColor twiceDarker darker;
				borderColor: Color gray twiceDarker twiceDarker]}.