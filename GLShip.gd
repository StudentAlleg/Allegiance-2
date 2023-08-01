class_name GLShip extends GLMovable

## if the ship is docked at a static base
var station: GLStation = null

## if the ship is docked in another ship
#this is probably a carrier. The difference is that this moves
#and stations don't
var hangar: GLShip = null



func is_docked() -> bool:
	assert(self.station != null && self.hangar != null)
	#the ship is not docked if it is not in a station or a hangar
	#a ship cannot be in two places at once
	return (self.station != null || self.hangar != null)


# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	super(delta)
	pass
