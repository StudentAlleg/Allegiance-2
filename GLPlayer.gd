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
	pass
