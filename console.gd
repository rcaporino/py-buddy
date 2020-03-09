extends "res://topTextEdit.gd"

func _ready():
	pass

func _on_run_wrong(error):
	set_readonly(false)
	set_text(' Console: \n Error: You are trying to create \n print("Hello World")')
	set_readonly(true)
	pass # Replace with function body.


func _on_run_correct(solution):
	set_readonly(false)
	set_text(" Console: \n Hello World")
	set_readonly(true)
	pass # Replace with function body.
