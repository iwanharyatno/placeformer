extends Area2D

func _physics_process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	$AudioStreamPlayer.play()
	$AnimatedSprite2D.visible = false
	Main.total_score += 1
	
	print("Total Coin:", Main.total_score)


func _on_audio_stream_player_finished() -> void:
	queue_free()
