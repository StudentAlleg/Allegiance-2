class_name GLModule extends GLType
##This represents a module, which is something that can be chosen.
##This can affect stuff like scan range, targetting

#some things we might want a Module to do
##Whether or not this gives a reticle for the player
var target_computer = false 

##Whether or not this module gives a lead indcator for self
##And what type. 0 = off, 1 = weak, 2 = strong
@export_range(0, 2)
var lead_indicator = 0

##Whether or not this module gives a lead indcator to others for ships it sees
##And what type. 0 = off, 1 = weak, 2 = strong
@export_range(0, 2)
var lead_indicator_share = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
