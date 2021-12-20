extends KinematicBody


func _ready():
	set_physics_process(true)
	set_process_input(true)
pass # Replace with function body.
	
func _physics_process(delta):
	var t= get_transform()
	if Input.is_action_pressed("ui_d"):
		t.origin.x += 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_a"):
		t.origin.x -= 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_w"):
		t.origin.z -= 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_s"):
		t.origin.z += 10*delta
		set_transform(t)
