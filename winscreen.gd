extends Control

func _ready() -> void:
	hide()
	EventController.game_won.connect(_on_game_won)

func _on_game_won() -> void:
	show()
	get_tree().paused = true

func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
