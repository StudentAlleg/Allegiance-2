extends Label

func update_text(mouse: Vector2, aRotation: Vector3, angular_vel: Vector3, thrust:Vector3):
	##updates the information displayed
	var format_string = """Dev Info
	Mouse:
		X: %f
		Y: %f
	Rotation:
		X: %f
		Y: %f
		Z: %f
	Angular Velocity:
		X: %f
		Y: %f
		Z: %f
	Thrust:
		X: %f
		Y: %f
		Z: %f
	"""
	
	var new_text = format_string % [mouse.x, mouse.y, 
		aRotation.x, aRotation.y, aRotation.z, 
		angular_vel.x, angular_vel.y, angular_vel.z,
		thrust.x, thrust.y, thrust.z,]
	self.set_text(new_text)
	
	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
