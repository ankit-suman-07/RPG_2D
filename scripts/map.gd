extends Node2D

var score := 0
var key := false
var life := 3

func increase_score():
	score += 1
	Global.score = score
	$ScoreLabel.text = "Score: ♥" + str(score)
	print("Score:", score)

func get_score():
	return score

func toggle_key():
	key = true
	print("Key Taken:")
	
func get_key():
	return key
	
func update_life():
	life += 1
	$LifeLabel.text = "♥ x " + str(life)
	print("Life Achieved :", life)

func decrement_life():
	life -= 1
	$LifeLabel.text = "♥ x " + str(life)
	print("Life Taken :", life)

func get_life():
	return life
