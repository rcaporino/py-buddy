extends Button

func _ready():
	pass

func _pressed():
	var itemlist = get_node("../../myProblem")
	var selectedIndx = itemlist.get_selected_items()
	if(selectedIndx[0] % itemlist.max_columns == 0):
			prnt(itemlist, selectedIndx[0])

func prnt(il, indx):
	var goal = indx + 4
	while(indx < goal):
		print(indx)
		match (indx % il.max_columns):
			0:
				il.set_item_text(indx, "print")
			1:
				il.set_item_text(indx, "(")
			2:
				il.set_item_text(indx, "______")
				il.set_item_selectable(indx, true)
				il.select(indx)
			3: 
				il.set_item_text(indx, ")")
			_:
				print("something went wrong")
		indx = indx + 1
		