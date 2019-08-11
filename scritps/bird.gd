#script: bird

extends RigidBody2D

const LIN_VEL_Y = -150

func _ready():
	set_physics_process(true)    
	pass
	
func _integrate_forces(delta):
	if get_rotation_degrees() < -30:
		set_rotation_degrees(-30)		
		set_angular_velocity(0)
				
	if get_linear_velocity().y > 0:
		set_angular_velocity(1.5)	
	
func _input(event):
	if event.is_action_pressed("flap"):
		flap()
		
func flap():
	set_linear_velocity(Vector2(get_linear_velocity().x, LIN_VEL_Y))
	set_angular_velocity(-3)
	pass	
