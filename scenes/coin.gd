extends Area2D



func _ready():
	print("Coin ready")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("collide")
		var map = get_tree().get_root().get_node("map")
		map.increase_score()
		self.queue_free()
