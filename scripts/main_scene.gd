extends Node2D

var con1 = 0
var con2 = 0
var con3 = 0
var con4 = 0
var con5 = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$TileMap/trigger_animation1/AnimationPlayer.play("RESET")
	$TileMap/trigger_animation2/AnimationPlayer.play("RESET")
	
func _on_trigger_1_body_entered(body):
	if body.name == "Player" and con1 == 0:
		$TileMap/trigger_animation1/AnimationPlayer.play("secret 1")
		con1 = 1

func _on_trigger_2_body_entered(body):
	if body.name == "Player":
		$TileMap/trigger_animation2/AnimationPlayer.play("teleport1")

func _on_trigger_3_body_entered(body):
	if body.name == "Player":
		$TileMap/trigger_animation3/AnimationPlayer.play("teleport2")

func _on_trigger_4_body_entered(body):
	if body.name == "Player":
		$TileMap/trigger_animation4/AnimationPlayer.play("teleport3")

func _on_trigger_5_body_entered(body):
	if body.name == "Player" and con2 == 0:
		$TileMap/trigger_animation5/AnimationPlayer.play("presure_button")
		con2 = 1

func _on_trigger_6_body_exited(body):
	if body.name == "Player" and con3 == 0:
		$TileMap/trigger_animation6/AnimationPlayer.play("secret2")
		con3 = 1

func _on_trigger_7_body_entered(body):
	if body.name == "Player" and con4 == 0:
		$TileMap/trigger_animation7/AnimationPlayer.play("secret3")
		con4 = 1

func _on_trigger_8_body_entered(body):
	if body.name == "Player" and con5 == 0:
		$TileMap/trigger_animation8/AnimationPlayer.play("presure_button1")
		con5 = 1

func _on_trigger_9_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://tscn/finish.tscn")

func _on_trigger_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://tscn/bad_end_screen.tscn")

