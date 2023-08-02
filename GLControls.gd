class_name GLControls extends GLF
var mouse_as_joy_vector: Vector2 = Vector2.ZERO


var mouse_vector: Vector2 = Vector2.ZERO
var mouse_enabled = true

var player:GLPlayer = null

func new(player:GLPlayer):
	super()
	self.player = player



func get_new_thrust_vector() -> Vector3:
	var thrust_vector: Vector3 = Vector3.ZERO
	if Input.is_action_pressed("thrust_right"):
		thrust_vector.x += 1

	if Input.is_action_pressed("thrust_left"):
		thrust_vector.x += -1
	
	if Input.is_action_pressed("thrust_up"):
		thrust_vector.y += 1
		
	if Input.is_action_pressed("thrust_down"):
		thrust_vector.y += -1
		
	if Input.is_action_pressed("thrust_forward"):
		thrust_vector.z += 1
		
	if Input.is_action_pressed("thrust_backward"):
		thrust_vector.z += -1
	return thrust_vector

func get_new_rotation_vector(current_vector: Vector3) -> Vector3:
	var rotation_vector: Vector3 = Vector3.ZERO
	#TODO: have this be an actual joystick
	var joy_vector: Vector2 = Vector2.ZERO
	if self.mouse_enabled:
		joy_vector = Vector2.ZERO
		joy_vector.x = current_vector.y - self.mouse_vector.x * 0.001
		joy_vector.y = current_vector.x - self.mouse_vector.y * 0.001

		if joy_vector.length() > 1:
			joy_vector = joy_vector.normalized()
		
		#reset the mouse
		self.mouse_vector = Vector2.ZERO
	
	rotation_vector.x = joy_vector.y
	rotation_vector.y = joy_vector.x
	
	var zRoll = 0
	if Input.is_action_pressed("roll_left"):
		zRoll += -1
		
	if Input.is_action_pressed("roll_right"):
		zRoll += 1
	
	rotation_vector.z = zRoll
	
	return rotation_vector
			

	
	
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


func update_mouse_to_joy_vector(current_vector: Vector3):
	var new_vector = Vector2.ZERO
	
	if self.mouse_enabled:
		new_vector.x = current_vector.y - self.mouse_vector.x * 0.001
		new_vector.y = current_vector.x - self.mouse_vector.y * 0.001

		if new_vector.length() > 1:
			new_vector = new_vector.normalized()
		
		#reset the mouse
		self.mouse_vector = Vector2.ZERO
	
	return new_vector
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
