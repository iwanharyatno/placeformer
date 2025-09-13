extends CharacterBody2D

const gravity = 980
const speed = 120
const jump_force = 300

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	
	if direction > 0:
		$AnimatedSprite2D.flip_h = false
	elif direction < 0:
		$AnimatedSprite2D.flip_h = true
		
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = -jump_force
	
	move_and_slide()
