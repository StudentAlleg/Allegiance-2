class_name Main
extends Node

@onready var ship = get_node("Mission/Sector/Ship")
@onready var dev_info = get_node("Mission/Sector/UI/Dev Info")
var mouse_disabled = false
# Called when the node enters the scene tree for the first time.


func _input(event: InputEvent):
	if event is InputEventMouseMotion:
		ship.update_mouse_vector(event.relative)

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	dev_info.update_text(ship.mouse_vector, ship.vRotation, ship.angular_velocity, ship.vThrust, ship.linear_velocity)
	if Input.is_action_just_pressed("disable_mouse"):
		ship.update_mouse_enabled()
	pass
