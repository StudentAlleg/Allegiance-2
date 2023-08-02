class_name GLPlayer extends GLF
##This represents the player. Anything a player can do, it will be implemented here

##the current ship the player is in.
var ship:GLShip = null

##The side of the player
#this defaults to SIDE_LOBBY
var side:GLSide = GLSide.new()

#this is temp, controls might be accessed differently in the future
var controls:GLControls = GLControls.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (self.ship != null):
		#we have a ship
		#do things if we have a ship
		
		#if the ship is not docked, we need to pass controls
		if(!self.ship.is_docked()):
			#first, update the thrust vector
			#this tells the ship what thrusters are firing
			var thrust_vector: Vector3 = controls.get_new_thrust_vector()
			
			self.ship.update_force(thrust_vector)
			
			var rotation_vector: Vector3 = controls.get_new_rotation_vector(ship.get_torque())
			
			self.ship.update_torque(rotation_vector)
			
			#update the mouse/roll
			

		#replace with if we are using the mouse
			
			pass
	
	
	
	pass
