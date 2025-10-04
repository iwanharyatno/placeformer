extends CharacterBody2D

const gravity = 980
const speed = 120
const jump_force = 300

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# direction itu 1: gerak ke kanan
	# direction itu -1: gerak ke kiri
	# direction itu 0: diam
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	
	if direction > 0:
		$AnimatedSprite2D.flip_h = false
	elif direction < 0:
		$AnimatedSprite2D.flip_h = true
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = -jump_force
	
	if direction != 0:
		$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("default")
	
	move_and_slide()
