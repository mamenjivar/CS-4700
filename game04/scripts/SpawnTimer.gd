extends Timer

var spawn_items = [
    preload("res://packed/barrel/Barrel.tscn"),
    preload("res://packed/car/Car.tscn"),
    preload("res://packed/roadblock/RoadBlock.tscn")
]

func _ready():
    connect("timeout",self,"_on_timeout")
	
func _on_timeout():
    var r = rand_range(0,spawn_items.size())
    var item = spawn_items[r].instance()
    r = rand_range(100, -550)
    item.set_position(Vector2(r, -550))
    get_parent().add_child(item)