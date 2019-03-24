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
	get_node("Sprite").set_texture(textures[rand_range(0, textures.size())])
	player = get_node("../Player")
	set_process(true)