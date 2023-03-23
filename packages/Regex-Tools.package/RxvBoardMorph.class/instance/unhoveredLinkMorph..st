accessing
unhoveredLinkMorph: aLinkMorph

	(hoveredLinkMorph = aLinkMorph) ifTrue: [hoveredLinkMorph := nil].
	self updateDisplayStyles.