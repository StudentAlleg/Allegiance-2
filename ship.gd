#class_name Ship
extends RigidBody3D

var max_angular_velocity = 0.5

@export var mouse_vector = Vector2.ZERO
var mouse_enabled = true

@export var vRotation = Vector3.ZERO

@export var vThrust = Vector3.ZERO

@export var thrustDirection = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass # Replace with function body.

func update_thrust():
	##poll through keys, and apply thrust like so
	#TODO: this might be a slider to affect slide thrusting
	var thrust_modifier = 1
	
	
	#TODO: make this based off of direction looking (relative)
	var new_thrust = Vector3.ZERO
	
	if Input.is_action_pressed("thrust_right"):
		new_thrust.x += 1 * thrust_modifier
	
	if Input.is_action_pressed("thrust_left"):
		new_thrust.x += -1 * thrust_modifier
	
	if Input.is_action_pressed("thrust_up"):
		new_thrust.y += 1 * thrust_modifier
		
	if Input.is_action_pressed("thrust_down"):
		new_thrust.y += -1 * thrust_modifier
		
	if Input.is_action_pressed("thrust_forward"):
		new_thrust.z += 1 * thrust_modifier
		
	if Input.is_action_pressed("thrust_backward"):
		new_thrust.z += -1 * thrust_modifier
	
	if new_thrust != Vector3.ZERO:
		new_thrust = new_thrust.normalized()
	
	return new_thrust

func update_rotation(vector2):
	var vR = self.vRotation
	
	#replace with if we are using the mouse
	if true:
		vector2 = mouse_to_joy(vR)
	
	vR.x = vector2.y
	vR.y = vector2.x
	
	var zRoll = 0
	if Input.is_action_pressed("roll_left"):
		zRoll += -1
		
	if Input.is_action_pressed("roll_right"):
		zRoll += 1
	
	vR.z = zRoll
	

	return vR
	
	
func update_mouse_vector(vector: Vector2):
	#we only want to update if the mouse is enabled
	if(self.mouse_enabled):
		self.mouse_vector += vector
	
func update_mouse_enabled():
	self.mouse_enabled = !self.mouse_enabled
	print(self.mouse_enabled)
	#if the mouse is disabled, reset the angular_accel from the mouse
	
	#This might need a recent flag
	
	if (!self.mouse_enabled):
		self.vRotation.x = 0
		self.vRotation.y = 0
		#we still care about the z though
		
		#in case this has not been consumed yet
		
	



func mouse_to_joy(joy_current):
	##take the current mouse_vector
	##and convert it to a joystick
	var new_vector = Vector2.ZERO
	
	if self.mouse_enabled:
		new_vector.x = joy_current.y - self.mouse_vector.x * 0.001
		new_vector.y = joy_current.x - self.mouse_vector.y * 0.001

		if new_vector.length() > 1:
			new_vector = new_vector.normalized()
		
		#reset the mouse
		self.mouse_vector = Vector2.ZERO
	
	return new_vector

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
	
func _integrate_forces (state):
	#TODO make a force matrix based off of keys held down
	
	vThrust = update_thrust()
	
	#update the roll rotation
	vRotation = update_rotation(self.mouse_vector)
	
	state.apply_force(vThrust)
	state.apply_torque(vRotation)
	
	#apply an upper limit to angluar_velocity
	#this probably is not functional
	if (state.get_angular_velocity().length() > max_angular_velocity):
		state.set_angular_velocity(state.get_angular_velocity().normalized())
	

