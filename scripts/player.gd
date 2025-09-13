extends CharacterBody2D

const gravity = 980

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	move_and_slide()
