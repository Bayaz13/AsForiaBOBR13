extends KinematicBody2D

var speed = 51
var jumpForce = 200
var gravity = 200
var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("dvig vlevo") :
		vel.x -= speed
	elif  Input.is_action_pressed("dvig vpravo"):
		vel.x += speed
	else :
		vel.x = 0
		
	vel.y += gravity * delta
		
	if Input.is_action_pressed("jump") and is_on_floor():
		vel.y -= jumpForce
		
	vel = move_and_slide(vel, Vector2.UP)
	
	if vel.x < 0:
		$"Photo2024-06-1914-21-42-no-bg-preview(carvephotos)".flip_h = true
	elif vel.x > 0:
		$"Photo2024-06-1914-21-42-no-bg-preview(carvephotos)".flip_h = false
