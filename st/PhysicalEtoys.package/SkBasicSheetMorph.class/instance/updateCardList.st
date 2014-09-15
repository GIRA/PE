updating
updateCardList
	| cardList morph |
	cardList _ model cardList: self visibleArea.
	self
		removeAllMorphsIn: (self submorphs
				select: [:m | m class == SkCardMorph]).
	cardList
		do: [:cardInfo | 
			morph _ SkCardMorph model: cardInfo value.
			morph holder: self.
			self addMorph: morph.
			morph cellOrigin: cardInfo key].
	selectionMorph hide