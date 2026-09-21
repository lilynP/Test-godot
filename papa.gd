extends Node
@export var value: int = 1 # Your coin value if you have one


func _on_area_2d_body_entered(body: Node) -> void:
	if body is CharacterBody2D:
		GameController.coin_collected(value)
		
		# 1. Hide the visual elements instantly
		if has_node("AnimatedSprite2D"):
			get_node("AnimatedSprite2D").hide()
			
		if has_node("Area2D/CollisionShape2D"):
			get_node("Area2D/CollisionShape2D").set_deferred("disabled", true)
		
		# 2. Find and play the sound safely without needing variables at the top
		var tf2_player = get_node("Tf2Player")
		
		if tf2_player != null:
			tf2_player.play()
			await tf2_player.finished
		
		
		# 3. Destroy papa safely
		self.queue_free()
