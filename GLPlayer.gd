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
			var thrust_vector: Vector3 = controls.get_thrust_vector()
			
			self.ship.update_force(thrust_vector)
			
			#update the mouse/roll
			
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
			
			pass
	
	
	
	pass
