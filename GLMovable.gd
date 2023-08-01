##Base class for all things that move in the base engine
##This is designed to have base methods for consumer classes
class_name GLMovable extends RigidBody3D

##Contains the force to be applied when _integrate_forces is next called
var force: Vector3 = Vector3.ZERO

##Contains the force to be applied when _integrate_forces is next called
var torque: Vector3 = Vector3.ZERO


var max_turn_rate = 0
var max_speed = 0


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
	
