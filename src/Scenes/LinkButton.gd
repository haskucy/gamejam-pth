extends LinkButton

export(String) var scene_to_load

func _on_LinkButton_pressed():
	print(scene_to_load)
	get_tree().change_scene(str("res://Scenes/Level/" + scene_to_load + ".tscn"))
	
