accessing
allLinkMorphsDo: aBlock

	self lanes do: [:lane |
		lane linkMorphsDo: aBlock].