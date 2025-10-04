extends Area2D

func _physics_process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	queue_free()
