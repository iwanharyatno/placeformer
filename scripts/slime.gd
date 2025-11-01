extends Node2D

const SPEED = 60
var direction = 1

func _process(delta: float) -> void:
	if $MataKanan.is_colliding():
		direction = -1
		$AnimatedSprite2D.flip_h = true
	elif $MataKiri.is_colliding():
		direction = 1
		$AnimatedSprite2D.flip_h = false
	
	position.x += direction * SPEED * delta
