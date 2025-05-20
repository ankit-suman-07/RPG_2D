extends Control

func _on_ready() -> void:
	$ScoreLabel.text = "Score: " + str(Global.score)
	
func _on_play_game_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/map.tscn")
	



func _on_exit_btn_pressed() -> void:
	get_tree().quit()
