extends MeshInstance

func _process(delta):
	if is_ray_pickable() and Input.is_mouse_button_pressed(BUTTON_LEFT):
		print("Object is currently focused")
	else:
		print("Object is not focused")
