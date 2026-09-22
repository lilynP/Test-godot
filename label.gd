extends Label

func _ready() -> void:
	EventController.coin_collected.connect(_on_coin_collected)
	text = str(GameController.total_coins)

func _on_coin_collected(new_total: int) -> void:
	text = str(new_total)
