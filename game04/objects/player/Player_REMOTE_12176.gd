extends RigidBody2D

var is_game_over = false;
var collision_sound_player = null
var game_over_label = null

var speed = 500
var turn_speed = 0.75
var max_speed = 1000
var acceleration = 0
var direction = 0
var time_elapsed = 0

func _ready():
	connect("body_enter", self, "_on_body_enter")
	
	#collision_sound_player = AudioStreamPlayer.new()
	#self.add_child(collision_sound_player)
	collision_sound_player = get_node("../CollisionPlayer")
	collision_sound_player.stream = load("res://assets/sounds/collision.wav")
	collision_sound_player.play(0.0)
	
	game_over_label = get_node("../GameOverLabel")
	
	set_process(true)
	set_process_input(true)

func _input(event):
	if (is_game_over):
		direction = 0
		pass;
	
	if(event.is_action("ui_left")):
		direction = -1
	elif(event.is_action("ui_right")):
		direction = 1
	elif(event.is_action_released("ui_left") or event.is_action_released("ui_right") or event.is_action("ui_up") or event.is_action("ui_down")):
		direction = 0

func _process(delta):
	speed += acceleration
	speed = min(speed,max_speed)
	
	if(speed < max_speed):
		acceleration += delta
		
	set_position(get_position() + Vector2(direction * turn_speed, 0))
	
	if (is_game_over):
		if (int(time_elapsed) % 2 == 0):
			print(game_over_label.percent_visible)
		else:
			print(game_over_label.percent_visible)

func _on_body_enter(other):
	print("Collision!")
	speed = 0
	is_game_over = true;
	collision_sound_player.play(0.0)
	game_over_label.percent_visible = 100