extends Sprite

var is_game_over = false
var game_over_label = null

func _ready():
	self.connect("body_entered", self, "_on_body_enter")
	game_over_label = get_node("../GameOverLabel")
	
	set_process(true)
	set_process_input(true)

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.

	if (is_game_over):
		if (game_over_label.percent_visible == 100):
			game_over_label.percent_visible = 0
		else:
			game_over_label.percent_visible = 100

func _on_body_enter(other):
	is_game_over = true;
	#collision_sound_player.play(0.0)
	game_over_label.percent_visible = 100

	print("Collision with " + other.get_name() + "!")
	set_process(false)

func _game_over():
	is_game_over = true;
	game_over_label.percent_visible = 100