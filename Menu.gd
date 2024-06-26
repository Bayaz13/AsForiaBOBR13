extends Node2D

func _ready():
	pass
	
	
	
func _process(delta):
		pass

func _on_quit_pressed():
	get_tree().quit()

func _on_new_game_pressed():
	get_tree().change_scene("res://Main.tscn")

func _physics_process(delta):
	if Input.is_action_pressed("inMenu"):
		get_tree().change_scene("res://Menu.tscn")
		

