extends Sprite

var is_game_over = false;
var collision_sound_player = null
var game_over_label = null

func _ready():
	add_to_group("player")
	connect("body_enter", self, "_on_body_enter")
	
	collision_sound_player = get_node("../CollisionPlayer")
	collision_sound_player.stream = load("res://assets/sounds/collision.wav")
	#collision_sound_player.play(0.0)
	
	game_over_label = get_node("../GameOverLabel")
	
	set_process(true)
	set_process_input(true)
	is_game_over = true

func applyHorizontalAcceleration():
	pass

func _on_body_enter(other):
	print("Collision!")
	set_process(false)

func _on_Player_body_entered(body):
	print("Collision with " + body.get_name())
	pass # Replace with function body.

	is_game_over = true;
	collision_sound_player.play(0.0)
	game_over_label.percent_visible = 100