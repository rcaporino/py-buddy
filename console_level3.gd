extends TextEdit


func _on_run_level3_wrong(error):
	set_readonly(false)
	set_text(' Console: \n Error: Think about how you would\n join the two variables like in the\n snowball example above')
	set_readonly(true)


func _on_run_level3_correct(solution):
	set_readonly(false)
	set_text(" Console: \n Somehow")
	set_readonly(true)

