extends Control

func _ready():
	$AnimationPlayer.play("RESET")
	$Menu2/Resume.grab_focus()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("esc_blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("esc_blur")

func testEsc():
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()

func _on_resume_pressed():
	resume()


func _on_restart_pressed():
	resume()
	get_tree().reload_current_scene()


func _on_exit_to_menu_pressed():
	get_tree().change_scene_to_file("res://tscn/menu.tscn")


func _on_exit_to_dectop_pressed():
	get_tree().quit()

func _process(delta):
	testEsc()



