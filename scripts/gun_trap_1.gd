extends Node2D


# Called when the node enters the scene tree for the first time.
#func _ready():

func _on_trigger_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://tscn/bad_end_screen.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimationPlayer.play("gun shut")



