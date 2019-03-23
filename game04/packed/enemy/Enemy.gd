extends RigidBody2D

var textures = [
    preload("res://assets/images/car1.png"),
    preload("res://assets/images/car2.png"),
    preload("res://assets/images/car3.png"),
    preload("res://assets/images/car4.png"),
    preload("res://assets/images/car5.png"),
    preload("res://assets/images/car6.png")
]

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