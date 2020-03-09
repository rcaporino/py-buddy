extends TextEdit

func _on_run_level2_correct(solution):
	set_readonly(false)
	set_text(" Console: \n Joe")
	set_readonly(true)
	pass 


func _on_run_level2_wrong(error):
	set_readonly(false)
	set_text(' Console: \n Error: You need to set the \n variable name equal to "Joe".\n Then use the print function\n to display the name.')
	set_readonly(true)
	pass
