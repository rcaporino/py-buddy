extends TextureButton

signal correct(solution)
signal wrong(error)

func _ready():
	pass

func _pressed():
	var itemlist = get_owner().find_node("myProblem")
	var solution = ""
	
	for i in range(itemlist.get_item_count()):
		solution += itemlist.get_item_text(i)
	
	print(solution)
	
	if (solution == 'print("Hello World")'):
		print("correct")
		emit_signal("correct", solution)
	else:
		print("nope")
		emit_signal("wrong", "wrong")