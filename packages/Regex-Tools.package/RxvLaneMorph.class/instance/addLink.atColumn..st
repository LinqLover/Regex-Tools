building
addLink: anRxmLink atColumn: columnIndex

	| linkMorph |
	self assert: self submorphCount < columnIndex.
	columnIndex - self submorphCount - 1 timesRepeat:
		[self addSpacer].
	
	linkMorph := RxvLinkMorph forLink: anRxmLink.
	linkMorph hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	linkMorphs add: linkMorph.
	self addMorphBack: linkMorph.
	^ linkMorph