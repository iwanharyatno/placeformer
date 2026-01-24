extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	Engine.time_scale = 0.5
	$AudioStreamPlayer.play()

func _on_audio_stream_player_finished() -> void:
	get_tree().reload_current_scene()
	Engine.time_scale = 1
	Main.total_score = 0
