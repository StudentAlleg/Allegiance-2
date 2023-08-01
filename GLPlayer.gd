class_name GLPlayer extends GLF
##This represents the player. Anything a player can do, it will be implemented here

##the current ship the player is in.
var ship:GLShip = null

##The side of the player
#this defaults to SIDE_LOBBY
var side:GLSide = GLSide.new()

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
			
			self.ship.update_force(thrust_vector)
			
			#update the mouse/roll
			
			pass
	
	
	
	pass
