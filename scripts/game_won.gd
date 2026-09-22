
extends Control  # change the node type to Control, or keep Node and adjust

@onready var canvas := $CanvasLayer

func _ready() -> void:
	print("GameWon ready")   # <-- add this
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	canvas.hide()
	EventController.game_won.connect(_on_game_won)

func _on_game_won() -> void:
	print("GameWon screen shown")
	canvas.show()
	get_tree().paused = true

func _on_button_pressed() -> void:
	GameController.reset()
	get_tree().paused = false
	get_tree().reload_current_scene()
	
