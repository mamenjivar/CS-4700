extends RigidBody2D

var player = null
var speed = 1

func _ready():
	player = get_node("../Player")
	self.set_contact_monitor(true)
	self.connect("body_enter", self, "_on_collision")
	
	set_process(true)
	print("Spawned: Roadblock")
	
func _on_collision(other):
	print("Roadblock collision!")
	
	if(other.is_in_group("player")):
		print("Game over!")