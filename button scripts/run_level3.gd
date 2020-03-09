extends TextureButton

signal correct(solution)
signal wrong(error)
signal level(lvl)

func _pressed():
	var itemlist = get_owner().find_node("myProblem")
	var submissionString = ""
	var finalSubmission = ""
	var submissionArray = []
	for i in range(itemlist.get_item_count()):
		submissionString += itemlist.get_item_text(i)
	
	submissionArray = submissionString.split(" ")
	for s in submissionArray:
		finalSubmission += s
	if (finalSubmission == 'string1="Some"string2="how"string3=string1+string2print(string3)'):
		print("correct")
		emit_signal("correct", finalSubmission)
		emit_signal("level", 2)
	else:
		print("nope")
		emit_signal("wrong", "wrong")