extends CharacterBody2D


const SPEED = 170.0
const JUMP_VELOCITY = -340.0
var jCounter = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var imagePlayer1 = get_node("Player1")
@onready var imagePlayer2 = get_node("")

func _physics_process(delta):
	
	if Input.is_action_just_pressed("restart"):
		get_tree().change_scene_to_file("res://main_scene.tscn")
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		#if gravity < 0:
			

	# Handle jump.
	if is_on_floor() and jCounter == 1:
		jCounter -= 1
		
	if Input.is_action_just_pressed("player_jump") and is_on_floor() and jCounter == 0:
		velocity.y = JUMP_VELOCITY
		jCounter += 1
		
	if Input.is_action_just_pressed("player_jump") and not is_on_floor() and jCounter == 1:
		velocity.y = JUMP_VELOCITY
		jCounter -= 1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("player_left", "player_right")
	if direction:
		velocity.x = direction * SPEED
		imagePlayer1.flip_h = true
		#imagePlayer2.flip_h = true
		if direction < 0:
			imagePlayer1.flip_h = true
			#imagePlayer2.flip_h = true
		else:
			imagePlayer1.flip_h = false
			#imagePlayer2.flip_h = false
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
