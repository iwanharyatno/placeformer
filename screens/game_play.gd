extends CanvasLayer

func _process(delta: float) -> void:
	$Label.text = "Score: " + str(Main.total_score)
