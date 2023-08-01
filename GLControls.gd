class_name GLControls extends GLF

func get_thrust_vector() -> Vector3:
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
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
