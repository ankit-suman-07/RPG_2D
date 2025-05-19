extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("collide")
		var map = get_tree().get_root().get_node("map")
		if map.get_key() == true:
			print("Winner")
