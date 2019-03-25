extends RigidBody2D

var player = null
var object_name = null
var speed = 1

var collision_sound_player = null

func _ready():
	player = get_node("../Player")
	self.set_contact_monitor(true)

	collision_sound_player = get_node("./CollisionPlayer")
	collision_sound_player.stream = load("res://assets/sounds/collision.wav")

	set_process(true)
	print("Spawned: Barrel")

func _on_Area2D_body_entered(other):
	object_name = other.get_name()
	print("Barrel collision with " + object_name + "!")

	if(object_name == "Player"):
		print("~~~Game over!~~~")
		#player.is_game_over = true
		collision_sound_player.play(0.0)