##Base class for all things that move in the base engine
##This is designed to have base methods for consumer classes
class_name GLMovable extends RigidBody3D

##Contains the force to be applied when _integrate_forces is next called
var force: Vector3 = Vector3.ZERO

##Contains the force to be applied when _integrate_forces is next called
var torque: Vector3 = Vector3.ZERO

#these functions are to be used to get info about the object
#and to affect things that will be called by _integrate_forces



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
	
