extends Timer

# Boundaries for spawning items.
var x_bound = 200
var x_roadblock_bound = 10
var y_bound = -550

# Array that contains all the possible objects.
var objects = [
	preload("res://objects/barrel/Barrel.tscn"),
	preload("res://objects/car/Car.tscn"),
	preload("res://objects/roadblock/RoadBlock.tscn")
]

func _ready():
	self.connect("timeout", self, "_on_timeout")

# Called after every cycle.
func _on_timeout():
	var random = rand_range(0, objects.size())
	var item = objects[random].instance()
	
	if (random == 3): # Roadblock
		random = rand_range(x_roadblock_bound * -1, x_roadblock_bound)
	else: # Every other object
		random = rand_range(x_bound * -1, x_bound)
	
	# Places a random object onto the road (within the specified range).
	item.set_position(Vector2(random, y_bound))
	get_parent().add_child(item)