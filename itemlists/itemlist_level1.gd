extends ItemList


func _ready():
	clear()
	for i in range(max_columns):
		add_item("     ", null, false)
		if(i % max_columns == 0):
			set_item_selectable(i, true)
		if(i == 0):
			select(i)
	pass


