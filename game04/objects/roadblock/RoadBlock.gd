extends RigidBody2D

var player = null
var speed = 1

func _ready():
	player = get_node("../Player")
	set_process(true)