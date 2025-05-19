extends Area2D

func _ready():
	print("Coin ready")

func _on_body_entered(body: Node2D) -> void:
	print("Entered:", body.name)
	if body.is_in_group("player"):
		print("collide")
		queue_free()
