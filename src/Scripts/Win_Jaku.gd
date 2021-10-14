extends Area2D

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Jaku":
		Global.win_jaku = true
		print("jaku hit 1")


func _on_Win_Jaku_body_exited(body):
	if body.get_name() == "Jaku":
		Global.win_jaku = false
