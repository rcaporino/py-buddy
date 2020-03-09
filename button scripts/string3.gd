extends TextureButton

func _ready():
	pass

func _pressed():
	var itemlist = get_owner().find_node("myProblem")
	var selectedIndx = itemlist.get_selected_items()
	itemlist.set_item_text(selectedIndx[0], "string3")
	for i in itemlist.get_item_count():
		if(itemlist.get_item_text(i) == "_____"):
			itemlist.select(i)
			break