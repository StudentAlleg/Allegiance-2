class_name GL3D extends Node3D
var filename = null
var json = JSON.new()

@onready var model:Model = self.find_child("Model", false, false)

func _init(filename:String):
	super()
	#the filename, which contains the information we want to load
	self.load_data(filename)

func load_data(file):
	#file could be a string or file object
	#TODO - load this from a json
	
	self.model = null;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
