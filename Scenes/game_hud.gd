extends CanvasLayer

# TODO: Change this to a dedicated gameover screen
@onready var game_over_screen = preload("res://Scenes/start_screen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_end_game_pressed() -> void:
	get_tree().call_deferred('change_scene_to_packed', game_over_screen)
