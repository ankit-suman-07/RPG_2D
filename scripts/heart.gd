extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		var map = get_tree().get_root().get_node("map")
		map.update_life()
		self.queue_free()
