testing
testUnsubscribeSet
	| announcement |
	announcer
		subscribe: AnnouncementMockA , AnnouncementMockB
		do: [ :ann | announcement := ann ]
		for: self.
	announcer
		unsubscribe: self.

	announcement := nil.
	announcer announce: AnnouncementMockA new.
	self assert: announcement isNil.
	
	announcement := nil.
	announcer announce: AnnouncementMockB new.
	self assert: announcement isNil.