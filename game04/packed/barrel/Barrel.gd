extends RigidBody2D

var player = null
var speed = 1

func _ready():
    player = get_node("../Player")
    add_to_group("block")
    set_process(true)
	
func _process(delta):
    set_position(get_position() + Vector2(0, player.speed * speed * delta))
	
func hit_by_player():
    set_process(false)