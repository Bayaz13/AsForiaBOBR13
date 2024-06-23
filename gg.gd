extends KinematicBody2D

var speed = 36
var jumpForce = 770
var gravity = 800

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("dvig vlevo") :
		vel.x -= speed
	elif  Input.is_action_pressed("dvig vpravo") :
		vel.x += speed
	else :
		vel.x = 0
		
	vel.y += gravity * delta
		
	if Input.is_action_pressed("jump") and is_on_floor():
		vel.y -= jumpForce
		
	vel = move_and_slide(vel, Vector2.UP)
