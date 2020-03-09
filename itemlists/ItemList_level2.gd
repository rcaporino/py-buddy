extends ItemList

func _ready():
	clear()
	for i in range(max_columns*2):
		if i == 1:
			add_item("=", null, false)
		elif i == 2:
			add_item('"Joe"',null, false)
		else:
			add_item(" ", null, false)
		if(i % max_columns == 0):
			set_item_text(i, "     ")
			set_item_selectable(i, true)
		if(i == 0):
			select(i)
