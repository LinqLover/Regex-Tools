event handling
mouseEnter: anEvent

	self mouseState: #hovering.
	self board hoveredLinkMorph: self.