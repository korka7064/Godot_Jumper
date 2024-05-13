extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/return.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_return_pressed():
	get_tree().change_scene_to_file("res://tscn/menu.tscn")


func _on_retry_pressed():
	get_tree().change_scene_to_file("res://tscn/main_scene.tscn")


func _on_exit_pressed():
	get_tree().quit()
