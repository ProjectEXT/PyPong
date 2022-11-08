extends Control

func _on_Ai_pressed():
	get_tree().change_scene("res://scenes/AIlevel.tscn")

func _on_Friend_pressed():
	get_tree().change_scene("res://scenes/Level.tscn")

func _on_Quit_pressed():
	get_tree().quit()
