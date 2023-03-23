updating
updateDisplayStyle

	self
		borderWidth: 2 px;
		borderColor: ((self isIndirectlyActive ifTrue: [Color black] ifFalse: [Color lightGray]) alpha:
			(self isIndirectlyHovered
				ifTrue: [0.9]
				ifFalse: [0.3])).