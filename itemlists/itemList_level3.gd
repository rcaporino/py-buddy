extends ItemList

func _ready():
	clear()
	
	var default = 'string1,=,"Some", , , , , , , , ,string2,=,"how", , , , , , , , ,string3,=,_____,+,_____, , , , , , ,print,(,_____,),'
	var defaultArr = default.split(",")
	
	for i in range(defaultArr.size()):
		add_item(defaultArr[i], null, false)
		if(defaultArr[i] == "_____"):
			set_item_selectable(i,true)
		if(defaultArr[i] == "print"):
			set_item_custom_fg_color (i, Color("#b15cff"))
		if(i % max_columns == 0):
			if(get_item_text(i) == "     "):
				set_item_selectable(i, true)
	
	for i in get_item_count():
		if (get_item_text(i) == "_____"):
			select(i)
			break
	