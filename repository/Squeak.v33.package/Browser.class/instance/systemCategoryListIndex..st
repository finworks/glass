system category list
systemCategoryListIndex: anInteger 
	"Set the selected system category index to be anInteger. Update all other 
	selections to be deselected."

	systemCategoryListIndex := anInteger.
	classListIndex := 0.
	messageCategoryListIndex := 0.
	messageListIndex := 0.
	self editSelection: ( anInteger = 0 ifTrue: [#none] ifFalse: [#newClass]).
	metaClassIndicated := false.
	self setClassOrganizer.
	contents := nil.
	self changed: #systemCategorySelectionChanged.
	self changed: #systemCategoryListIndex.	"update my selection"
	self changed: #classList.
	self changed: #messageCategoryList.
	self changed: #messageList.
	self changed: #relabel.
	self contentsChanged