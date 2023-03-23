accessing
activeLinkMorph: aLinkMorph

	activeLinkMorph ifNotNil:
		[activeLinkMorph active: false].
	activeLinkMorph := aLinkMorph.
	aLinkMorph ifNotNil:
		[activeLinkMorph active: true].
	self updateDisplayStyles.