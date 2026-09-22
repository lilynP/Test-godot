extends CanvasLayer

func _ready() -> void:
	hide() # Hide the win screen when the game starts

func show_win_screen() -> void:
	show()
   

func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()

func _on_quit_pressed() -> void:
	get_tree().quit()
