extends Node2D

var score := 0
var key := false
var life := 3

func increase_score():
	score += 1
	print("Score:", score)

func toggle_key():
	key = true
	print("Key Taken:")
	
func update_life():
	life += 1
	print("Life Achieved :", life)

func decrement_life():
	life -= 1
	print("Life Taken :", life)
