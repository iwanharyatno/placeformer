extends CharacterBody2D

const gravity = 980

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * 400
	
	move_and_slide()
