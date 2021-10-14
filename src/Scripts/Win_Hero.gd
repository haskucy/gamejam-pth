extends Area2D

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Hiro":
		Global.win_hiro = true


func _on_Win_Jaku_body_exited(body):
	if body.get_name() == "Hiro":
		Global.win_hiro = false
