extends Control

func _ready():
	pass
	
func _process(delta):
	if(OS.has_virtual_keyboard() == true):
    	OS.hide_virtual_keyboard()

	pass
