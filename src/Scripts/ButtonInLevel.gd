extends Area2D
func _ready():
	pass


func _on_Area2D_body_entered(body):
	if body.get_name() == "Jaku"  and Global.cooldownb1 == false :
		print("hitted")
		if Global.button1 == false:
			Global.button1 = true
		elif Global.button1 == true:
			Global.button1 = false
