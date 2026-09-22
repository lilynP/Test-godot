extends Node
@export var coins_to_win: int = 6
var total_coins: int = 0
var game_over: bool = false

func win() -> void:
	if game_over:
		return
	game_over = true
	print("WIN fired, emitting game_won")
	EventController.game_won.emit()
	
func coin_collected(value: int = 1) -> void:
	total_coins += value
	EventController.coin_collected.emit(total_coins)
	
	if total_coins >= 6:
		win()
func reset() -> void:
	total_coins = 0
	game_over = false
	EventController.coin_collected.emit(total_coins)  # refresh the UI label
