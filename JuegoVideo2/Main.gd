extends Spatial

var contador = 10;

func _ready():
	set_physics_process(true)
	set_process_input(true)
	$Timer.start()
	get_tree().paused=true
	
	
	
pass # Replace with function body.
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		pass
		
		


func _on_Timer_timeout():
	contador = $Timer._count
	$score/VBoxContainer/Label.text = str($Timer._count)
	if contador == 0:
		get_tree().paused=false
	pass # Replace with function body.



