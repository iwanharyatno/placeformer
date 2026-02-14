extends CanvasLayer


func _on_button_pressed() -> void:
	Main.gameController.change_screen("res://screens/game_play.tscn")
	Main.gameController.change_world("res://worlds/levels/first_level.tscn")


func _on_button_2_pressed() -> void:
	Main.gameController.change_screen("res://screens/game_play.tscn")
	Main.gameController.change_world("res://worlds/levels/second_level.tscn")
 
