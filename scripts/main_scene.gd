extends Node2D

var counter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$TileMap/trigger_animation1/AnimationPlayer.play("RESET")
	$TileMap/trigger_animation2/AnimationPlayer.play("RESET")
	
func _on_trigger_1_body_entered(body):
	if body.name == "Player" and counter == 0:
		$TileMap/trigger_animation1/AnimationPlayer.play("secret 1")
		counter = 1
		
func _on_trigger_2_body_entered(body):
	if body.name == "Player":
		$TileMap/trigger_animation2/AnimationPlayer.play("teleport1")
		
func _on_trigger_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://tscn/bad_end_screen.tscn")



