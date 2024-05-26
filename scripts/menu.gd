extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.mouse_get_mode()
	$VBoxContainer/StartButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://tscn/main_scene.tscn")

func _on_option_button_pressed():
	get_tree().change_scene_to_file("res://tscn/options.tscn")

func _on_exit_button_pressed():
	get_tree().quit()



