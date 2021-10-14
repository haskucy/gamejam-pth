extends KinematicBody2D


export (int) var position_x_moves = 400
export (int) var position_y_moves = 400
export (String) var moves = "UP"
export (String) var what_wall = "wall1"
export (int) var movement = 1000

var velocity = Vector2()
var gwall = Global.button1
var cooldownwall = Global.cooldownb1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.button1 == true and position_x_moves>0:
		print(Global.button1)
		Global.cooldownb1 = true
		velocity.y -= movement
		position_x_moves-= 1
	elif Global.button1 == false and position_x_moves<400:
		print("hitted abb")
		velocity.y += movement
		position_x_moves+= 1
		Global.cooldownb1 = true
	elif Global.cooldownb1 == true:
		print("hitted acc")
		Global.cooldownb1= false
	
