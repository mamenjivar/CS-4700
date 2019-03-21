<<<<<<< HEAD
extends RigidBody2D

var player = null
var speed_factor = 0.5

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	player = get_node("../Player")
	set_process(true)
	pass

func _process(delta):
	#	# Called every frame. Delta is time since last frame.
	#	# Update game logic here.
	#	pass
	set_pos(get_pos() + Vector2(0, player.speed * speed_factor * delta))
||||||| merged common ancestors
=======
extends RigidBody2D
var _player = null
var _speed_factor = 0.5
func _ready():
    _player = get_node("../Player")
    add_to_group("enemy")
    set_process(true)
func _process(delta):
    set_position(get_position() + Vector2(0, _player.speed * _speed_factor * delta))
func hit_by_player():
    set_process(false)
    set_mode(MODE_RIGID)
    set_linear_velocity(Vector2(0,-_player.speed * _speed_factor))
>>>>>>> mainMenu
