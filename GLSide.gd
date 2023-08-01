class_name GLSide extends Node
##This class represents the side of a game

#Constants

const SIDE_SPECTATOR = -2 
const SIDE_LOBBY = -3

##The number that represents this side. 
##This is used for comparisons
var side = self.SIDE_LOBBY


##the name of the team this side represents
var team_name: String = ""

##The faction this side is
var faction = null

##

func set_side(side: int) -> void: 
	self.side = side

func get_side() -> int:
	return self.SIDE

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
