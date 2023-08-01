class_name GLMovable extends RigidBody3D
##Base class for all things that move in the base engine
##This is designed to have base methods for consumer classes

##Contains the force to be applied when _integrate_forces is next called
var force: Vector3 = Vector3.ZERO

##Contains the force to be applied when _integrate_forces is next called
var torque: Vector3 = Vector3.ZERO

var max_force: Vector3 = Vector3.ONE
var max_torque: Vector3 = Vector3.ONE

var max_turn_rate = 0
var max_speed = 0

func update_force(thrust_vector: Vector3):
	##thrust_vector: Vector3 - this is what current thrusters are being orded to be fired
	var new_force: Vector3 = Vector3.ZERO
	
	#TODO - probably some fancy vector thing to do this
	new_force.x = thrust_vector.x * self.max_force.x
	new_force.y = thrust_vector.y * self.max_force.y
	new_force.z = thrust_vector.z * self.max_force.z
	
	#TODO, we might not want to pass a normalized here.
	self.set_force(new_force.normalized())

func update_torque(control_vector: Vector3):
	var new_torque: Vector3 = Vector3.ZERO
	
	new_torque.x = control_vector.x * self.max_torque.x
	new_torque.y = control_vector.y * self.max_torque.y
	new_torque.z = control_vector.z * self.max_torque.z
	
	self.set_torque(new_torque)




func set_torque(torque: Vector3):
	self.torque = torque

func get_torque():
	return self.torque
	
func set_force(force: Vector3):
	self.force = force

func get_force():
	return self.force
	
	
 
#these functions are to be used to get info about the object
#and to affect things that will be called by _integrate_forces

##have this movable thing take damage
func receive_damage():
	pass



func update_force(new_force: Vector3):
	#update the force logic
	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	super()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	super(delta)
	
func _integrate_forces(state):
	state.apply_force(self.force)
	state.apply_torque(self.torque)
	pass
	
