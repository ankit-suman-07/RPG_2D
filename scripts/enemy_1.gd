extends CharacterBody2D

@export var speed := 100
var direction := Vector2.LEFT
var can_move := true

func _ready() -> void:
	$Area2D.body_entered.connect(_on_body_entered)

func _physics_process(delta: float) -> void:
	if can_move:
		velocity = direction * speed
		move_and_slide()

	if is_on_wall():
		direction = -direction

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		print("Player touched enemy!")
		var map = get_tree().get_root().get_node("map")
		map.decrement_life()
		if map.get_life() <= 0:
			get_tree().change_scene_to_file("res://scenes/game_over.tscn")
		self.queue_free()
