extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var SoundEffects
var backgroundMusic = preload("res://Labs/infinite_runner/backgroundMusic.tscn")

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	SoundEffects = get_node("../sound_effects")

func _physics_process(delta):
	# Add the gravity.
	$"../AudioStreamPlayer".play()
	
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$"../SoundEffects/jump2".play()

	velocity.x = SPEED
	move_and_slide()
