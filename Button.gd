extends Button


# Called when the node enters the scene tree for the first time.
func _on_Button_pressed():
	get_three().change_scene("res://main_scene.tscn")
