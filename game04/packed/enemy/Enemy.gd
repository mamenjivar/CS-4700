extends RigidBody2D

var player = null
var speed_factor = 0.5

func _ready():
	player = get_node("../Player")
	set_process(true)

func _process(delta):
	set_position(get_position() + Vector2(0, player.speed * speed_factor * delta))