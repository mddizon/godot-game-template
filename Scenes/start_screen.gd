extends Control

@export var skip_intro = false
@onready var settings = preload("res://Scenes/settings.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_game_pressed() -> void:
	if (skip_intro):
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/intro_screen.tscn")


func _on_settings_pressed() -> void:
	get_tree().root.add_child(settings.instantiate())
	pass


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")
