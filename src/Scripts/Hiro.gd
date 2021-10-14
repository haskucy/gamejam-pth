extends KinematicBody2D

export (int) var speed = 400
export (int) var GRAVITY = 1200
export (int) var jump_speed = -400

const UP = Vector2(0,-1)

var velocity = Vector2()

onready var animator = self.get_node("Animator")
onready var sprite = self.get_node("Sprite")

func get_input():
	pass

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	get_input()
	velocity = move_and_slide(velocity, UP)

func _process(_delta):
	if velocity.y != 0:
		animator.play("Jump")
	elif velocity.x != 0:
		animator.play("Walk")
		if velocity.x > 0:
			sprite.flip_h = false
		else:
			sprite.flip_h = true
	else:
		animator.play("Idle")
	
