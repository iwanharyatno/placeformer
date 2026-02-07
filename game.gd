class_name GameController
extends Node2D

var world: Node2D
var gui: CanvasLayer

var current_world: Node2D
var current_gui: CanvasLayer

func _ready() -> void:
	Main.gameController = self
	
	world = $World
	gui = $GUI
	
	current_world = $World/Home
	current_gui = $GUI/Home

func change_screen(path):
	if current_gui:
		gui.remove_child(current_gui)
	var newScene = load(path).instantiate()
	gui.add_child(newScene)
	current_gui = newScene
	
func change_world(path):
	if current_world:
		world.remove_child(current_world)
	var newWorld = load(path).instantiate()
	world.add_child(newWorld)
	current_world = newWorld
