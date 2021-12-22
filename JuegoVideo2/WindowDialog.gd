extends WindowDialog

func _ready():
	set_physics_process(true)
	set_process_input(true)
pass # Replace with function body.
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_cancel"):
		print(get_tree())
		get_tree().paused = false
		
