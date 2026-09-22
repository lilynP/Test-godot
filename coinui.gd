extends Control

@onready var label = $CanvasLayer
var coins = 0
func _ready():
	EventController.connect("coin_collected", on_event_coin_collected)
	
func on_event_coin_collected(value: int, count:int) -> void:
	coins += count
	label.text = str(value)
