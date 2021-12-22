extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if self.visible:
			get_tree().paused=false
			self.hide()
		else:
			get_tree().paused=true
			self.show()


func _on_btn_continue_pressed():
	get_tree().paused=false
	self.hide()
	pass # Replace with function body.


func _on_btn_menu_principal_pressed():
	get_tree().change_scene("res://Menu.tscn")
	get_tree().paused=false
	pass # Replace with function body.


func _on_btn_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.
