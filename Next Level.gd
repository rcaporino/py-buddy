extends TextureButton

var nextLvl = ""

func _pressed():
	get_tree().change_scene(get_next_path())
	print(nextLvl)

func get_next_path():
	var nextPath = "res://Scenes/" + nextLvl + ".tscn"
	print(nextPath)
	return nextPath

func _on_run_level3_correct(solution):
	nextLvl = "TitleScreen"

func _on_run_level2_correct(solution):
	nextLvl = "Level3"
	print(nextLvl)


func _on_run_correct(solution):
	nextLvl = "level2"
