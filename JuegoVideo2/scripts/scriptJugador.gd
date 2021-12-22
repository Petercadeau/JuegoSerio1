extends RigidBody


func _ready():
	set_physics_process(true)
	set_process_input(true)
pass # Replace with function body.



var turn = 0
export var steering_limit = 10.0
var steer_angle = 0.0

func _physics_process(delta):
	var t= get_transform()
	if Input.is_action_pressed("ui_right"):
		if turn < 9:
			t.origin.x -= 1*delta
			turn += Input.get_action_strength("ui_right")/4
			steer_angle = turn * deg2rad(steering_limit)
			rotateAround(get_node("mesh_police_car"),Vector3(0,1,0),Vector3(0,1,0),steer_angle)
		else:
			t.origin.x -= 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_left"):
		if turn > -9:
			t.origin.x += 1*delta
			turn -= Input.get_action_strength("ui_left")/4
			steer_angle = turn * deg2rad(steering_limit)
			rotateAround(get_node("mesh_police_car"),delta*Vector3(0,1,0),Vector3(0,1,0),steer_angle)
		else:
			t.origin.x += 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_up"):
		t.origin.z += 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_down"):
		t.origin.z -= 10*delta
		set_transform(t)

func rotateAround(obj, point, axis, angle):
	var rot = angle + obj.rotation.y 
	var tStart = point
	obj.global_translate (-tStart)
	obj.transform = obj.transform.rotated(axis, -rot)
	obj.global_translate (tStart)


func _input(event):
	if event.is_action_pressed("ui_select"):
		apply_impulse(Vector3(),Vector3(0,10,0))
pass
		
		
		
