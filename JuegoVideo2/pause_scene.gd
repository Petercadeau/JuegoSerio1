extends Control


func _ready():
	set_physics_process(true)
	set_process_input(true)
pass # Replace with function body.
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().paused=not get_tree().paused
		"""if $Control.visible:
			$Control.hide()
			get_tree().paused = false
			set_physics_process(true)
			set_process_input(true)
		else:
			$Control.visible = true
			$Control.show()
			get_tree().paused = true"""
