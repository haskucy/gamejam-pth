extends Node2D

var win_condition = false
export (String) var nextSceneifWin = "Level 2"

func reset_all():
	Global.win_jaku = false
	Global.win_hiro = false
	Global.button1 = false
	Global.button2 = false
	Global.button3 = false
	Global.button4 = false
	Global.button5 = false
	Global.button6 = false
	Global.button7 = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.win_jaku == true and Global.win_hiro == true:
		print("jaku hit 2")
		win_condition = true
		reset_all()
		get_tree().change_scene(str("res://Scenes/Level/" + nextSceneifWin + ".tscn"))
