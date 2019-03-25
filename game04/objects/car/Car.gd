extends RigidBody2D

var player = null
var object_name = null
var collision_sound_player = null

var textures = [
	preload("res://assets/images/car1.png"),
	preload("res://assets/images/car2.png"),
	preload("res://assets/images/car3.png"),
	preload("res://assets/images/car4.png"),
	preload("res://assets/images/car5.png"),
	preload("res://assets/images/car6.png")
]

func _ready():
	player = get_node("../Player")
	self.get_node("Sprite").set_texture(textures[rand_range(0, textures.size())])
	self.set_contact_monitor(true)

	collision_sound_player = get_node("./CollisionPlayer")
	collision_sound_player.stream = load("res://assets/sounds/collision.wav")
	#collision_sound_player.play(0.0)

	set_process(true)
	print("Spawned: Car")

func _on_Area2D_body_entered(other):
	object_name = other.get_name()
	print("Car collision with " + object_name + "!")

	if(object_name == "Player"):
		print("~~~Game over!~~~")
		player.is_game_over = true
		collision_sound_player.play(0.0)