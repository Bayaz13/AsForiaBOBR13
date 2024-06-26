extends Control


func _ready():
	pass
	
	
	
func _process(delta):
		pass

func _on_quit_pressed():
	get_tree().quit()

func _on_new_game_pressed():
	get_tree().change_scene("res://Main.tscn")


