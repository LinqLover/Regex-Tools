accessing
activeLinkChain: links currentResult: aBoolean

	| linkMorphs |
	linkMorphs := OrderedCollection new.
	links do: [:link |
		(linkMorphs add: (self findLink: link)) state: (link == links last ifTrue: [aBoolean] ifFalse: [#active])].
	
	self allArrowMorphsDo: [:arrow |
		arrow isIndirectlyActive: false].
	linkMorphs overlappingPairsDo: [:firstLink :secondLink |
		(self arrowFrom: firstLink to: secondLink) isIndirectlyActive: true].
	self updateDisplayStyles.
	
	activeLinkChain := links.
	threadMorph show.