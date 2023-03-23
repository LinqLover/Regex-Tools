accessing
findLink: anRxmLink

	self lanes do: [:lane |
		(lane findLink: anRxmLink)
			ifNotNil: [:linkMorph | ^ linkMorph]].
	^ nil