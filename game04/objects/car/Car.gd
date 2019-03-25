extends RigidBody2D

var textures = [
	preload("res://assets/images/car1.png"),
	preload("res://assets/images/car2.png"),
	preload("res://assets/images/car3.png"),
	preload("res://assets/images/car4.png"),
	preload("res://assets/images/car5.png"),
	preload("res://assets/images/car6.png")
]

func _ready():
	get_node("Sprite").set_texture(textures[rand_range(0, textures.size())])
	self.set_contact_monitor(true)
	self.connect("body_entered", self, "_on_collision")
	
	set_process(true)
	print("Spawned: Car")
	
func _on_collision(other):
	print("Car collision!")
	
	if(other.is_in_group("player")):
		print("Game over!")