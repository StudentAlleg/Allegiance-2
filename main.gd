class_name Main
extends Node

@onready var player:GLPlayer = GLPlayer.new()
@onready var dev_info = get_node("Mission/Sector/UI/Dev Info")
var mouse_disabled = false
# Called when the node enters the scene tree for the first time.




func _ready():
	var new_ship: GLShip = GLShip.new()
	player.set_ship(new_ship)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var ship = player.get_ship()
	dev_info.update_text(ship.mouse_vector, ship.vRotation, ship.angular_velocity, ship.vThrust, ship.linear_velocity)
	pass
