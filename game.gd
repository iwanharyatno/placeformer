class_name GameController
extends Node2D

var world: Node2D
var gui: CanvasLayer

var current_world: Node2D
var current_gui: CanvasLayer

func _ready() -> void:
	world = $World
	gui = $GUI
	
	current_world = $World/Home
	current_gui = $GUI/Home

func change_screen(path):
	pass
	
func change_world(path):
	pass
