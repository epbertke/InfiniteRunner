extends Area2D

var animatedSprite


# Called when the node enters the scene tree for the first time.n 
func _ready() -> void:
	animatedSprite = get_node("../../runner/InfinitePlayer/AnimatedSprite2D") # Replace with function body.
	print(animatedSprite)
	$"../../../runner/InfinitePlayer/AnimatedSprite2D".play("run") 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("As a body the same size")
	$"../../../runner/InfinitePlayer/AnimatedSprite2D".play("crash")  # Switch to the crash animation 
	$"../SoundEffects/crash2".play() 
