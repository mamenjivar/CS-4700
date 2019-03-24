extends Timer

var objects = [
	preload("res://objects/barrel/Barrel.tscn"),
	preload("res://objects/car/Car.tscn"),
	preload("res://objects/roadblock/RoadBlock.tscn")
]

func _ready():
	connect("timeout", self, "_on_timeout")

func _on_timeout():
	var random = rand_range(0, objects.size())
	var item = objects[random].instance()
	random = rand_range(100, -550)
	
	item.set_position(Vector2(random, -550))
	get_parent().add_child(item)